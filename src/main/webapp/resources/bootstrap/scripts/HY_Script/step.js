
$(document).ready(function() {
  $('#img_Input').hide();
  $("#checkbox").on("click", function() {
    
    $("#check_Bt").removeAttr('disabled');
    $("#agree").hide();
    $("#agree").attr("id", "0");
   
    
     $("#checkDiv").css("visibility", "hidden");
     $('#img_Input').show();
    

  });
});










/*$(document).ready(function() {
  $("#cash_Bt").on("mouseover", function() {
    $(location).attr('href', '/pay/cashCheck');
  });
});*/

$(document).ready(function() {

  $("#agree").on("click", function() {

    $('#step_2_Bt').css("visibility", "visible");

  });
});

$(document)
    .ready(
        function() {

          var navListItems = $('div.setup-panel div a'), allWells = $('.setup-content'), allNextBtn = $('.nextBtn');

          allWells.hide();

          navListItems.click(function(e) {
            e.preventDefault();
            var $target = $($(this).attr('href')), $item = $(this);

            if (!$item.hasClass('disabled')) {
              navListItems.removeClass('btn-primary').addClass('btn-default');
              $item.addClass('btn-primary');
              allWells.hide();
              $target.show();
              $target.find('input:eq(0)').focus();
            }
          });

          allNextBtn
              .click(function() {

               $('#agree').show();
                var curStep = $(this).closest(".setup-content"), curStepBtn = curStep
                    .attr("id"), nextStepWizard = $(
                    'div.setup-panel div a[href="#' + curStepBtn + '"]')
                    .parent().next().children("a"), curInputs = curStep
                    .find("input[type='text'],input[type='url']"), isValid = true;

                $(".form-group").removeClass("has-error");
                for (var i = 0; i < curInputs.length; i++) {
                  if (!curInputs[i].validity.valid) {
                    isValid = false;
                    $(curInputs[i]).closest(".form-group")
                        .addClass("has-error");
                  }
                }

                if (isValid)
                  nextStepWizard.removeAttr('disabled').trigger('click');
              });

          $('div.setup-panel div a.btn-primary').trigger('click');

        });
