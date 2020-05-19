import sys
import collections

with open(sys.argv[1], 'r') as f:
    content = f.readlines()
# you may also want to remove whitespace characters like `\n` at the end of each line
content = [x.strip() for x in content] 

# print(content[1:])
duplicates = [item for item, count in collections.Counter(content).items() if count > 1]
print("Found duplicates: ")
print(duplicates)
