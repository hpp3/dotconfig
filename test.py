import random
import io

def follower():
    return random.randint(0, (1 << 6) - 1) + (1 << 7 )
    
def zero():
    return random.randint(0, (1 << 7) - 1) 

def one():
    return random.randint(0, (1 << 5) - 1) + (1 << 7) + (1 << 6) 

def two():
    return random.randint(0, (1 << 4) - 1) + (1 << 7) + (1 << 6) + (1 << 5)

def three():
    return random.randint(0, (1 << 3) - 1) + (1 << 7) + (1 << 6) + (1 << 5) + (1 << 4)

def rando():
    return random.randint(0, 255)

def newline():
    return 10

functions = [follower, zero, one, two, three, rando, newline]

def soup():
    return [random.choice(functions)() for i in range(random.randint(1,10))]

def unit():
    result = []
    which = random.randint(1, 100)
    if which < 30:
        result += soup()
    elif which < 40:
        result = [10]
        while random.choice([True, False, False]):
            result.append(10)
    elif which < 60:
        result = [one(), follower()]
    elif which < 80:
        result = [two(), follower(), follower()]
    else:
        result = [three(), follower(), follower(), follower()]
    return result

length = 100000

data = []
for i in xrange(length):
    data += unit()

f = io.open('test.in', 'wb')
f.write(bytearray(i for i in data))
f.close()

