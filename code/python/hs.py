def hs(n):
    length = 0
    if (n < 1):
        print("Error: Input is less than 1")
    else:
        while (n != 1):
            length = length + 1
            print(n)
            if (n % 2 == 0):
                n = n // 2
            else:
                n = 3 * n + 1
        print(1)
        print(None)
        length = length + 1
        print(length)
