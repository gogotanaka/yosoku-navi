$(function(){
    $("#mail").focus(function() {
        if($(this).val() == $(this).attr('defaultValue'))
            $(this).val('');
    }).blur(function() {
        if(jQuery.trim($(this).val()) == "") {
            $(this).val($(this).attr('defaultValue'));
        }
    });
});
