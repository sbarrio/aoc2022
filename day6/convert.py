import sys

filename = sys.argv[1]
lineNumber = int(sys.argv[2])
lineLength = int(sys.argv[3])

data = open(filename, 'r')
lineData = data.readlines()

outputFilename = filename.replace('.txt','.bas')

output = open(outputFilename, "w")

Lines = [lineData[0][idx:idx + lineLength] for idx in range(0, len(lineData[0]), lineLength)]

for line in Lines:
    output.write(str(lineNumber) + " DATA " + '"' + line.replace("\n","") + '"\n')
    lineNumber += 1

output.write(str(lineNumber) + ' DATA "*"')
output.close()

print("Converted to: " + outputFilename)

