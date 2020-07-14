$(function(){
    $('input[name="check[]"]').click(function(){
        let category =  "?category_id=" + $(this).val(); 
        location.href = category;
    })
});