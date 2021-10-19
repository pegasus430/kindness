    $(document).ready(function(){
    
    $('.facility-nav li').hover(function(){
        var tab_id = $(this).attr('data-tab');

        $('.facility-nav li').removeClass('current');
        $('.tab-content').removeClass('current');

        $(this).addClass('current');
        $("#"+tab_id).addClass('current');
       })

    })
;
