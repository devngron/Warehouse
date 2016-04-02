$(document).on("change", '#product_selection', function() {  
    $.ajax({
       url: "/warehouses/get_price",
      type: "GET",
  dataType: "json",
      data: { product_id: document.getElementById("product_selection").value }, // This goes to Controller in params hash, i.e. params[:file_name] ||
  complete: function() {},
   success: function(data, textStatus, xhr) {
              // Do something with the response here
              document.getElementById("default_price").value = alert(data.default_price;
            },
     error: function() {
              alert("Ajax error!")
            }
  });
});
  