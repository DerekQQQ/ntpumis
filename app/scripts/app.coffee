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
NotFound = require './components/404'

Teacher = require './service/teacher'

Main = React.createClass
  displayName:'Main'
  getInitialState:->
    TEACHER_LIST:Teacher.getList()
  render:->
    console.log 'Main Render'
    <div>
      <Navbar />
      <RouteHandler TeacherList={@state.TEACHER_LIST}/>
      <Footer />
    </div>
routes =
  <Route name="index" path="/" handler={Main}>
    <Route name="news" handler={News}/>
    <DefaultRoute handler={Index}/>
    <NotFoundRoute handler={NotFound}/>
  </Route>
module.exports =
  Router.run routes,(Handler)->
    React.render <Handler />, document.querySelector '#app'