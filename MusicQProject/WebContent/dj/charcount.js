	function nickcount(val) {
		var len = val.value.length;
		var charCount = document.getElementById("nickCount");
		var charWarning = document.getElementById("nickWarning");
		if (len >= 10) {
			val.value = val.value.substring(0, 10);
			charCount.innerHTML = "10/10";
			charWarning.style.display = "block";
		  /* val.disabled = true; */	 
		} else {
			charCount.textContent = len +"/10";
			charWarning.style.display = "none";
		    val.disabled = false;
		}
	}

	function titlecount(val) {
		  var len = val.value.length;
		  var charCount = document.getElementById("titleCount");
		  var charWarning = document.getElementById("titleWarning");
		  if (len >= 40) {
		    val.value = val.value.substring(0, 40);
		    charCount.textContent = "40/40";
		    charWarning.style.display = "block";
		  } else {
		    charCount.textContent = len+"/40";
		    charWarning.style.display = "none";
		    val.disabled = false;
		  }
		}
		
			function introcount(val) {
		  var len = val.value.length;
		  var charCount = document.getElementById("introCount");
		  var charWarning = document.getElementById("introWarning");
		  if (len >= 200) {
		    val.value = val.value.substring(0, 200);
		    charCount.textContent = "200/200";
		    charWarning.style.display = "block";
		  } else {
		    charCount.textContent = len+"/200";
		    charWarning.style.display = "none";
		    val.disabled = false;
		  }
		}