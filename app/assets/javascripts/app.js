$(function() {
    $('#predictor').hide();
    $("#start-prediction").click(function() {
        $(".intro-text").hide();
        $('#predictor').fadeIn("slow");
    });
});