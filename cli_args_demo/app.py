import sys
argc = len(sys.argv)

print()
for i in range(1, argc):
    print(f" {i}. {sys.argv[i]}")
print()