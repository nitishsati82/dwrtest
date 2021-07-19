<!DOCTYPE html>
<html>
<head>
<title>DWR test</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type='text/javascript' src='/dwr/engine.js'></script>
<script type='text/javascript' src='/dwr/interface/Message.js'></script>
<script type="text/javascript" src="/dwr/util.js"></script>

<script>
	$(document).ready(function() {
		dwr.util.useLoadingMessage();
		update();
	});

	function update() {
		Message.getMessage(function(data) {
			dwr.util.setValue("divResponse", data);
			dwr.util.setValue("text", data);

		});
		getList();
	}

	function getList() {
		Message.getOptionList(function(data) {
			fillDropDown(data);
			fillWithDwrUtil(data);
		});
	}
	function fillDropDown(options) {
		var select = document.getElementById("optionList");

		for (var i = 0; i < options.length; i++) {
			var opt = options[i];
			var el = document.createElement("option");
			el.textContent = opt;
			el.value = opt;
			select.appendChild(el);
		}
	}
	function fillWithDwrUtil(data) {
		dwr.util.removeAllOptions("optionList2");
		dwr.util.addOptions("optionList2", data);
	}
</script>
</head>

<body>

	<div class="container">
		<div class="alert alert-success">
			<center>
				<strong>Web App demo of DWR</strong>
			</center>
		</div>
		<label for="sel1">Random message number from server</label>
		<div id="divResponse" class="well"></div>
		<div class="form-group">
			<input id="text" class="form-control">
		</div>
		<h2>Form control: select</h2>
		<p>The form below contains two dropdown menus (select lists):</p>
		<form>
			<div class="form-group">
				<label for="sel1">Drop down list using js function</label> <select
					class="form-control" id="optionList">
				</select> <br> <label for="sel2">Drop down list using dwr util</label> <select
					class="form-control" id="optionList2">
				</select>
			</div>
		</form>
	</div>

</body>

</html>