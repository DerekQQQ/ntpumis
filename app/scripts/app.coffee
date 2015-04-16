# @jsx React.DOM
React = require 'react'
Router = require 'react-router'
DefaultRoute = Router.DefaultRoute
Link = Router.Link
Route = Router.Route
RouteHandler = Router.RouteHandler
NotFoundRoute = Router.NotFoundRoute
Navbar = require './components/navbar'
Footer = require './components/footer'
News = require './news'
Index = require './index'
Introduction = require './introduction'
Admission = require './admission'
Examination = require './examination'
NotFound = require './components/404'

# require api services
Teacher = require './service/teacher'
Post = require './service/post'
Event = require './service/event'
Download = require './service/download'

Main = React.createClass
  displayName:'Main'
  getInitialState:->
    TEACHER_LIST:Teacher.getList()
    INITIAL_POST:Post.getList()
    EVENT_LIST:Event.getList()
    DOWNLOAD_LIST:Download.getList()
  render:->
    <div>
      <Navbar />
      <RouteHandler TeacherList={@state.TEACHER_LIST}
                    PostList={@state.INITIAL_POST.posts_dataset}
                    InitialPosts={@state.INITIAL_POST.initial_posts}
                    DownloadList={@state.DOWNLOAD_LIST}
                    EventList={@state.EVENT_LIST}/>
      <Footer />
    </div>
routes =
  <Route name="index" path="/" handler={Main}>
    <Route name="news" handler={News}/>
    <Route name="introduction" handler={Introduction}/>
    <Route name="admission" handler={Admission}/>
    <Route name="examination" handler={Examination}/>
    <DefaultRoute handler={Index}/>
    <NotFoundRoute handler={NotFound}/>
  </Route>
module.exports =
  Router.run routes,(Handler)->
    React.render <Handler />, document.querySelector '#app'
