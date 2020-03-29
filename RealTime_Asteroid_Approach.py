import json, turtle, urllib.request, time
from datetime import date
from datetime import datetime
from datetime import timedelta
from urllib.error import HTTPError
import pymysql.cursors

file = open("today.txt", "w")
file1 = open("week.txt", "w")


def execute_db(neo_id, name, diameter, temp_date, date, time, velocity, distance, status):
    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='',
                                 db='asteroid')
    try:
        with connection.cursor() as cursor:
            sql = "INSERT INTO `approach` (neo_id,name, diameter,date_full,date,time,velocity,distance,report) VALUES " \
                  "(%s," \
                  "%s, %s, %s," \
                  "%s,%s," \
                  "%s,%s,%s) "
            cursor.execute(sql, (neo_id, name, diameter, temp_date, date, time, velocity, distance, status))
        connection.commit()
    finally:
        connection.close()


def asteroids_approach(startDate, enddate, filename):
    # Our JSON request to retrieve data about asteroids approaching planet Earth.
    url = "https://api.nasa.gov/neo/rest/v1/feed?start_date=" + startDate + "&end_date=" + enddate + "&api_key=OgpiKWeAuSR028CUNY9yoE2bIUkrSllAPXyfjEsB"

    response = urllib.request.urlopen(url)

    result = json.loads(response.read())

    print("Today " + str(result["element_count"]) + " asteroids will be passing close to planet Earth:")
    print("")
    asteroids = result["near_earth_objects"]

    # Parsing all the JSON data:
    for asteroid in asteroids:
        for field in asteroids[asteroid]:
            try:
                neo_id = field["id"]
                print("ID: " + neo_id)
                filename.writelines("Asteroid id: " + field["id"] + "\n")
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
                print("Distance to Earth: " + distance + " km")
                filename.writelines("Distance to Earth: " + str(
                    field["close_approach_data"][0]["miss_distance"]["kilometers"]) + " km\n")

                if field["is_potentially_hazardous_asteroid"]:
                    if "2019 SW10" not in name:
                        status = "This asteroid could be dangerous to planet Earth!"
                        execute_db(neo_id, name, diameter, temp_date, date, time, velocity, distance, status)
                        print("This asteroid could be dangerous to planet Earth!")

                else:
                    if "2019 SW10" not in name:
                        status = "This asteroid poses no threat to planet Earth!"
                        execute_db(neo_id, name, diameter, temp_date, date, time, velocity, distance, status)
                        print("This asteroid poses no threat to planet Earth!")

            except:
                print("Unable to access all data.")
            print("--------------------\n")
            filename.writelines("--------------------\n")


connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',

                             db='asteroid')
try:
    mycursor = connection.cursor()
    sql = "TRUNCATE TABLE approach;"
    mycursor.execute(sql)
    connection.commit()

finally:
    connection.close()

today = datetime.today()
today = today.strftime('%Y-%m-%d')
print("Asteroid approach today..................")
file.writelines("Asteroid approach today..................\n")
print("Date: " + today)
file.writelines("Date: " + today + "\n\n")
asteroids_approach(today, today, file)

file1.close()
