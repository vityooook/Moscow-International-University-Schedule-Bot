from aiogram.types import Message, CallbackQuery
from aiogram.filters.command import Command
from aiogram.enums.parse_mode import ParseMode
from keyboards.inline.calendar_my import Calendar, MyCallback
from contextlib import suppress
from aiogram.exceptions import TelegramBadRequest

from data import request_schedule
from loader import dp




@dp.message(Command("schedule"))
async def command_schedule(msg: Message):
    with suppress(TelegramBadRequest):
        await msg.answer('выбери', reply_markup=await Calendar().start_calendar())


@dp.callback_query(MyCallback.filter())
async def process_calendar(query: CallbackQuery, callback_data: MyCallback):
    selected, date = await Calendar().process_selection(query=query, callback_data=callback_data)
    if selected:
        time_data = date
    #     time_data = date.strftime('%Y.%m.%d')
    #     await query.message.answer(f'ты выбрал {time_data}')
    data = request_schedule.request_schedule(user_id=query.from_user.id, time_data=time_data)
    await query.message.answer(data, parse_mode=ParseMode.HTML)