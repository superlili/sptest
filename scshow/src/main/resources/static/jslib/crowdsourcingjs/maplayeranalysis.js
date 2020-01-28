$(document).ready(function() {
	$('#mapAnalysis').click(function() {
		$("#dataTableURL tr:not(:first)").html("");
		//https://server.arcgisonline.com/arcgis/rest/services/ESRI_Imagery_World_2D/MapServer
		var resturl = $('#urlInput').val() + '/0?f=json';
		$.ajax({
			type : "GET",
			url : resturl,
			dataType : "json",
			success : function(data) {
				$("#lNameValueInput").val(data['name']);
				$("#typeInput").val(data['type']);
				$("#qformatInput").val(data['supportedQueryFormats']);
				$("#capabilitiesInput").val(data['capabilities']);
				$("#providerInput").val(data['copyrightText']);
				$("#descriptionInput").val(data['description']);
				
				var trdata = "";
				trdata = "<tr class='odd gradeX'><td>"
				+ data['name']
				+ "</td><td>"
				+ data['extent']['xmin']
				+ "</td><td>"
				+ data['extent']['xmax']
				+ "</td><td>"
				+ data['extent']['ymin']
				+ "</td><td>"
				+ data['extent']['ymax']
				+ "</td></tr>";
				
				$("#dataTableURL").append(trdata);
			}
		});
		return false;
	});
});