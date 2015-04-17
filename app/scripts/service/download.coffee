API_HOST = process.env.API_HOST
download =
  getList : ->
    list = {}
    $.ajax
      async:false
      type:'POST'
      url:API_HOST+"downloads/list"
      dataType:'json'
    .done((result)->
      list = result

     )
    list
module.exports = download
