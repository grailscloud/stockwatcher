function setJQActions() {
	
	 $('#actionTable button.edit').on('click', function() {
	        $('#editModal').modal({
	            show: true
	        });
	        var val1 = $(this).closest('tr').children('td').eq(0).children('a'),	        
	            val2 = $(this).closest('tr').children('td').eq(1),
	            val3 = $(this).closest('tr').children('td').eq(2),
	            val4 = $(this).closest('tr').children('td').eq(0).children('input').attr('value');
	        
	        $('#editModal #name').val(val1.html());
	        $('#editModal #editedBankId').val(val4);
	        $('#editModal #revenue').val(val2.html());
	        $('#editModal #branches').val(val3.html());
	 });
	 
	 $('#addEntity').on('click', function() {
		 $('#editModal').modal({
	            show: true
	        });
		 $('#editModal #name').val("");
         $('#editModal #revenue').val("");
         $('#editModal #branches').val("");
         $('#editModal #editedBankId').val("-1");
     });
}
