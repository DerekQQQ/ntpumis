# @jsx react.dom
React = require 'react/addons'
Navbar = require './components/navbar'
Banner = require './components/banner'
Footer = require './components/footer'
ReactBootstrap = require('react-bootstrap')
TabbedArea = ReactBootstrap.TabbedArea
TabPane = ReactBootstrap.TabPane
Jumbotron = ReactBootstrap.Jumbotron
Button = ReactBootstrap.Button
Table = React.createClass
  displayName:'ContentTable'
  render:->
    tableContent =@props.dataset.map (val,idx) ->
      <tr>
        <td>{val.title}<a target="_blank" href={val.link} className="button icon alt pull-right fa-download small">下載</a></td>
      </tr>
    tableContent.reverse()
    <div>
      <div className="list">
         <table className="alt">
           {tableContent}
         </table>
      </div>
    </div>
Content = React.createClass
  displayName:'AdmissionContent'
  render:->
   <section id="two" className="wrapper style2 align-center">
     <div className="container">
        <header>
          <h2>招生資訊</h2>
          <p>Admission</p>
        </header>
        <div className="row">
          <section className="feature 5u 12u$(small)">
            <Jumbotron>

              <h2 className="white">招生資訊系統</h2>
              <a className="button fit" target="_blank" href="http://exam.ntpu.edu.tw/">加入我們</a>
            </Jumbotron>
          </section>
          <section className="feature 7u 12u$(small)">
          <TabbedArea animation={false}>
            <TabPane eventKey={1} tab="招生簡章">
              <Table dataset={@props.AdmissionList} />
            </TabPane>
            <TabPane eventKey={2} tab="歷屆考題">
              <Table dataset={@props.ExaminationList}/>
            </TabPane>
          </TabbedArea>
          </section>
        </div>
      </div>
    </section>
Main = React.createClass
  displayName:'ADMISSION'
  render:->
    <div>
      <Banner/>
      <Content AdmissionList={@props.DownloadList.enrollment}
               ExaminationList={@props.DownloadList.examination}/>
    </div>
module.exports = Main
