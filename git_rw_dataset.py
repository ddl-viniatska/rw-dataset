import os

read_write_path = 
read_path = 

with open(read_path, "r") as f:
    print(f.read())

with open(f"{read_write_path}/data.txt", "w") as f:
    data = "some data to be written to the file"
    f.write(data)

print(os.listdir(read_write_path))
