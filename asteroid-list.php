<?php
	shell_exec("python RealTime_Asteroid_Approach_list.py");
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta http-equiv="refresh" content="5; url="<?php echo $_SERVER['PHP_SELF']; ?>">
	<meta charset="UTF-8">
	<title>Nasa Space Apps Challenge 2019</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="style.css" media="all" />
</head>
<body>
	<div class="header">
		<div class="container">
			<h2><a href="index.php" style="color: #fff;"><img src="images/logo.png" style="height: 80px; width: 80px;">Abacus Xtreme</a> <a href="asteroid-list.php" style="float:right;color:#fff;font-size:20px; padding-top:5px;">Asteroid List</a></h2>
		</div>
	</div>
	<div class="container">
	<a href="index.php" class="btn btn-info" style="margin-bottom:20px;">Home</a>
		<table id="example" class="table table-striped table-bordered" style="width:100%">
			<thead>
				<tr>
					<th>Name</th>
					<th>Diameter</th>
					<th>Date</th>
					<th>Time</th>
					<th>Velocity</th>
					<th>Distance</th>
					<th>Report</th>
				</tr>
			</thead>
			<tbody>
			<?php
	
	$con = mysqli_connect("localhost","root","","asteroid");
	
			$query = mysqli_query($con, "SELECT * FROM `approach` ORDER BY 'date' asc");
			$rows = mysqli_num_rows($query);
			while($row = mysqli_fetch_array($query)){
				$name     = $row['name'];
				$diameter = $row['diameter'];
				$date 	  = $row['date'];
				$time 	  = $row['time'];
				$velocity = $row['velocity'];
				$distance = $row['distance'];
				$report   = $row['report'];
				$asteroid = <<<DELIMETER
				<tr>
					<td><a href="asteroid.php?asteroid=$distance">{$name}</a></td>
					<td>{$diameter}</td>
					<td>{$date}</td>
					<td>{$time}</td>
					<td>{$velocity}</td>
					<td>{$distance}</td>
					<td>{$report}</td>
				</tr>
DELIMETER;
			echo $asteroid;
			}
			

?>
				
			</tbody>
			<tfoot>
				<tr>
					<th>Name</th>
					<th>Diameter</th>
					<th>Date</th>
					<th>Time</th>
					<th>Velocity</th>
					<th>Distance</th>
					<th>Report</th>
				</tr>
			</tfoot>
		
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
	
	
	
	
	<script>
		$(document).ready(function() {
    $('#example').DataTable();
} );
	</script>
	
	
	
	
</body>
</html>
