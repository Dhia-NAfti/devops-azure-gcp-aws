from hello import toyou, add, subtract, divide


def setup_function(function):
    print(" Running Setup: %s " % function.__name__)
    function.x = 10
    function.y = 2


def teardown_function(function):
    print(" Running Teardown:%s" % function.__name__)
    del function.x
    del function.y


def test_hello_subtract():
    assert subtract(test_hello_subtract.x) == 9


def test_hello_divide():
    assert divide(test_hello_divide.x, test_hello_divide.y) == 5
