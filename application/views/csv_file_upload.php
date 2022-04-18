<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Import Excel CSV to MySQL</title>
	<meta name="description" content="The tiny framework with powerful features">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">

	<style>
	  .container {
		max-width: 500px;
	  }
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

</head>
<body>
<div class="container mt-5">
	<div class="card">
		<div class="card-header text-center">
			<strong>Upload CSV File</strong>
		</div>
		<div class="card-body">

			<form action="<?=site_url('csvfileupload/savefile') ?>" method="post" enctype="multipart/form-data" id="myform">
				<div class="form-group mb-3">
					<div class="mb-3">
						<input type="file" name="csv_file" class="form-control" id="file" required>
					</div>					   
				</div>
				<div class="d-grid">
					<input type="submit" name="submit" value="Upload" class="btn btn-dark" />
				</div>
			</form>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	$( "#myform" ).validate({
	  rules:{
	  	required:true
	  }
	});
</script>
</html>