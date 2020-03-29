<?php
	$con = mysqli_connect("localhost","root","","asteroid");
	$asteroid = $_GET['asteroid'];
	$query = mysqli_query($con,"SELECT * FROM approach WHERE distance='$asteroid'");
	$row = mysqli_fetch_array($query);
	$impact_name = $row['name'];
	$neo_id = $row['neo_id'];
	$date_full = $row['date_full'];
	$velocity = $row['velocity'];
	$distance = $row['distance'];
	$output = shell_exec("python allinfoAsteroid.py $neo_id $date_full $velocity $distance");
	$query = mysqli_query($con,"SELECT * FROM asteroidinfo WHERE id = 1");
	$row = mysqli_fetch_array($query);
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Nasa Space Apps Challenge 2019</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css" media="all" />
	<style type="text/css">
		.col-md-4 p{
			font-size:13px;
			background-color:#ccc;
			padding:5px;
		}
		
	</style>
	<script src="https://files.worldwind.arc.nasa.gov/artifactory/web/0.9.0/worldwind.min.js"
        type="text/javascript">
</script>
</head>
<body>
	<div class="header">
		<div class="container">
			<h2><a href="index.php" style="color: #fff;"><img src="images/logo.png" style="height: 80px; width: 80px;">Abacus Xtreme</a> <a href="asteroid-list.php" style="float:right;color:#fff;font-size:20px; padding-top:5px;">Asteroid List</a></h2>
		</div>
	</div>
	<div class="container">
		<div class="row">

			<div class="col-md-6">
						<div class="row">
							<div class="col-md-5">
								<label for="">Asteroid Name: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['name']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Estimated Diameter:</label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['diameter']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Close Approach Date:</label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['date']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Time:</label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['time']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Velocity:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['velocity'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Distance to Earth:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['distance'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Density:</label>
							</div>
							<div class="col-md-7">
							<?php echo "1500kg/m^3 " ;?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Orbiting Body:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['orbiting_body'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Orbiting Id:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['orbit_id'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Orbit Determination Date:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['orbit_determination_date'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">First Observation Date:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['first_observation_date'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Last Observation Date:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['last_observation_date'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Data Arc in Days:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['data_arc_in_days'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Observations Uused:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['observations_used'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Orbit Uncertainty:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['orbit_uncertainty'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Minimum Orbit Intersection:</label>
							</div>
							<div class="col-md-7">
								<?php echo $row['minimum_orbit_intersection'];?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Jupiter Tisserand Invariant: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['jupiter_tisserand_invariant']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Epoch Osculation: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['epoch_osculation']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Eccentricity: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['eccentricity']; ?></p>
							</div>
						</div>
						
			</div>
			<div class="col-md-6">
						<div class="row">
							<div class="col-md-5">
								<label for="">Semi Major Axis: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['semi_major_axis']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Inclination: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['inclination']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Ascending Node Longitude: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['ascending_node_longitude']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Orbital Period: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['orbital_period']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Perihelion Distance: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['perihelion_distance']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Perihelion Argument: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['perihelion_argument']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Eccentricity: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['eccentricity']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Aphelion Distance: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['aphelion_distance']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Perihelion Time: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['perihelion_time']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Mean Anomaly: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['mean_anomaly']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Mean Motion: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['mean_motion']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Equinox: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['equinox']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Orbit Class Type: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['orbit_class_type']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Orbit Class Description: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['orbit_class_description']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Orbit Class Range: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['orbit_class_range']; ?></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Is Sentry Object: </label>
							</div>
							<div class="col-md-7">
								<p><?php echo $row['is_sentry_object']; ?></p>
							</div>
						</div>
						
			</div>
			
			
			<div class="row">
				<div class="col-md-12">
					<?php 
						$status = $row['report'];
						if($status == "This asteroid could be dangerous to planet Earth!"){
							echo "<label class='bg-danger' style='padding:5px;color:#fff;'>$status</label>";
						}
						else{
							echo "<label class='bg-success' style='padding:5px;color:#fff;'>$status</label>";
						}
									
					?>
								
				</div>
			</div>
			<div class="col-md-12">
				<center>
					<iframe scrolling="no" src="http://www.rankinstudio.com/asteroids/Main.php?PostType=byName&ObjName=<?php echo $row['name']; ?>" style="width: 100%; height: 487px;">
					</iframe>
				</center>
			</div>
			<!--<div class="col-md-12">
				<center>
					<a href="https://ssd.jpl.nasa.gov/sbdb.cgi?sstr=<?php //echo $row['name'];?>;old=0;orb=1;cov=0;log=0;cad=0#orb" target="_blank">Show Orbit</a>
				</center>
			</div>-->
		</div>
		<!-----<div class="row">
			<div class="col-md-4">
				<a href=""><img src="images/asteroid.jpg" alt="" /></a>
			</div>
		</div>------>
		<?php
			
			$impact_query = mysqli_query($con,"SELECT * FROM asteroid_implications WHERE Asteroid_name='$impact_name'");
			$impact_row = mysqli_fetch_array($impact_query);
		?>
		
		<div class="row">
							<div class="col-md-12">
								
								
								<label>Impact Result</label>
								<div class="row">	
									<div class="col-md-4">
										<h3 class="text-center">ATMOSPHERIC ENTRY</h3>
										<p>
											<?php 
												if (empty($impact_row['Atmospheric Entry']) || is_null($impact_row['Atmospheric Entry']) ) {
													echo "No Impact";
												} else{
													echo $impact_row['Atmospheric Entry'];
												}	
									 		?>
									
										</p>
									</div>
									<div class="col-md-4">
										<h3 class="text-center">Energy</h3>
										<p>
											<?php 
												if (empty($impact_row['Energy']) || is_null($impact_row['Energy']) ) {
													echo "No Impact";
												} else{
													echo $impact_row['Energy'];
												}	
									 		?>
									
										</p>
									</div>
									<div class="col-md-4">
										<h3 class="text-center">Global Damages</h3>
										<p>
											<?php 
												if (empty($impact_row['Global Damages']) || is_null($impact_row['Global Damages']) ) {
													echo "No Impact";
												} else{
													echo $impact_row['Global Damages'];
												}	
									 		?>
									
										</p>

									</div>
									
								</div>	
								<div class="row">
									<div class="col-md-4">
										<h3 class="text-center">Crater Dimensions</h3>
										<p>
											<?php 
												if (empty($impact_row['Crater']) || is_null($impact_row['Crater']) ) {
													echo "No Impact";
												} else{
													echo $impact_row['Crater'];
												}	
									 		?>
									
										</p>
									</div>
									<div class="col-md-4">
										<iframe src="http://localhost/globe/"  width="100%" height="400px" scrolling="no" frameBorder = "0"></iframe>
									</div>
									<div class="col-md-4">
										<h3 class="text-center">Seismic Effects</h3>
										<p>
											<?php 
												if (empty($impact_row['Seismic Effects']) || is_null($impact_row['Seismic Effects']) ) {
													echo "No Impact";
												} else{
													echo $impact_row['Seismic Effects'];
												}	
									 		?>
									
										</p>
									</div>
								</div>
								<div class="row">	
									
									<div class="col-md-4">
										<h3 class="text-center">Airblast</h3>
										<p>
											<?php
												$Airblast =  $impact_row['Air Blast'];
												if (empty($Airblast) || is_null($Airblast) ) {
													echo "No Impact";
												} else{
													echo $impact_row['Air Blast'];
												}	
									 		?>
									
										</p>
									</div>
									<div class="col-md-4">
										<h3 class="text-center">Ejects</h3>
										<p>
											<?php 
												if (empty($impact_row['Ejecta']) || is_null($impact_row['Ejecta']) ) {
													echo "No Impact";
												} else{
													echo $impact_row['Ejecta'];
												}	
									 		?>
									
										</p>
									</div>
									<div class="col-md-4">
										<h3 class="text-center">Thermal Radiation</h3>
										<p>
											<?php 
												if (empty($impact_row['Thermal Radiation']) || is_null($impact_row['Thermal Radiation']) ) {
													echo "No Impact";
												} else{
													echo $impact_row['Thermal Radiation'];
												}	
									 		?>
									
										</p>
									</div>
								
								<div align="right" style="margin-bottom:20px;">
								<a href="http://localhost/asteroid/" class="btn btn-info">Go Back</a>
							</div>
							</div>
							
							
							
						</div>
						



	</div>
										




	
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	

</body>
</html>