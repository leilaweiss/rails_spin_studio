$(function(){
$('#new_spin_class').on("submit", function(e){
  e.preventDefault()

      $.ajax({
      type: "POST",
      url: this.action,

      data: $(this).serialize(),
      dataType: "JSON"
    }).done(function(response){
      debugger

    })

  })
})
