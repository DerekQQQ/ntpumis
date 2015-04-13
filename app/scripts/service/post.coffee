API_HOST = 'http://ntpumis2015.ddns.net/api/'
post =
  getList : ->
    list = {}
    $.ajax
      async:false
      type:'POST'
      url:API_HOST+"posts/list"
      dataType:'json'
    .done((result)->

      post_general = _.where(result,{'post_type':'general'})
      post_conference = _.where(result,{'post_type':'conference'})
      post_alumni = _.where(result,{'post_type':'alumni'})
      first_3_general=[]
      first_3_conference=[]
      first_3_alumni=[]

      i = 0
      while i < 3
        first_3_general.push post_general[i] if post_general[i]?
        first_3_conference.push post_conference[i] if post_conference[i]?
        first_3_alumni.push post_alumni[i] if post_alumni[i]?
        i++
      initial_posts = {
        'general':first_3_general
        'conference':first_3_conference
        'alumni':first_3_alumni
      }
      posts_dataset = {
         'general':post_general
        'conference':post_conference
        'alumni':post_alumni

      }
      list={
        'initial_posts':initial_posts
        'posts_dataset':posts_dataset
      }


     )
    list
module.exports = post
