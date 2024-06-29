
from speciallib import custom_func
from morefunctions import pretty_func

def main():
    return "My Sample App Main" + "\n" + custom_func() + "\n" + pretty_func()

if __name__ == '__main__':
    print(main())