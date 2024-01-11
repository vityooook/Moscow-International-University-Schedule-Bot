"""initial

Revision ID: d06f45a948f7
Revises: 
Create Date: 2023-12-28 13:58:39.661285

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = 'd06f45a948f7'
down_revision: Union[str, None] = None
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('groups',
    sa.Column('group_id', sa.Integer(), nullable=False),
    sa.Column('title', sa.String(), nullable=False),
    sa.Column('course', sa.String(), nullable=False),
    sa.PrimaryKeyConstraint('group_id')
    )
    op.create_table('quality',
    sa.Column('quality_id', sa.Integer(), nullable=False),
    sa.Column('quality', sa.String(), nullable=False),
    sa.PrimaryKeyConstraint('quality_id'),
    sa.UniqueConstraint('quality')
    )
    op.create_table('squads',
    sa.Column('chat_id', sa.Integer(), nullable=False),
    sa.Column('title', sa.String(), nullable=False),
    sa.PrimaryKeyConstraint('chat_id')
    )
    op.create_table('teachers',
    sa.Column('teacher_id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(), nullable=False),
    sa.Column('subject', sa.String(), nullable=False),
    sa.PrimaryKeyConstraint('teacher_id')
    )
    op.create_table('users',
    sa.Column('user_id', sa.Integer(), nullable=False),
    sa.Column('group_id', sa.Integer(), nullable=False),
    sa.Column('first_name', sa.String(), nullable=True),
    sa.Column('last_name', sa.String(), nullable=True),
    sa.Column('username', sa.String(), nullable=False),
    sa.ForeignKeyConstraint(['group_id'], ['groups.group_id'], ),
    sa.PrimaryKeyConstraint('user_id')
    )
    op.create_table('rating',
    sa.Column('rating_id', sa.Integer(), nullable=False),
    sa.Column('teacher_id', sa.Integer(), nullable=False),
    sa.Column('user_id', sa.Integer(), nullable=False),
    sa.Column('quality_id', sa.Integer(), nullable=False),
    sa.Column('mark', sa.Integer(), nullable=False),
    sa.ForeignKeyConstraint(['quality_id'], ['quality.quality_id'], ),
    sa.ForeignKeyConstraint(['teacher_id'], ['teachers.teacher_id'], ),
    sa.ForeignKeyConstraint(['user_id'], ['users.user_id'], ),
    sa.PrimaryKeyConstraint('rating_id')
    )
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('rating')
    op.drop_table('users')
    op.drop_table('teachers')
    op.drop_table('squads')
    op.drop_table('quality')
    op.drop_table('groups')
    # ### end Alembic commands ###