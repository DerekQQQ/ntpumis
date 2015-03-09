API_HOST = 'http://ntpumis2015.ddns.net:8080/'
teacher =
  getList :(locale='zh-tw') ->
    list = {}
    data =
      "locale":locale
    $.ajax
      async:false
      type:'POST'
      url:API_HOST+"teacher/list"
      dataType:'json'
      data:JSON.stringify(data)
    .done((result)->
      list = result
      )
    list
module.exports = teacher
