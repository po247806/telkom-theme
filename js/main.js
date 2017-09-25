AUI().ready(
	'liferay-sign-in-modal',
	function(A) {
		var signIn = A.one('.sign-in > a');

		if (signIn && signIn.getData('redirect') !== 'true') {
			signIn.plug(Liferay.SignInModal);
		}
	}
);

	function autoHeight(){
       $('#footer').css('margin-top', $(document).height() - (( $('#banner').innerHeight() +  $('#content').height()+ $('#footer').height()))
       );
    }
		
	function resizeFooter(){
			var windowHeight =  $(window).innerHeight();
			var existingHeight = $("#main-content").height();
			var pageHeight =  $('#banner').innerHeight()+ $('#footer').innerHeight()+ $("#main-content").height();
			$('#main-content').css('height',"");	
			$('#main-content').css('height',existingHeight);
		
			setTimeout(function(){
				if(pageHeight < windowHeight){ 
					
					var resizeContHeight = windowHeight - ( $('#banner').innerHeight()+ $('#footer').innerHeight());
					
					$('#main-content').css('height',"");
					 $('#main-content').css('height',resizeContHeight);
				}
			}, 500);
		}
	
	
	
	$(document).ready(function() {
		
			 /*location.reload();
		
            autoHeight();*/
			var pageHeight =  $('#banner').innerHeight()+ $('#footer').innerHeight()+ $("#main-content").height();
			var windowHeight =  $(window).innerHeight();
			if(pageHeight < windowHeight){ 
				var resizeContHeight = windowHeight - ( $('#banner').innerHeight()+ $('#footer').innerHeight());
				
				 $('#main-content').css('height',resizeContHeight);
			}
			
			$(".collapse-icon").click(function() {
				resizeFooter();
			});
			
			$(".signPanel .user-avatar-link").hover(
				function() {
					$(".datarecorddiv").show();
				}, function() {
					$(".datarecorddiv").hide();
			});
			$(".datarecorddiv").hover(
				function() {
					$(".datarecorddiv").show();
				}, function() {
					$(".datarecorddiv").hide();
			});
			
			
		  
		  
    });
	   
	   
	$(window).resize(function() {
          autoHeight();
    });

	   



