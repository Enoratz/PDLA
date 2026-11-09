from arithmp.parser import Parser


def test_add():
    parser = Parser().parse
    assert parser(None,"1 + 1") == 2
    assert parser(None,"0 + 3") == 3
