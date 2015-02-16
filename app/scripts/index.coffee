# @jsx React.DOM
React = require 'react'
Navbar = require './components/navbar'
Footer = require './components/footer'
Calendar = require './components/calendar.coffee'
PAGE_News = require './news.coffee'
ReactBootstrap = require 'react-bootstrap'
Index = require './index1'
Main = React.createClass
  displayName:'Main'
  getInitialState:->
    'CURRENT_PAGE':'NEWS'
  switchPageHandler:(page)->
    @setState
      'CURRENT_PAGE':page
  render: ->
   switch @state.CURRENT_PAGE
     when 'INDEX'then renderPage = <Index />
     when 'NEWS' then renderPage = <PAGE_News />



    <div>
      <Navbar switchPage={this.switchPageHandler}/>
      {renderPage}
      <Footer />
    </div>
module.exports = React.render(<Main />, document.querySelector('#app'))

