import asyncio
from aiogram import Router
from aiogram.types import Message, CallbackQuery
from aiogram.fsm.context import FSMContext
from aiogram.fsm.state import State, StatesGroup
from aiogram.filters import Command
from loguru import logger

from database import crud
from config import ADMIN
from handlers.callback.callback_data import AdminWithoutPhotoCallback, AdminAcceptCallback
from keyboard.inline.admin.inline_without_photo import InlineAdmin
from keyboard.inline.admin.inline_accept import InlineAdminAccept
from loader import bot

router = Router()


class Newsletter(StatesGroup):
    text = State()
    photo = State()


@logger.catch()
@router.message(Command("newsletter"))
async def cmd_newsletter(msg: Message, state: FSMContext):
    logger.info("working with newsletter")
    if msg.from_user.id == int(ADMIN):
        await msg.answer("напишите текст, для рассылки")
        await state.set_state(Newsletter.text)
    else:
        await msg.answer("вы не являетесь админом")


@logger.catch()
@router.message(Newsletter.text)
async def process_text(msg: Message, state: FSMContext):
    await state.update_data(text=msg.text)
    await msg.answer(
        "текст принят.\nскиньте фото",
        reply_markup=await InlineAdmin().without_photo()
    )
    await state.set_state(Newsletter.photo)


@logger.catch()
@router.callback_query(AdminWithoutPhotoCallback.filter())
async def process_without_photo(query: CallbackQuery, state: FSMContext):
    data = await state.get_data()
    await query.message.answer(
        f"{data['text']}"
        f"\n\n<i>потвердите текст</i>",
        reply_markup=await InlineAdminAccept().accept_newsletter()
    )


@logger.catch()
@router.message(Newsletter.photo)
async def process_photo(msg: Message, state: FSMContext):
    await state.update_data(photo=msg.photo[0].file_id)
    data = await state.get_data()
    await msg.answer_photo(
        photo=data["photo"],
        caption=f"{data['text']}\n\n<i>потвердите текст</i>",
        reply_markup=await InlineAdminAccept().accept_newsletter()
    )


@logger.catch()
@router.callback_query(AdminAcceptCallback.filter())
async def final_stage(
        query: CallbackQuery,
        callback_data: AdminAcceptCallback,
        state: FSMContext
):
    if callback_data.act == "ACCEPT":
        data = await state.get_data()
        await start_newsletter(data=data)
        await state.clear()
    elif callback_data.act == "DECLINE":
        await state.clear()
        await query.message.answer("рассылка отменина")


@logger.catch()
async def start_newsletter(data):
    await bot.send_message(chat_id=ADMIN, text="рассылка началась")
    users_id = await crud.user.select_all_users_id()
    max_send = 0

    if data.get("photo"):
        for i in range(len(users_id) - 1):
            if max_send != 5:
                try:
                    await bot.send_photo(
                        chat_id=users_id[0][i],
                        photo=data["photo"],
                        caption=data["text"]
                    )
                    max_send += 1
                except Exception:
                    continue
            else:
                await asyncio.sleep(1)
    else:
        for i in range(len(users_id)):
            if max_send != 5:
                try:
                    await bot.send_message(
                        chat_id=users_id[0][i],
                        text=data["text"]
                    )
                    max_send += 1
                except Exception:
                    continue
            else:
                await asyncio.sleep(1)
    await bot.send_message(chat_id=ADMIN, text="рассылка закончина")
