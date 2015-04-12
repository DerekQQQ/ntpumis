API_HOST = 'http://ntpumis2015.ddns.net/api/'
event =
  getList : ->
    list = {}
    $.ajax
      async:false
      type:'POST'
      url:API_HOST+"events/list"
      dataType:'json'
    .done((result)->
      list = result
     )
    list
module.exports = event
