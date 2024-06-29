
from lib.speciallib import custom_func
from lib.pretty.morefunctions import pretty_func

def main():
    return "My Sample App Main" + "\n" + custom_func() + "\n" + pretty_func()

if __name__ == '__main__':
    print(main())