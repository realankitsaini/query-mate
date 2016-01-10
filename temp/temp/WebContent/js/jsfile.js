$(document).ready(function() {

	 
        $("span").click(function(event) {
        	
              //  var name =event.target.value;
               // alert(" hii  "+event.target.id);
                $.get('upvoteServlet', {
                        userName : event.target.id
                }, function(responseText) {
              //alert(responseText +" "+event.target.id);
        				 $('#'+event.target.id).css("color","green");
                    //    $('#'+event.target.id).attr("disabled","disabled");
        				
                });
        });
});

