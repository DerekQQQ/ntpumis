API_HOST = process.env.API_HOST
thesis =

  getList :(thesisType='thesis') ->

    list = {}
    data =
      "thesis_type": thesisType
    $.ajax
      async:false
      # headers:
      #   'Accept': 'application/json'
      #   'Content-Type': 'application/json'
      type:'POST'
      url:API_HOST+"thesis/list"
      dataType:'json'
      data:JSON.stringify(data)
    .done((result)->
      list = result
      )
    list

  getListByYear :(type='publication')->
    list = @getList(type)
    yearArr = []
    list.map (val) ->
      yearArr.push val.year

    yearArr = _.uniq(yearArr).sort((a,b) -> b-a)

    objArrByYear = []
    $.map yearArr, (val, idx) ->
      tmpObj = {}
      dataSet = _.where(list,
        year: val
      )
      tmpObj =
        year: yearArr[idx]
        dataSet: dataSet

      objArrByYear.push tmpObj
    objArrByYear




module.exports = thesis
