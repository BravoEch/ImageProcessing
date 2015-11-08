'assginment commands'

# {}

x = 5

# { (x, 5) }

y = 6

# { (x, 5) (y, 6) }

s = 7

# { (x, 5) (y, 6) (s, 7) }

x = 8

# { (x, 8) (y, 6) (s, 7) }

y = 9

# { (x, 8) (y, 9) (s, 7) }

s = 10

# { (x, 8) (y, 9) (s, 10) }


'conditions'

if (True):
    x = 0
    z = 10
else:
    x = 1
    z = 11

# { (x, 0), (y, 9) (z, 10) }

if (x > 0 or y == 6):
    x = 0
    z = 10
else:
    x = 1
    z = 11

'iteration'

times = 10
while (times > 0):
    print ("Hello")
    times = (times - 1)

'procedures and procedure call'

#def, function name (fun), agruments : indented compound statement

def fun(a, b, c, x):
    result - a * (x * x) + b * x + c
    return result
