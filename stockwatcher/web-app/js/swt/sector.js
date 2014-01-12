function setJQActions() {
	
	 
	 
	 $('#actionTable button.edit').on('click', function() {
	        $('#editModal').modal({
	            show: true
	        });
	        var val1 = $(this).closest('tr').children('td').eq(0).children('a'),	        
	        	val2 = $(this).closest('tr').children('td').eq(0).children('input').attr('value'),
	            val3 = $(this).closest('tr').children('td').eq(1);
	        
	        $('#editModal #category').val(val1.html());
	        $('#editModal #editedSectorId').val(val2);
	        $('#editModal #industryPe').val(val3.html());
	 });
	 
	 $('#addEntity').on('click', function() {
		 
		 $('#editModal').modal({
	            show: true
	        });
		 $('#editModal #category').val("");
		 $('#editModal #editedSectorId').val("-1");
		 $('#editModal #industryPe').val("");         
     });
}
