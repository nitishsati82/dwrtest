<!DOCTYPE html>
<html>
<head>
<title>DWR test</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type='text/javascript' src='/dwr/engine.js'></script>
<script type='text/javascript' src='/dwr/interface/Message.js'></script>
<script type="text/javascript" src="/dwr/util.js" ></script>

<script>

$(document).ready(function() {
	dwr.util.useLoadingMessage();
	update();
});

         function update(){
             	Message.getMessage(function(data) {
                 dwr.util.setValue("divResponse", data);
                 dwr.util.setValue("text", data);
                
               });
             	 getList();
         }
         
         function getList(){
        	 Message.getOptionList(function(data) {
        		 fillDropDown(data);
        		 fillWithDwrUtil(data);
               });
         }
function fillDropDown(options){
	var select = document.getElementById("optionList"); 
	 
	for(var i = 0; i < options.length; i++) {
	    var opt = options[i];
	    var el = document.createElement("option");
	    el.textContent = opt;
	    el.value = opt;
	    select.appendChild(el);
	}
}
function fillWithDwrUtil(data){
	dwr.util.removeAllOptions("optionList2");
 	dwr.util.addOptions("optionList2", data);
}
</script>
</head>

<body>
	<div id="divResponse"></div>
	<input id="text">
	<select id="optionList"></select>
	<select id="optionList2"></select>
</body>

</html>