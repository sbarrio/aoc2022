import sys

filename = sys.argv[1]
lineNumber = int(sys.argv[2])

data = open(filename, 'r')
Lines = data.readlines()

outputFilename = filename.replace('.txt','.bas')

output = open(outputFilename, "w")

# Process tower input
lineIndex = 0
l = Lines[lineIndex]
towers = []
while l.__contains__("["):
    towers.append(l.replace("[","").replace("]","").replace("    ", "*").replace(" ", "").replace("\n",""))
    lineIndex += 1
    l = Lines[lineIndex]

# Build crate list for each tower
lt = len(towers[0])
ll = len(towers)
cTowers = [""] * lt
ind = 0
for t in reversed(range(lt)):
    for l in reversed(range(ll)):
        if (towers[l][ind] != '*'):
             cTowers[t] += towers[l][ind]
    ind += 1

# Flip them to represent intended order
cTowers.reverse()

# Write number of towers
output.write(str(lineNumber) + " DATA " + str(len(cTowers)) + '\n')  
lineNumber += 1  

# Write each tower list of crates
for ct in cTowers:
    output.write(str(lineNumber) + ' DATA "' + ct + '"\n')    
    lineNumber += 1

# Finally, write move list
for line in Lines:
    if (line.__contains__("move")):
        l =  line.replace("move", "").replace("from",",").replace("to",",").replace("\n","").replace(" ","")
        output.write(str(lineNumber) + " DATA " + l + '\n')    
    lineNumber += 1

output.write(str(lineNumber) + ' DATA -1')
output.close()

print("Converted to: " + outputFilename)

