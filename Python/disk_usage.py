import shutil

total, used, free = shutil.disk_usage("/")
usage = int( (used/total)*100)
print(f'{total}, {used}, {free}')
print(f'Disk usage: {usage}%')

if usage > 80:
    print("disk usage is high")
else:
    print("disk usage is low")