function setJQActions() {

	$('#actionTable button.edit').on('click', function() {
	        $('#editModal').modal({
	            show: true
	        });
	        var val1 = $(this).closest('tr').children('td').eq(0).children('a'),	   
	        	val2 = $(this).closest('tr').children('td').eq(0).children('input').attr('value');
	            val3 = $(this).closest('tr').children('td').eq(1),
	            val4 = $(this).closest('tr').children('td').eq(2),
	            val5 = $(this).closest('tr').children('td').eq(3),
	            val6 = $(this).closest('tr').children('td').eq(4),
	            val7 = $(this).closest('tr').children('td').eq(5),
	            val8 = $(this).closest('tr').children('td').eq(6),
	            val9 = $(this).closest('tr').children('td').eq(7),
	            val10 = $(this).closest('tr').children('td').eq(8),
	            val11 = $(this).closest('tr').children('td').eq(9),
	            val12 = $(this).closest('tr').children('td').eq(10);
	            
	        
	        $('#editModal #name').val(val1.html());
	        $('#editModal #editedCompanyId').val(val2);
	        $('#editModal #abbr').val(val3.html());
	        $('#editModal #mobile').val(val4.html());
	        $('#editModal #location').val(val5.html());
	        $('#editModal #marketCap').val(val6.html());
	        $('#editModal #pe').val(val7.html());
	        $('#editModal #eps').val(val8.html());
	        $('#editModal #pbv').val(val9.html());
	        $('#editModal #bookValue').val(val10.html());
	        $('#editModal #currentPrice').val(val11.html());
	        $('#editModal #sectorId').val(val12.html());	        
	        
	 });
	 
	 $('#addEntity').on('click', function() {
		 
		 	$('#editModal').modal({
	            show: true
	        });
			$('#editModal #name').val("");        
			$('#editModal #editedCompanyId').val("-1");
			$('#editModal #abbr').val("");
			$('#editModal #mobile').val("");
			$('#editModal #location').val("");
			$('#editModal #marketCap').val("");
			$('#editModal #pe').val("");
			$('#editModal #eps').val("");
			$('#editModal #pbv').val("");
			$('#editModal #bookValue').val("");
			$('#editModal #currentPrice').val("");
			$('#editModal #sectorId').val("");	
     });
}
