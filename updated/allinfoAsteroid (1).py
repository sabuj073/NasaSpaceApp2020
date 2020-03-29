import json, turtle, urllib.request, time
from datetime import date
from datetime import datetime
from datetime import timedelta
import argparse
import pymysql.cursors


def execute_db(name, absolute_magnitude_h, diameter, date, time, velocity, distance, epoch_date_close_approach,
               orbiting_body, orbit_id, orbit_determination_date, first_observation_date, last_observation_date,
               data_arc_in_days, observations_used, orbit_uncertainty, minimum_orbit_intersection,
               jupiter_tisserand_invariant, epoch_osculation, eccentricity, semi_major_axis, inclination,
               ascending_node_longitude, orbital_period, perihelion_distance, perihelion_argument, aphelion_distance,
               perihelion_time, mean_anomaly, mean_motion, equinox, orbit_class_type, orbit_class_description,
               orbit_class_range, is_sentry_object, report):
    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='',
                                 db='asteroid')
    try:
        with connection.cursor() as cursor:
            sql = "INSERT INTO `asteroidinfo` (name,absolute_magnitude_h,diameter,date,time,velocity,distance," \
                  "epoch_date_close_approach,orbiting_body,orbit_id,orbit_determination_date,first_observation_date," \
                  "last_observation_date,data_arc_in_days,observations_used,orbit_uncertainty," \
                  "minimum_orbit_intersection,jupiter_tisserand_invariant,epoch_osculation,eccentricity," \
                  "semi_major_axis,inclination,ascending_node_longitude,orbital_period,perihelion_distance," \
                  "perihelion_argument,aphelion_distance,perihelion_time,mean_anomaly,mean_motion,equinox," \
                  "orbit_class_type,orbit_class_description,orbit_class_range,is_sentry_object,report) VALUES (%s,%s," \
                  "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s," \
                  "%s,%s) "
            cursor.execute(sql, (
                name, absolute_magnitude_h, diameter, date, time, velocity, distance, epoch_date_close_approach,
                orbiting_body, orbit_id, orbit_determination_date, first_observation_date, last_observation_date,
                data_arc_in_days, observations_used, orbit_uncertainty, minimum_orbit_intersection,
                jupiter_tisserand_invariant, epoch_osculation, eccentricity, semi_major_axis, inclination,
                ascending_node_longitude, orbital_period, perihelion_distance, perihelion_argument, aphelion_distance,
                perihelion_time, mean_anomaly, mean_motion, equinox, orbit_class_type, orbit_class_description,
                orbit_class_range, is_sentry_object, report))
        connection.commit()
    finally:
        connection.close()


