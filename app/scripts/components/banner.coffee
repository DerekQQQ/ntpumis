React = require 'react'
Banner = React.createClass
  displayName: 'Banner'
  render : ->
    <section id="banner">
      <h2>國立台北大學資訊管理研究所</h2>
      <p>Graduate Institute of Information Management, NTPU</p>
      <ul className="actions">
        <li>
          <a href="#" className="button big">加入我們</a>
        </li>
      </ul>
    </section>

module.exports = Banner
