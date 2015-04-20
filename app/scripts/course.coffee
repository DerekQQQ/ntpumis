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
   courseList = @props.CourseList.map (val,idx) ->
      <tr>
        <td>{val.title}<a target="_blank" href={val.link} className="button icon alt pull-right fa-download small">下載</a></td>
      </tr>
   commonList = @props.CommonList.map (val,idx) ->
      <tr>
        <td>{val.title}<a target="_blank" href={val.link} className="button icon alt pull-right fa-download small">下載</a></td>
      </tr>
   <section id="two" className="wrapper style2 align-center">
     <div className="container">
        <header>
          <h2>課程資訊</h2>
          <p>Courses</p>
        </header>
        <div className="row">
          <section className="feature 12u 12u$">
          <TabbedArea animation={false}>
            <TabPane eventKey={1} tab="課程資訊">
              <table className="alt list">
                <tbody>
                  {courseList}
                </tbody>
              </table>
            </TabPane>
            <TabPane eventKey={2} tab="常用表單">
              <table className="alt list">
                <tbody>
                  {commonList}
                </tbody>
              </table>
            </TabPane>
          </TabbedArea>
          </section>
        </div>
      </div>
    </section>
Main = React.createClass
  displayName:'FORM'
  render:->
    <div>
      <Banner/>
      <Content CommonList={@props.DownloadList.domestic}
               CourseList={@props.DownloadList.course}  />
    </div>
module.exports = Main

