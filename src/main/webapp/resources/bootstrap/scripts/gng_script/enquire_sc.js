$(document).ready(function(){
    $("#hotelname").on("change", function(){
        console.log($(this).find("option[value='" + $(this).val() + "']").text());
    });
});
