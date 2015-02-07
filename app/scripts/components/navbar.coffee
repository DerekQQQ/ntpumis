React = require 'react'
Navbar = React.createClass
  displayName: 'Navbar'
  render : ->
    <header id="header">
      <h1><a href="index.html">NTPU MIS</a></h1>
      <nav id="nav">
        <ul>
          <li><a href="index.html">最新消息</a></li>
          <li><a href="#">本所簡介</a></li>
          <li><a href="#">學術研究</a></li>
          <li><a href="#">招生資訊</a></li>
          <li><a href="#">資管所通訊</a></li>
        </ul>
      </nav>
    </header>

module.exports = Navbar
