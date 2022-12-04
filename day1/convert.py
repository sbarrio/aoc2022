import sys

filename = sys.argv[1]

data = open(filename, 'r')
Lines = data.readlines()

outputFilename = filename.replace('.txt','.bas')

output = open(outputFilename, "w")

lineNumber = 5000
itemsPerLine = 10
curIndex = 0
for line in Lines:
    if (curIndex == 0):
        output.write(str(lineNumber) + " DATA ")
    if (line == "\n"):
            output.write("-1")
    else:
        output.write(line.replace("\n",''))
    if (curIndex >= itemsPerLine):
        curIndex = 0
        lineNumber += 10
        output.write("\n")
    else:
        output.write(", ")
        curIndex += 1
    
output.write('\n' + str(lineNumber) + " DATA -2")
output.close()

print("Converted to: " + outputFilename)