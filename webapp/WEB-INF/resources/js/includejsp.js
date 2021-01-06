var includeJS = {
	  aInternal: true,
	  aListener: function(val) {},
	  set status(val) {
	    this.aInternal = val;
	    this.aListener(val);
	  },
	  get status() {
	    return this.aInternal;
	  },
	  registerListener: function(listener) {
	    this.aListener = listener;
	  }
	}

$(function(){
	
	includeHTML();
	function includeHTML() {
	    var z, i, elmnt, file, xhttp;
	    /* Loop through a collection of all HTML elements: */
	    z = document.getElementsByTagName("*");
	    for (i = 0; i < z.length; i++) {
	      elmnt = z[i];
	      /*search for elements with a certain atrribute:*/
	      file = elmnt.getAttribute("include-html");
	      if (file) {
	        /* Make an HTTP request using the attribute value as the file name: */
	        xhttp = new XMLHttpRequest();
	        xhttp.onreadystatechange = function() {
	          if (this.readyState == 4) {
	            if (this.status == 200) {elmnt.innerHTML = this.responseText;}
	            if (this.status == 404) {elmnt.innerHTML = "Page not found.";}
	            /* Remove the attribute, and call this function once more: */
				includeJS.status = false
	            elmnt.removeAttribute("include-html");
	            includeHTML();
	          }
	        }
	        xhttp.open("GET", file, true);
	        xhttp.send();
	        /* Exit the function: */
	        return;
	      }
		  
	    }
		includeJS.status = true
		/*
		let ullength= $(".navbar-nav").find("li").length;
		if( !checklogin == ""){
			console.log(  $(".navbar-nav").find("li").eq(0))
			$(".navbar-nav").find("li").eq(1).remove();			
		}else{
			$(".navbar-nav").find("li").eq(ullength-1).remove();	
		}*/
	
  }
	
})
