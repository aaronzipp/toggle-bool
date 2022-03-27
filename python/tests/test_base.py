import toggle_bool
import pytest  # noqa
from enum import Enum


class Case(str, Enum):
    UPPERCASE = "UPPERCASE"
    LOWERCASE = "lowercase"
    TITLE = "Title"


def test_format_value():
    test_string = "TeSt"
    assert toggle_bool.format_value(Case.UPPERCASE, test_string) == test_string.upper()
    assert toggle_bool.format_value(Case.LOWERCASE, test_string) == test_string.lower()
    assert toggle_bool.format_value(Case.TITLE, test_string) == test_string.title()
