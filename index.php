<?php
	
	$con = mysqli_connect("localhost","root","","asteroid");
	$name = "(2009 FG19)";
	$diameter = "249.395091549 meters";
	$date = "2019-Oct-19";
	$time = "20:43";
	$velocity = "54269.32643 km/h";
	$distance = "6878620.3507";
	$status = "<label class='bg-success'>This asteroid poses not threat to planet Earth!</label>";
	

	include("function.php");

	function generate_asteroid(){
		global $con;
		global $name;
		global $diameter;
		global $date;
		global $time;
		global $velocity;
		global $distance;
		global $status;
		if(isset($_POST['create'])){
			// $name = "Hello";
			// echo $name;
			$output = shell_exec("python RealTime_Asteroid_Approach.py");
			//$query = mysqli_query($con, "SELECT * FROM approach where distance < '$distance'");
			$query = mysqli_query($con, "SELECT MIN(distance),name,diameter,date,time,velocity,distance,report FROM approach");
			$rows = mysqli_num_rows($query);
			$row = mysqli_fetch_array($query);
				$name     = $row['name'];
				$diameter = $row['diameter'];
				$date 	  = $row['date'];
				$time 	  = $row['time'];
				$velocity = $row['velocity'];
				$distance = $row['distance'];
				$status   = $row['report'];
				if($status == "This asteroid could be dangerous to planet Earth!"){
					$status = "<label class='bg-danger'>$status</label>";
				}
				else {
					$status = "<label class='bg-success'>$status</label>";
				}
			$today_date = date("Y-M-d");
			$sms_query = mysqli_query($con,"SELECT * FROM approach WHERE report='This asteroid could be dangerous to planet Earth!' AND date = '$today_date'");
			$rows = mysqli_num_rows($sms_query);
			
			if ($rows > 0) {
				while ($sms_row = mysqli_fetch_array($sms_query)) {
					$sms_name = $sms_row['name'];
					$sms_time = $sms_row['time'];
					
					$clientsms = "Warning!!\r\n".$sms_name." asteroid probably hit at ".$sms_time." ".$today_date;
					$mobile = "01703235615";
        			sendtoclient($clientsms,$mobile);
				}
				
			}
			//echo $rows;
		}
	}
	generate_asteroid();

?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Nasa Space Apps Challenge 2019</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css" media="all" />
</head>
<body style="background-image: url(images/223.jpg);background-size: cover">
	<div class="header">
		<div class="container">
			<h2><a href="index.php" style="color: #fff;"><img src="images/logo.png" style="height: 80px; width: 80px;">Abacus Xtreme</a> <a href="asteroid-list.php" style="float:right;color:#fff;font-size:20px; padding-top:5px;">Asteroid List</a></h2>
		</div>
	</div>
		<div class="row">
			<div class="col-md-12">
				<iframe src="http://www.asterank.com/3d/" frameborder="0" ></iframe>
				<div class="form">
					<form action="" method="post">
						<div class="row">
							<div class="col-md-5">
								<label for="">Asteroid Name: </label>
							</div>
							<div class="col-md-7">
								<input type="text" name="" id="" value="<?php echo $name; ?>" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Estimated Diameter:</label>
							</div>
							<div class="col-md-7">
								<input type="text" name="" id="" value="<?php echo $diameter; ?>" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Close Approach Date:</label>
							</div>
							<div class="col-md-7">
								<input type="text" name="" id="" value="<?php echo $date; ?>" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Time:</label>
							</div>
							<div class="col-md-7">
								<input type="text" name="" id="" value="<?php echo $time; ?>" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Velocity:</label>
							</div>
							<div class="col-md-7">
								<input type="text" name="" id="" value="<?php echo $velocity; ?>" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<label for="">Distance to Earth:</label>
							</div>
							<div class="col-md-7">
								<input type="text" name="" id="" value="<?php echo $distance; ?> km" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<?php echo $status; ?>
							</div>
						</div>
						
							<div align="right">
								<button type="submit" name="create">Generate Asteroid</button>
							</div>
						
						
					</form>
				</div>
				
			</div>
		<hr />
		<div class="container">
		<div class="row">
			<div class="col-md-5"></div>	
			<div class="col-md-4">
				<h2 class="btn btn-primary" style="text-align: center;">Closest Asteroids From Earth</h2>
			</div>	
			<div class="col-md-3"></div>	
		</div>
		<div class="row">
			<!--<div class="col-md-12">
				<a href="asteroid.php"><img src="images/asteroid.jpg" alt="" /></a>
			</div>
		</div>-->

		

		<?php
			//test data
		$images = array("1.png","1.png","1.png","1.png","1.png","1.png","red.png");
		$date = date("Y-M-d");
		//$date = "2019-Nov-07";
		$query = mysqli_query($con, "SELECT * FROM approach WHERE date='$date' ORDER BY distance LIMIT 0,6");
		$rows = mysqli_num_rows($query);
		$i = 0;
		$margin = 0;
		$a = array(10,30,50,70,90,110);
		while($row = mysqli_fetch_array($query)){
			$id = $row['distance'];
			$report = $row['report'];
			if ($report=="This asteroid could be dangerous to planet Earth!") {
				$image = <<<DELIMETER
			<div class="col-md-2" style="margin-top:{$a[array_rand($a)]}px;">
				<a href="asteroid.php?asteroid=$id" data-toggle="tooltip" data-placement="top" title="{$row['name']}"><img src="images/$images[6]" alt="" /></a>
			</div>
DELIMETER;
echo $image;
	$i++;
	$margin += 30;
			}
			else{
							$image = <<<DELIMETER
			<div class="col-md-2" style="margin-top:{$a[array_rand($a)]}px;">
				<a href="asteroid.php?asteroid=$id" data-toggle="tooltip" data-placement="top" title="{$row['name']}"><img src="images/$images[$i]" alt="" /></a>
			</div>
DELIMETER;
echo $image;
	$i++;
	$margin += 30;
			}

	
		}
	
			
		?>
		<!--<div class="col-md-2">
			<a href="asteroid.php"><img src="images/1.png" alt="" /></a>
		</div>
		<div class="col-md-2">
			<a href="asteroid.php"><img src="images/2.jpg" alt="" /></a>
		</div>
		<div class="col-md-2">
			<a href="asteroid.php"><img src="images/3.jpg" alt="" /></a>
		</div>
		<div class="col-md-2">
			<a href="asteroid.php"><img src="images/5.jpg" alt="" /></a>
		</div>
		<div class="col-md-2">
			<a href="asteroid.php"><img src="images/4.jpg" alt="" /></a>
		</div>
		<div class="col-md-2">
			<a href="asteroid.php"><img src="images/1.png" alt="" /></a>
		</div>--->
		<img src="images/earth.png" alt="" style="height:200px;margin-bottom:20px;" />
	</div>
	</div>
	<hr />
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function(){
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
</body>
</html>