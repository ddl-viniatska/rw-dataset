import os
read_write_path =
read_path =
input_file = 'input.txt'

os.chdir(read_path)
input_file = open(input_file, 'r')

lines = input_file.readlines()
sum = 0

for line in lines:
    for c in line:
        if c.isdigit() == True:
            sum += int(c)

print(sum)
input_file.close()

os.chdir(read_write_path)

output_file = open('output.txt', 'w')
output_file.write(str(sum))
output_file.close()

print(os.listdir(read_write_path))
