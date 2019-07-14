<?php
		
	// database
				$server 	= 'localhost';
				$username 	= 'root';
						$pass		= '';
				$database 	= 'db_pelangi';
	// koneksi ke database
	$connect = new PDO("mysql:host=$server;dbname=$database", $username, $pass);
		
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="ilmu-detil.blogspot.com">
		<title>Pelangi Test Programming </title>
		<!-- Bootstrap 3.3.5 -->
		<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
		<!-- select search -->
		<link rel="stylesheet" href="assets/dist/css/bootstrap-select.min.css">
		<!-- DataTables -->
		<link rel="stylesheet" href="assets/plugins/datatables/dataTables.bootstrap.css">
	</head>
	<body>
		<nav class="navbar navbar-default" >
			<div class="container-fluid">
				<div class="navbar-header">
					
					<a class="navbar-brand" href="#">
						Pelangi Programming Test
					</a>
				</div>
			</div>
		</nav>
		
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<form method="post">
						<div class="form-group">
							<label class="control-label col-md-2" >Region </label>
							<div class="col-md-6">
								<select class="form-control selectpicker" data-live-search="true" name="region">
									<option value="">- Select Region -</option>
									<?php
									$query = $connect->query("SELECT * from graph GROUP by region");
									while ($data = $query->fetch(PDO::FETCH_OBJ)) {
									?>
									<option value="<?php echo $data->region ?>"><?php echo $data->region; ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="col-md-2">
							<input type="submit" name="search" value="Go" class="btn btn-primary">
						</div>
						<div class="col-md-2">
							<a href="index.php" class="btn btn-danger">Reset</a>
						</div>
					</form>
					
					<div id = "cons" style = "width: 350px; height: 350px;"></div>
					
				</div>
				<div class="col-md-8">
					
					<table id="example" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>No.</th>
								<th>Location</th>
								<th>Status</th>
								<th>Region</th>
								<th>Processed</th>
								
							</tr>
						</thead>
						
						<tbody>
							<?php
							$no=1;
							if (isset($_POST['search'])) {
								$region = $_POST['region'];
								$query = $connect->query("SELECT * from graph where region = '$region'");
							}else{
								$query = $connect->query("SELECT * from graph");
							}
							while ($data = $query->fetch(PDO::FETCH_OBJ)) {
								$date_data = $data->processed;
								$date = date("j M, G:i A", strtotime($date_data));
								$year = date('Y', strtotime($date_data));
							?>
							<tr>
								<td><?php echo $no++; ?></td>
								<td><?php echo $data->location; ?></td>
								<td><?php echo $data->status; ?></td>
								<td><?php echo $data->region; ?></td>
								<td><?php echo $date; ?> <small>( <?php echo $year; ?> )</small></td>
							</tr>
							<?php } ?>
						</tbody>
						
					</table>
				</div>
			</div>
			
			<!-- Trigger the modal with a button -->
			
		</div>
		<script src="assets/plugins/jQuery/jQuery-2.1.4.min.js"></script>
		<!-- Bootstrap 3.3.5 -->
		<script src="assets/bootstrap/js/bootstrap.min.js"></script>
		<!-- bootstrap select search -->
		<script src="assets/dist/js/bootstrap-select.js"></script>
		<!-- DataTables -->
		<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="assets/plugins/datatables/dataTables.bootstrap.min.js"></script>
		<script src = "https://code.highcharts.com/highcharts.js"></script>
		<script src = "https://code.highcharts.com/highcharts-3d.js"></script>
		<!-- color picker -->
		<!-- <script src="assets/dist/js/bootstrap-colorpicker.js"></script> -->
		<!-- chart -->
		<!-- <script src="assets/chart/js/highcharts.js"></script> -->
		
		<!-- image -->
		<script src="assets/dropzone/dropzone.js"></script>
		
		<?php
		if (isset($_POST['search'])) {
		$region = $_POST['region'];
		$sql = "SELECT status, COUNT(*) as jumlah FROM graph where region = '$region' GROUP by status";
		}else{
		$region = "All";
		$sql = "SELECT status, COUNT(*) as jumlah FROM graph GROUP by status";
		}
		$result = $connect->query($sql)->rowCount();
		
		$arrayPie = array();
		if ($result > 0) {
		$result2 = $connect->query($sql);
		while($row = $result2->fetch(PDO::FETCH_OBJ)) {
		$arrayPie[] =  "["."'".$row->status."'".",".$row->jumlah."]";
		}
		}
		?>
		<script type="text/javascript">

		$(document).ready( function () {
		$('#example').DataTable();
		} );

		$(document).ready(function() {
		var chart = {
		type: 'pie',
		options3d: {
		enabled: true,
		alpha: 45,
		beta: 0
		}
		};
		var title = {
		text: 'Pie Chart Count Region <?php echo $region ?>'
		};
		var tooltip = {
		pointFormat: '{series.name}: <b>{point.name}</b><br>Total : <b>{point.y}</b>'
		};
		var plotOptions = {
		pie: {
		allowPointSelect: true,
		cursor: 'pointer',
		depth: 35,
		
		dataLabels: {
		enabled: true,
		format: '{point.name}'
		}
		}
		};
		var series = [{
		type: 'pie',
		name: 'Status',
		data: [<?= join($arrayPie,",") ?>]
		}];
		var json = {};
		json.chart = chart;
		json.title = title;
		json.tooltip = tooltip;
		json.plotOptions = plotOptions;
		json.series = series;
		$('#cons').highcharts(json);
		});
		</script>
		
	</body>
</html>