import json, turtle, urllib.request, time
from datetime import date
from datetime import datetime
from datetime import timedelta
from urllib.error import HTTPError
import pymysql.cursors

file = open("today.txt", "w")
file1 = open("week.txt", "w")


def execute_db(name, diameter, date, time, velocity, distance, status):
    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='',
                                 db='neo')
    try:
        with connection.cursor() as cursor:
            sql = "INSERT INTO `approach` (name, diameter,date,time,velocity,distance,report) VALUES (%s, %s,%s,%s," \
                  "%s,%s,%s) "
            cursor.execute(sql, (name, diameter, date, time, velocity, distance, status))
        connection.commit()
    finally:
        connection.close()


def asteroids_approach(startDate, enddate, filename):
    # Our JSON request to retrieve data about asteroids approaching planet Earth.
    url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=" + startDate + "&end_date=" + enddate + "&api_key=DEMO_KEY"

    response = urllib.request.urlopen(url)

    result = json.loads(response.read())

    print("Today " + str(result["element_count"]) + " asteroids will be passing close to planet Earth:")
    print("")
    asteroids = result["near_earth_objects"]

    # Parsing all the JSON data:
    for asteroid in asteroids:
        for field in asteroids[asteroid]:
            try:
                name = field["name"]
                print("Asteroid Name: " + name)
                filename.writelines("Asteroid Name: " + field["name"] + "\n")

                diameter = str(field["estimated_diameter"]["meters"]["estimated_diameter_min"] +
                               field["estimated_diameter"]["meters"][
                                   "estimated_diameter_max"] / 2)
                print("Estimated Diameter: " + diameter + " meters")
                filename.writelines(
                    "Estimated Diameter: " + str(field["estimated_diameter"]["meters"]["estimated_diameter_min"] +
                                                 field["estimated_diameter"]["meters"][
                                                     "estimated_diameter_max"] / 2) + " meters\n")

                temp_date = str(field["close_approach_data"][0]["close_approach_date_full"])
                date = str(temp_date.split(" ")[0])
                time = str(temp_date.split(" ")[1])
                print("Close Approach Date & Time: " + temp_date)
                filename.writelines(
                    "Close Approach Date & Time: " + field["close_approach_data"][0]["close_approach_date_full"] + "\n")

                velocity = str(
                    field["close_approach_data"][0]["relative_velocity"]["kilometers_per_hour"])
                print("Velocity: " + velocity + " km/h")
                filename.writelines("Velocity: " + str(
                    field["close_approach_data"][0]["relative_velocity"]["kilometers_per_hour"]) + " km/h\n")

                distance = str(field["close_approach_data"][0]["miss_distance"]["kilometers"])
                print(
                    "Distance to Earth: " + distance + " km")
                filename.writelines("Distance to Earth: " + str(
                    field["close_approach_data"][0]["miss_distance"]["kilometers"]) + " km\n")

                if field["is_potentially_hazardous_asteroid"]:
                    status = "This asteroid could be dangerous to planet Earth!"
                    execute_db(name, diameter, date, time, velocity, distance, status)

                    print("This asteroid could be dangerous to planet Earth!")
                else:
                    status = "This asteroid poses no threat to planet Earth!"
                    execute_db(name, diameter, date, time, velocity, distance, status)
                    print("This asteroid poses no threat to planet Earth!")
            except:
                print("Unable to access all data.")
            print("--------------------\n")
            filename.writelines("--------------------\n")


today = time.strftime('%Y-%m-%d', time.gmtime())
print("Asteroid approach today..................")
file.writelines("Asteroid approach today..................\n")
print("Date: " + today)
file.writelines("Date: " + today + "\n\n")
asteroids_approach(today, today, file)

startDate = datetime.today() + timedelta(days=1)
startDate = startDate.strftime('%Y-%m-%d')
endDate = datetime.today() + timedelta(days=8)
endDate = endDate.strftime('%Y-%m-%d')
print("Asteroid approach for next 7 days...................")
file1.writelines("Asteroid approach for next 7 days...................\n")
print("From: " + startDate)
file1.writelines("From: " + startDate + "\n")
print("To: " + endDate)
file1.writelines("To: " + endDate + "\n\n")
asteroids_approach(startDate, endDate, file1)
file1.close()
