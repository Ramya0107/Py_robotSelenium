import csv

# Data to be written to the CSV file
data = [
    ['username','password'],
    ['abc','abc'],
    ['Admin','abc'],
]

# Specify the file path
csv_file_path = '/Users/balakumaar/PycharmProjects/pythonProject1/TestData/Test9_InvalidLoginData.csv'

# Write data to the CSV file
with open(csv_file_path, mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerows(data)

print(f'CSV file "{csv_file_path}" created successfully.')
