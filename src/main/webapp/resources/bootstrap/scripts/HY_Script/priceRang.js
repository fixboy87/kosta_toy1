
var _ = jQuery;

_( function() {
    _( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 28,
      values: [ 0, 0 ],
      slide: function( event, ui ) {
        _( "#amount" ).val( "" + ui.values[ 0 ] + "만원" + " - " + ui.values[ 1 ] + "만원" );
       var amount_price =ui.values[0];
       var amount_price2 =ui.values[1];
        _('#low_price').val(amount_price)
        _('#max_price').val(amount_price2);
        
      }
    });
    _( "#amount" ).val(  _( "#slider-range" ).slider( "values", 0 ) +
       _( "#slider-range" ).slider( "values", 1 ) );
  } );
 

 

var check = false;
	_(document).ready(function() {
		_('#price_range').hide();
		_("#max_price,#low_price").on("click", function() {
			if (check == false) {
				_('#price_range').hide();
				check = true;
			} else {
				_('#price_range').show();
				check = false;

			}
		});
	});

