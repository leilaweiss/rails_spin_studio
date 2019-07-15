$(function() {
  const $info = $(".spin_class")
  $info.on("click", function(e){
    e.preventDefault()
    $.getJSON(this.href).done(function(response){
      const $list = $("div.spin_class")
      const instructor = new Instructor(response.instructor)

      $list.html("")
      $list.append(instructor.instructorEl())
    })
  })
})
