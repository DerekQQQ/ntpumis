# @jsx react.dom
React = require 'react/addons'
Navbar = require './components/navbar'
Banner = require './components/banner'
Footer = require './components/footer'
ReactBootstrap = require('react-bootstrap')
TabbedArea = ReactBootstrap.TabbedArea
TabPane = ReactBootstrap.TabPane
Content = React.createClass
  displayName:'FormContent'
  render:->
   newspaperList = @props.NewspaperList.map (val,idx) ->
      <tr>
        <td>{val.title}<a target="_blank" href={val.link} className="button icon alt pull-right fa-download small">下載</a></td>
      </tr>
   newspaperList.reverse()
   <section id="two" className="wrapper style2 align-center">
     <div className="container">
        <header>
          <h2>常用表單</h2>
          <p>Forms</p>
        </header>
        <div className="row">
          <section className="feature 12u 12u$">
            <table className="alt list">
              <tbody>
                {newspaperList}
              </tbody>
            </table>
          </section>
        </div>
      </div>
    </section>
Main = React.createClass
  displayName:'FORM'
  render:->
    <div>
      <Banner/>
      <Content NewspaperList={@props.DownloadList.domestic}/>
    </div>
module.exports = Main

