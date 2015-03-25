results = set()
def hyper(n, s, p):
    if n == 0:
        results.add(s)
        return
    elif p > n:
        return
    elif n % (p*2) == 0:
        hyper(n, '0'+s, p*2)
        hyper(n-p*2, '2'+s, p*2)
    else:
        hyper(n-p, '1'+s, p*2)

num = int(raw_input("A number, please: "))

hyper(num, '', 1)
print results

