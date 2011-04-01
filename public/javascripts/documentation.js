$(function() {

$(".documentation").each(function(index, element) {
  var method = $(".method", element).text()
    , link = $(".url", element)
    , url = link.attr("href")
    , response = $(".response", element)
    , data = $(".data .datum", element)
    , postData = {}

  data.each(function(index, datum) {
    var key = $(".key", datum).text()
      , val = $(".value", datum).text()
    postData[key] = val
  })


  link.click(function(event) {
    var options = {type: method, dataType: "text"}
    if(data.length !== 0) {
      options.data = postData
    }
    event.preventDefault()
    $.ajax(url, options) 
      .success(function(res) {
        response.text(res)
      })
  })
}) 

})
