function getpropmgr() {
		$.ajax({
			type : "POST",
			url :  "/listofpropmgr",
			success : function(data) {
				document.getElementById("propmgr").style.display = "";
				document.getElementById("propmgr").innerHTML = data;
			},
			error : function(e) {
				alert('Error: ' + e);
			}
		});

}

function copydetails(fname)
{
	 var selectedText = fname.options[fname.selectedIndex].innerHTML;
     var selectedValue = fname.value;
    document.getElementById("mgrid").value = selectedValue;
    
    var arr=new Array();
    arr=selectedText.split(" ");
    var fname=arr[0];
    var lname=arr[1];
    
    document.getElementById("fname").value = fname;
	 document.getElementById("lname").value = lname;
	
}

function getsaleprop() {
	$.ajax({
		type : "POST",
		url :  "/listofsaleprop",
		success : function(data) {
			document.getElementById("salepr").style.display = "";
			document.getElementById("salepr").innerHTML = data;
		},
		error : function(e) {
			alert('Error: ' + e);
		}
	});

}
function getrentprop() {
	$.ajax({
		type : "POST",
		url :  "/listofrentprop",
		success : function(data) {
			document.getElementById("rentpr").style.display = "";
			document.getElementById("rentpr").innerHTML = data;
		},
		error : function(e) {
			alert('Error: ' + e);
		}
	});

}

function copydetailssale(saleprop)
{
	 var selectedText = saleprop.options[saleprop.selectedIndex].innerHTML;
     var selectedValue = saleprop.value;
     
 	 document.getElementById("sale_PropId").value = selectedValue;
     
     var arr=new Array();
     arr=selectedText.split(" ");
     var streetnum=arr[0];
     var streetname=arr[1];
     var city=arr[2];
     document.getElementById("sale_streetno").value = streetnum;
 	 document.getElementById("sale_streetname").value = streetname;
 	 document.getElementById("sale_city").value = city;
}

function copydetailsrent(rentprop)
{
	 var selectedText = rentprop.options[rentprop.selectedIndex].innerHTML;
     var selectedValue = rentprop.value;
     
 	 document.getElementById("rent_PropId").value = selectedValue;
     
     var arr=new Array();
     arr=selectedText.split(" ");
     var streetnum=arr[0];
     var streetname=arr[1];
     var city=arr[2];
     document.getElementById("rent_streetno").value = streetnum;
 	 document.getElementById("rent_streetname").value = streetname;
 	 document.getElementById("rent_city").value = city;
}
//onclick="savesale('sale');"

function savesale(val)
{
	if(val=="sale")
		{
	    var mgrid= document.getElementById("mgrid").value ;
		var fname=document.getElementById("fname").value ;
		var lname=document.getElementById("lname").value ;

		var sale_PropId=document.getElementById("sale_PropId").value ;
		var sale_streetno=document.getElementById("sale_streetno").value;
        var sale_streetname=document.getElementById("sale_streetname").value;
        var sale_city=document.getElementById("sale_city").value;
     	var data = {
     			"mgrid":mgrid ,"fname":fname ,"lname":lname ,"sale_PropId":sale_PropId ,"sale_streetno":sale_streetno,"sale_streetname":sale_streetname,"sale_city":sale_city,"type":"sale" };
     	
     	$.ajax({
    		type : "POST",
    		url :  "/salealloaction",
    		data: data,
    		success : function(data) {
    			window.location.href="/CurrentAllocation";
    		},
    		error : function(e) {
    			alert('Error: ' + e);
    		}
    	});
		}
	
	else{
		 var mgrid= document.getElementById("mgrid").value ;
			var fname=document.getElementById("fname").value ;
			var lname=document.getElementById("lname").value ;

			var rent_PropId=document.getElementById("rent_PropId").value ;
			var rent_streetno=document.getElementById("rent_streetno").value ;
	        var rent_streetname=document.getElementById("rent_streetname").value ;
	     	var rent_city=document.getElementById("rent_city").value;
	     	var data = {
	     			"mgrid":mgrid ,"fname":fname ,"lname":lname ,"rent_PropId":rent_PropId ,"rent_streetno":rent_streetno,"rent_streetname":rent_streetname,"rent_city":rent_city,"type":"rent" };
	     	
	     	$.ajax({
	    		type : "POST",
	    		url :  "/salealloaction",
	    		data: data,
	    		success : function(data) {
	    			window.location.href="/CurrentAllocation";
	    		},
	    		error : function(e) {
	    			alert('Error: ' + e);
	    		}
	    	});
	}
     	
    }
     


function onlyNumbers(e) {

	var keynum="";
	
	//var numcheck  
	// For Internet Explorer  
	if (window.event) {
		keynum = e.keyCode;
	}
	// For Netscape/Firefox/Opera  
	else if (e.which) {
		keynum = e.which;
	}
	/*keychar = String.fromCharCode(keynum); 
	alert(keychar);*/
	/*var e = event || evt; // for trans-browser compatibility
	var charCode = e.which || e.keyCode;*/

	if (keynum > 31 && (keynum < 48 || keynum > 57)) {
		return false;
	} else {
		return true;
	}
}