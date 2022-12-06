import sys

filename = sys.argv[1]
lineNumber = int(sys.argv[2])

data = open(filename, 'r')
Lines = data.readlines()

outputFilename = filename.replace('.txt','.bas')

output = open(outputFilename, "w")

for line in Lines:
    pairs = line.replace("\n","").split(",")

    output.write(str(lineNumber) + " DATA " + pairs[0].replace('-',',') + ", " + pairs[1].replace('-',',')+ '\n')
    lineNumber += 1

output.write(str(lineNumber) + ' DATA -1')
output.close()

print("Converted to: " + outputFilename)

