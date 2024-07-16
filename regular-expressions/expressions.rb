mystr = 'cast'

print "matched 's'" if /s/.match(mystr)
p  /s/.match(mystr)
p mystr.match(/s/)
print "matched 'x'" if mystr.match(/x/)