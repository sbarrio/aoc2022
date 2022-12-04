import sys

# A : 0
# B : 1
# C : 2
# X : 0
# Y : 1
# Z : 2
def translate(letter):
    if letter == 'A' or letter == 'X':
         return str(0)
    if letter == 'B' or letter == 'Y':
         return str(1)
    if letter == 'C' or letter == 'Z':
         return str(2)
    return

filename = sys.argv[1]

data = open(filename, 'r')
Lines = data.readlines()

outputFilename = filename.replace('.txt','.bas')

output = open(outputFilename, "w")

lineNumber = 5000
itemsPerLine = 20
curIndex = 0

for line in Lines:      
    if (curIndex == 0):
        output.write(str(lineNumber) + " DATA ")
    else:
        output.write(", ")
    letters = line.split()
    output.write(translate(letters[0]) +',' + translate(letters[1]))

    if (curIndex >= itemsPerLine):
        curIndex = 0
        lineNumber += 1
        output.write("\n")
    else:
        curIndex += 1
    
output.write('\n' + str(lineNumber + 1) + ' DATA 4')
output.close()

print("Converted to: " + outputFilename)

