	
	</div>

</body>
</html>

<script type="text/javascript">

	// This function lists all the product of client
	function listsClientProduct(){	
		var clientId = $('#client').val();
		$.ajax({
			type:'POST',
			url:'<?php echo site_url('invoice/loadProduct'); ?>',
			data:{clientId:clientId},
			dataType: 'json',
			success: function(data){
				if(data.length > 0){ // ensures that data having a product
					$('#product').html(''); // will clear product dropdown each time client is selected from the clients dropdown
					$('#product').append('<option value="">Select Product</option>');
					$.each(data,function(key,value){
						$('#product').append('<option value="'+value.product_id+'">'+value.product_description+'</option>');
					});
				}
			}			
		});	
	}
	
	// Javascript function to filter data using an ajax call
	// This function will pass the value of dropdown and filter the database table
	function viewData(){
		var productId = $('#product').val();
		var clientId = $('#client').val();
		var date_filter = $('#date_filter').val();
		//if(productId != ''){ // checking whether product is selected from the list
			$.ajax({
				type:'POST',
				url:'<?php echo site_url('invoice/loadData'); ?>',
				data:{clientId:clientId,productId:productId,date_filter:date_filter},
				dataType: 'json',
				success: function(data){
					var str = '<tr><th>Invoice Num</th><th>Invoice Date</th><th>Product</th><th>Qty</th><th>Price</th><th>Total</th></tr>';
					if(data.length > 0){
						$.each(data,function(key,value){
							str += '<tr><td>'+value.invoice_num+'</td><td>'+value.invoice_date+'</td><td>'+value.product_description+'</td><td>'+value.qty+'</td><td>'+value.price+'</td><td>'+ (parseFloat(value.qty) * parseFloat(value.price))+'</td></tr>';
						});
						$('table').html(str);
					}
				}			
			});
		//}	
	}
	
</script>