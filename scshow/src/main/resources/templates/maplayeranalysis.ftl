<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>Map Layer Analysis Form</title>	
        
	    <!--<script src="jslib/jquery-1.12.4.js"></script>-->
		<script src="../static/jslib/jquery-1.12.4.min.js"></script>
	</head>
	<body>
		<div class="panel-heading">
			<label>Map Service:</label>
			<input class="form-control" placeholder="Enter Map URL"  id="urlInput" style="width:680px;display:inline">
			<button type="button" class="btn btn-default" id="mapAnalysis" style="width:160px">Map Analysis</button>
        </div>
	    <hr/>
		<div class="Layer Information">
			<div class="form-group">
				<label>Layer Name</label>
				<input class="form-control" id="lNameValueInput" placeholder="Analysis..." readonly="readonly">
			</div>
			<div class="form-group">
				<label>Type Name</label>
				<input class="form-control" id="typeInput" placeholder="Analysis..." readonly="readonly">
		   </div>	
			<div class="form-group">
				<label>Query Formats</label>
				<input class="form-control" id="qformatInput" placeholder="Analysis..." readonly="readonly">
		   </div>
			<div class="form-group">
				<label>Query Capabilities</label>
				<input class="form-control" id="capabilitiesInput" placeholder="Analysis..." readonly="readonly">
		   </div>			                                       
		   <div class="form-group">
				<label>Map Provider</label>
				<input class="form-control" id="providerInput" placeholder="Analysis..." readonly="readonly">
		   </div>
		</div>
		<hr/>
		<div  class="Map Description">
			<label>Map Description</label>
			<textarea rows="5" class="form-control" id="descriptionInput" placeholder="Analysis..." readonly="readonly">
			</textarea>
		</div>
		
		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover" id="dataTableURL" style="table-layout:fixed;">
				<thead>
					<tr>
						<th>SName</th> 
						<th>extent xmin</th>                                           
						<th>extent xmin</th>
						<th>extent ymin</th>
						<th>extent ymin</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
        </div>
		
		<script src="../static/jslib/crowdsourcingjs/maplayeranalysis.js"></script>
    </body>
</html>