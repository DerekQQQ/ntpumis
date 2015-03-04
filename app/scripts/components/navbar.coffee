React = require 'react'
Router = require 'react-router'
Link = Router.Link
Navbar = React.createClass
  displayName: 'Navbar'
  eventHandler:(e)->
    $target = $(e.target)
    @props.switchPage $target.data().page
  render : ->
    host =  'http://ntpumis-files2015.ddns.net/'
    <header id="header">
      <h1><a href="index.html">NTPU MIS</a></h1>
      <nav id="nav">
        <ul>
          <li><Link to="index">首頁</Link></li>
          <li><Link to="news">最新消息</Link></li>
          <li><a href="#">本所簡介</a></li>
          <li><a href="#">學術研究</a></li>
          <li><a href="#">招生資訊</a></li>
          <li><a>資管所通訊</a>
            <ul>
              <li><a target="_blank" href={host+'newspaper/2015_01.pdf'}>2015-01</a></li>
              <li><a target="_blank" href={host+'newspaper/2013_01.htm'}>2013-01</a></li>
              <li><a target="_blank" href={host+'newspaper/2012_05.htm'}>2012-05</a></li>
              <li><a target="_blank" href={host+'newspaper/2012_04.htm'}>2012-04</a></li>
            </ul>
          </li>
        </ul>
      </nav>
    </header>

module.exports = Navbar
