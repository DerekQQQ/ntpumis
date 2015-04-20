React = require 'react/addons'
PureRenderMixin = require('react/addons').addons.PureRenderMixin
Router = require 'react-router'
Link = Router.Link
Navbar = React.createClass
  displayName: 'Navbar'
  mixins: [PureRenderMixin]
  componentDidMount:->
    $(@getDOMNode()).fixedsticky()
  eventHandler:(e)->
    $target = $(e.target)
    @props.switchPage $target.data().page
  render : ->
    host =  'http://ntpumis-files2015.ddns.net/'
    <header id="header" className="fixedsticky">
      <h1><a href="index.html">NTPU MIS</a></h1>
      <nav id="nav">
        <ul>
          <li><Link to="index">首頁</Link></li>
          <li><Link to="news">最新消息</Link></li>
          <li><Link to="introduction">本所簡介</Link></li>
          <li><Link to="course">課程資訊</Link></li>
          <li><Link to="admission">招生資訊</Link></li>
          <li><Link to="publication">學術研究</Link></li>
          <li><Link to="newspaper">資管所通訊</Link></li>
        </ul>
      </nav>
    </header>

module.exports = Navbar
