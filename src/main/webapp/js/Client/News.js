 $(function () {
	 
	 var year=$("#display_yeay").data("option");
	 $("#jumpMenu option[data-year='"+year+"']").prop('selected', true);
	 $("#jumpMenu").change(function(){
		 var val=$(this).val();
		 if(val==undefined){
			 return;
		 }
		 if(val==0){
			 return;
		 }
		 var url=val;
	
				location.href=url;
	
	 });
 });