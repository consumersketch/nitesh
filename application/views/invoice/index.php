
        	<label>Clients</label>
        	<select id="client" onChange="listsClientProduct(this.value)">
            	<option value="">Select Client</option>
            	<?php 
					foreach($clients as $key=>$value){
						echo '<option value="'.$value['client_id'].'">'.$value['client_name'].'</option>';
					}
				?>
            </select>

           	<label>Product</label>
        	<select id="product">
            	<option value="">Select Product</option>
            </select>
  
        	<select id="date_filter">
            	<option value="last_month">Last Month to Date</option>
            	<option value="current_month">This Month</option>
            	<option value="current_year">This Year</option>
            	<option value="last_year">Last Year</option>
            </select>

        	<input type="button" id="viewData" value="View Report" onClick="viewData()" />
<table border="1" width="100%">
    <tr>
        <th>Invoice Num</th>
        <th>Invoice Date</th>
        <th>Product</th>
        <th>Qty</th>
        <th>Price</th>
        <th>Total</th>
    </tr>
</table>
<?php
	//echo '<pre>';
	//print_r($invoice_det);
?>