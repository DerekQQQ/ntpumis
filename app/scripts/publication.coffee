# @jsx react.dom
React = require 'react/addons'
Navbar = require './components/navbar'
Banner = require './components/banner'
Footer = require './components/footer'
ReactBootstrap = require('react-bootstrap')
TabbedArea = ReactBootstrap.TabbedArea
TabPane = ReactBootstrap.TabPane

TableContent = React.createClass
  displayName:'TableContent'
  render:->
    tableData = {}
    tableHeader = {}
    if @props.displayContent is 'publications'
      tableHeader =
        <td>研討會名稱</td>

      tableData = @props.tableData.map((val,idx)->
        <tr key={idx}>
          <td>{idx+1}</td>
          <td>{val.name}</td>
          <td>{val.student_id}</td>
          <td>{val.teacher_name}</td>
          <td>{val.conference}</td>
        </tr>
      )
    else
      tableData = @props.tableData.map((val,idx)->
        <tr key={idx}>
          <td>{idx+1}</td>
          <td>{val.name}</td>
          <td>{val.student_id}</td>
          <td>{val.teacher_name}</td>
        </tr>
      )

    <table className="alt list small-text">
      <thead>
        <td>編號</td>
        <td>論文名稱</td>
        <td>學生名稱</td>
        <td>老師名稱</td>
        {tableHeader}
      </thead>
      <tbody>
        {tableData}
      </tbody>
    </table>
selectMenu = React.createClass
  displayName:'selectMenu'
  eventHandler:(e)->
    @props.switchOptions $(e.target).find('option:selected').val()

  render:->
    yearArr =@props.yearArr
    options = yearArr.map((val,idx)=>
      <option key={idx} value={val} >{val} 學年</option>
      )

    <div className="select-wrapper">
      <select onChange={@eventHandler}>
        {options}
      </select>
    </div>


These = React.createClass
  displayName:'These'
  getInitialState:->
    'yearArr': _.pluck(@props.theseList,"year")
    'initialYear':_.pluck(@props.theseList,"year")[0]
  displayHandler:(year)->
    @setState
       currentYear: parseInt(year)
  render :->
    year =  if @state.currentYear then @state.currentYear else @state.initialYear
    dataSet = _.first(_.where(@props.theseList,{'year':year})).dataSet

    <div id="theses">
        <selectMenu yearArr={@state.yearArr} switchOptions={@displayHandler}/>
        <TableContent tableData={dataSet} displayContent="thesis"/>

    </div>
Publication = React.createClass
  displayName:'Publication'
  getInitialState:->
    'yearArr': _.pluck(@props.publicationList,"year")
    'initialYear':_.pluck(@props.publicationList,"year")[0]
  displayHandler:(year)->
    @setState
       currentYear: parseInt(year)

  render :->
    year =  if @state.currentYear then @state.currentYear else @state.initialYear
    dataSet = if _.first(_.where(@props.publicationList,{'year':year})) then _.first(_.where(@props.publicationList,{'year':year})).dataSet
    if dataSet
      <div id="publications">

          <selectMenu yearArr={@state.yearArr} switchOptions={@displayHandler}/>
          <TableContent tableData={dataSet} displayContent="publications"/>

      </div>
    else
      <div>
        <h1>Data is not ready yet</h1>
      </div>

Content = React.createClass
  displayName:'PublicationContent'
  getInitialState: ->
    displayItem:'publications'
  displayHandler:(target)->
    @setState
      'displayItem':target
  render:->
   <section id="two" className="wrapper style2 align-center">
     <div className="container">
        <header>
          <h2>學術研究</h2>
          <p>Publications</p>
        </header>
        <div className="row">
          <section className="feature 12u 12u$(small)">
            <h3>學術發表</h3>
            <Publication publicationList={@props.PublicationList}/>
          </section>
          <section className="feature 12u 12u$(small)">
            <h3>歷屆論文</h3>
            <These theseList={@props.ThesisList}/>
          </section>
        </div>
      </div>
    </section>
Main = React.createClass
  displayName:'PUBLICATION'
  render:->
    <div>
      <Banner/>
      <Content PublicationList={@props.PublicationList}
               ThesisList = {@props.ThesisList}/>
    </div>
module.exports = Main
