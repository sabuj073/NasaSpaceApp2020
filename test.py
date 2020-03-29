from datetime import datetime
# datetime object containing current date and time
now = datetime.now()
 
# dd/mm/YY H:M:S
temp_date = now.strftime("%Y-%m-%d %H:%M")
date = str(temp_date.split(" ")[0])
time = str(temp_date.split(" ")[1])
print("date and time=", date)
print ("Time=",time)