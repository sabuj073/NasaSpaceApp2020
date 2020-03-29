import json, turtle, urllib.request, time
from datetime import date
from datetime import datetime
from datetime import timedelta


asteroid_id = "3874055"


def asteroids_approach(asteroid_id):
    # Our JSON request to retrieve data about asteroids approaching planet Earth.
    url = "https://api.nasa.gov/neo/rest/v1/neo/" + asteroid_id + "?api_key=DEMO_KEY"

    response = urllib.request.urlopen(url)
    result = json.loads(response.read())

    try:
        print("Neo_reference_id: " + result["neo_reference_id"])
        print("Asteroid Name: " + result["designation"])
        print("Absolute_magnitude_h: " + str(result["absolute_magnitude_h"]))
        print("Estimated Diameter: " + str(result["estimated_diameter"]["meters"]["estimated_diameter_min"] +
                                           result["estimated_diameter"]["meters"][
                                               "estimated_diameter_max"] / 2) + " meters")
        print("Close Approach Date & Time: " + result["close_approach_data"][0]["close_approach_date_full"])
        print("Velocity: " + str(
            result["close_approach_data"][0]["relative_velocity"]["kilometers_per_hour"]) + " km/h")
        print("Distance to Earth: " + str(result["close_approach_data"][0]["miss_distance"]["kilometers"]) + " km")
        print("Epoch_date_close_approach: " + str(result["close_approach_data"][0]["epoch_date_close_approach"]))
        print("Orbiting_body: " + str(result["close_approach_data"][0]["orbiting_body"]))
        print("Orbit ID: " + str(result["orbital_data"]["orbit_id"]))
        print("Orbit_Determination_date: " + str(result["orbital_data"]["orbit_determination_date"]))
        print("First_observation_date: " + str(result["orbital_data"]["first_observation_date"]))
        print("Last_observation_date: " + str(result["orbital_data"]["last_observation_date"]))
        print("Data_arc_in_days: " + str(result["orbital_data"]["data_arc_in_days"]))
        print("Observations_used: " + str(result["orbital_data"]["observations_used"]))
        print("Orbit_uncertainty: " + str(result["orbital_data"]["orbit_uncertainty"]))
        print("minimum_orbit_intersection: " + str(result["orbital_data"]["minimum_orbit_intersection"]))
        print("jupiter_tisserand_invariant: " + str(result["orbital_data"]["jupiter_tisserand_invariant"]))
        print("epoch_osculation: " + str(result["orbital_data"]["epoch_osculation"]))
        print("eccentricity: " + str(result["orbital_data"]["eccentricity"]))
        print("semi_major_axis: " + str(result["orbital_data"]["semi_major_axis"]))
        print("inclination: " + str(result["orbital_data"]["inclination"]))
        print("ascending_node_longitude: " + str(result["orbital_data"]["ascending_node_longitude"]))
        print("orbital_period: " + str(result["orbital_data"]["orbital_period"]))
        print("perihelion_distance: " + str(result["orbital_data"]["perihelion_distance"]))
        print("perihelion_argument: " + str(result["orbital_data"]["perihelion_argument"]))
        print("aphelion_distance: " + str(result["orbital_data"]["aphelion_distance"]))
        print("perihelion_time: " + str(result["orbital_data"]["perihelion_time"]))
        print("mean_anomaly: " + str(result["orbital_data"]["mean_anomaly"]))
        print("mean_motion: " + str(result["orbital_data"]["mean_motion"]))
        print("equinox: " + str(result["orbital_data"]["equinox"]))
        print("orbit_class_type: " + str(result["orbital_data"]["orbit_class"]["orbit_class_type"]))
        print("orbit_class_description: " + str(result["orbital_data"]["orbit_class"]["orbit_class_description"]))
        print("orbit_class_range: " + str(result["orbital_data"]["orbit_class"]["orbit_class_range"]))
        print("is_sentry_object: " + str(result["is_sentry_object"]))
        if result["is_potentially_hazardous_asteroid"]:
            print("This asteroid could be dangerous to planet Earth!")
        else:
            print("This asteroid poses not threat to planet Earth!")

    except:
        print("Unable to access all data.")
        print("--------------------\n")


asteroids_approach(asteroid_id)
