from enum import Enum


class UserRoles(Enum):
    USER = "user"
    MODERATOR = "moderator"
    ADMIN = "admin"
    SUPERUSER = "superuser"

    @classmethod
    def choices(cls):
        return [(key.value, key.name) for key in cls]


user_roles_choices = UserRoles.choices()
