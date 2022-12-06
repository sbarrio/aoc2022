import sys

filename = sys.argv[1]
lineNumber = int(sys.argv[2])

data = open(filename, 'r')
Lines = data.readlines()

outputFilename = filename.replace('.txt','.bas')

output = open(outputFilename, "w")

for line in Lines:
    output.write(str(lineNumber) + " DATA " + '"' + line.replace("\n","") + '"\n')
    lineNumber += 1

output.write(str(lineNumber) + ' DATA "*"')
output.close()

print("Converted to: " + outputFilename)

