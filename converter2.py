def converter2(n, base_in, base_out):
    hexstring = '0123456789ABCDEF'
    outstring = 'ciao'
    def decto(n, base_out):
        if int(n) == 0:
            return 0
        else:
            while n >= (0.01*base_out):
                resto = hexstring[n%baseout]
                outstring = resto + outstring
                n //= base_out
    return outstring
    def todec(n, base_in):
        length = len(str(n))-1
        outstring = int(0)
        for i, length in zip(str(n),reversed(range(length))):
            cifra = hexstring.index(i)
            outstring = outstring + int(i)*pow(base_in,length)
    return outstring
    valid = [2,10,16]
    if (base_in or base_out) not in valid:
        return print(f"Valid basis are {valid}")
    elif base_out == 10:
        return todec(n, base_in)
    elif base_in == 10:
        return decto(n,base_out)
    else:
        return decto(todec(n,base_in),base_out)
