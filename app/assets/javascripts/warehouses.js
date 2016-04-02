$(document).on("change", '#product_selection', function() {
  product_id = $("#product_selection").val()

  $.ajax({
    url:      "/products/" + product_id +'.json',
    type:     "GET",
    complete: function() {},
    success:  function(data) {
      console.log(data);
      // product = JSON.parse(data);
      // console.log(product);
      $('#default_price').val(data.price)
    },
    error: function(e) {
      console.log(e);
    }
  });
});