def asteroids_info(asteroid_id):
    # Our JSON request to retrieve data about asteroids approaching planet Earth.
    url = "https://api.nasa.gov/neo/rest/v1/neo/" + asteroid_id + "?api_key=DEMO_KEY"

    response = urllib.request.urlopen(url)
    result = json.loads(response.read())

    try:
        neo_id = result["neo_reference_id"]
        print("Neo_reference_id: " + result["neo_reference_id"])

        name = result["designation"]
        print("Asteroid Name: " + result["name"])

        absolute_magnitude_h = str(result["absolute_magnitude_h"])
        print("Absolute_magnitude_h: " + str(result["absolute_magnitude_h"]))

        diameter = str(result["estimated_diameter"]["meters"]["estimated_diameter_min"] +
                       result["estimated_diameter"]["meters"][
                           "estimated_diameter_max"] / 2) + " meters"
        print("Estimated Diameter: " + diameter)

        temp_date = str(result["close_approach_data"][0]["close_approach_date_full"])
        date = str(temp_date.split(" ")[0])
        time = str(temp_date.split(" ")[1])
        print("Close Approach Date: " + date)
        print("Close Approach Time: " + time)

        velocity = str(result["close_approach_data"][0]["relative_velocity"]["kilometers_per_hour"]) + " km/h"
        print("Velocity: " + velocity)

        distance = str(result["close_approach_data"][0]["miss_distance"]["kilometers"]) + " km"
        print("Distance to Earth: " + distance)

        epoch_date_close_approach = str(result["close_approach_data"][0]["epoch_date_close_approach"])
        print("Epoch_date_close_approach: " + epoch_date_close_approach)

        orbiting_body = str(result["close_approach_data"][0]["orbiting_body"])
        print("Orbiting_body: " + orbiting_body)

        orbit_id = str(result["orbital_data"]["orbit_id"])
        print("Orbit ID: " + orbit_id)

        orbit_determination_date = str(result["orbital_data"]["orbit_determination_date"])
        print("Orbit_Determination_date: " + orbit_determination_date)

        first_observation_date = str(result["orbital_data"]["first_observation_date"])
        print("First_observation_date: " + first_observation_date)

        last_observation_date = str(result["orbital_data"]["last_observation_date"])
        print("Last_observation_date: " + last_observation_date)

        data_arc_in_days = str(result["orbital_data"]["data_arc_in_days"]) + " days"
        print("Data_arc_in_days: " + data_arc_in_days)

        observations_used = str(result["orbital_data"]["observations_used"])
        print("Observations_used: " + observations_used)

        orbit_uncertainty = str(result["orbital_data"]["orbit_uncertainty"])
        print("Orbit_uncertainty: " + orbit_uncertainty)

        minimum_orbit_intersection = str(result["orbital_data"]["minimum_orbit_intersection"])
        print("minimum_orbit_intersection: " + minimum_orbit_intersection)

        jupiter_tisserand_invariant = str(result["orbital_data"]["jupiter_tisserand_invariant"])
        print("jupiter_tisserand_invariant: " + jupiter_tisserand_invariant)

        epoch_osculation = str(result["orbital_data"]["epoch_osculation"])
        print("epoch_osculation: " + epoch_osculation)

        eccentricity = str(result["orbital_data"]["eccentricity"])
        print("eccentricity: " + eccentricity)

        semi_major_axis = str(result["orbital_data"]["semi_major_axis"])
        print("semi_major_axis: " + semi_major_axis)

        inclination = str(result["orbital_data"]["inclination"])
        print("inclination: " + inclination)

        ascending_node_longitude = str(result["orbital_data"]["ascending_node_longitude"])
        print("ascending_node_longitude: " + ascending_node_longitude)

        orbital_period = str(result["orbital_data"]["orbital_period"])
        print("orbital_period: " + orbital_period)

        perihelion_distance = str(result["orbital_data"]["perihelion_distance"])
        print("perihelion_distance: " + perihelion_distance)

        perihelion_argument = str(result["orbital_data"]["perihelion_argument"])
        print("perihelion_argument: " + perihelion_argument)

        aphelion_distance = str(result["orbital_data"]["aphelion_distance"])
        print("aphelion_distance: " + aphelion_distance)

        perihelion_time = str(result["orbital_data"]["perihelion_time"])
        print("perihelion_time: " + perihelion_time)

        mean_anomaly = str(result["orbital_data"]["mean_anomaly"])
        print("mean_anomaly: " + mean_anomaly)

        mean_motion = str(result["orbital_data"]["mean_motion"])
        print("mean_motion: " + mean_motion)

        equinox = str(result["orbital_data"]["equinox"])
        print("equinox: " + equinox)

        orbit_class_type = str(result["orbital_data"]["orbit_class"]["orbit_class_type"])
        print("orbit_class_type: " + orbit_class_type)

        orbit_class_description = str(result["orbital_data"]["orbit_class"]["orbit_class_description"])
        print("orbit_class_description: " + orbit_class_description)

        orbit_class_range = str(result["orbital_data"]["orbit_class"]["orbit_class_range"])
        print("orbit_class_range: " + orbit_class_range)

        is_sentry_object = str(result["is_sentry_object"])
        print("is_sentry_object: " + is_sentry_object)
        if result["is_potentially_hazardous_asteroid"]:
            status = "This asteroid could be dangerous to planet Earth!"
            execute_db(name, absolute_magnitude_h, diameter, date, time, velocity, distance, epoch_date_close_approach,
                       orbiting_body, orbit_id, orbit_determination_date, first_observation_date, last_observation_date,
                       data_arc_in_days, observations_used, orbit_uncertainty, minimum_orbit_intersection,
                       jupiter_tisserand_invariant, epoch_osculation, eccentricity, semi_major_axis, inclination,
                       ascending_node_longitude, orbital_period, perihelion_distance, perihelion_argument,
                       aphelion_distance, perihelion_time, mean_anomaly, mean_motion, equinox, orbit_class_type,
                       orbit_class_description, orbit_class_range, is_sentry_object, status)
            print("This asteroid could be dangerous to planet Earth!")
        else:
            status = "This asteroid poses no threat to planet Earth!"
            execute_db(name, absolute_magnitude_h, diameter, date, time, velocity, distance, epoch_date_close_approach,
                       orbiting_body, orbit_id, orbit_determination_date, first_observation_date, last_observation_date,
                       data_arc_in_days, observations_used, orbit_uncertainty, minimum_orbit_intersection,
                       jupiter_tisserand_invariant, epoch_osculation, eccentricity, semi_major_axis, inclination,
                       ascending_node_longitude, orbital_period, perihelion_distance, perihelion_argument,
                       aphelion_distance, perihelion_time, mean_anomaly, mean_motion, equinox, orbit_class_type,
                       orbit_class_description, orbit_class_range, is_sentry_object, status)
            print("This asteroid poses not threat to planet Earth!")

    except:
        print("Unable to access all data.")
        print("--------------------\n")


connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             db='asteroid')
try:
    mycursor = connection.cursor()
    sql = "TRUNCATE TABLE asteroidinfo;"
    mycursor.execute(sql)
    connection.commit()

finally:
    connection.close()

parser = argparse.ArgumentParser()
parser.add_argument('neo_id', help="Id of the near earth asteroid")
arguments = parser.parse_args()

asteroid_id = str(arguments.neo_id)

asteroids_info(asteroid_id)
