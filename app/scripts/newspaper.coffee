# @jsx react.dom
React = require 'react/addons'
Navbar = require './components/navbar'
Banner = require './components/banner'
Footer = require './components/footer'
ReactBootstrap = require('react-bootstrap')
TabbedArea = ReactBootstrap.TabbedArea
TabPane = ReactBootstrap.TabPane
Content = React.createClass
  displayName:'NewspaperContent'
  render:->
   newspaperList = @props.NewspaperList.map (val,idx) ->
      <tr className="scrollable-table">
        <td>{val.title}<a target="_blank" href={val.link} className="button icon alt pull-right fa-download small">下載</a></td>
      </tr>
   <section id="two" className="wrapper style2 align-center">
     <div className="container">
        <header>
          <h2>資管所通訊</h2>
          <p>Newspaper</p>
        </header>
        <div className="row">
          <section className="feature 12u 12u$(small)">
            <table className="alt list scrollable-table">
              <tbody className="scrollable-table">
                {newspaperList}
              </tbody>
            </table>
          </section>
        </div>
      </div>
    </section>
Main = React.createClass
  displayName:'NEWSPAPER'
  render:->
    <div>
      <Banner/>
      <Content NewspaperList={@props.DownloadList.newspaper}/>
    </div>
module.exports = Main

