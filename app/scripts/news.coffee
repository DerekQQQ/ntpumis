# @jsx react.dom
React = require 'react'
Navbar = require './components/navbar'
Banner = require './components/banner'
Footer = require './components/footer'
Calendar = require './components/calendar.coffee'
ReactBootstrap = require('react-bootstrap')
PanelGroup = ReactBootstrap.PanelGroup
Panel = ReactBootstrap.Panel
TabbedArea = ReactBootstrap.TabbedArea
TabPane = ReactBootstrap.TabPane
Label = ReactBootstrap.Label


Event = React.createClass
  displayName:'Event'
  render :->
    <section id="event" className="wrapper style2 align-center">
      <div className="container">
        <header>
          <h2>所上活動 ＆ 專題演講</h2>
          <p>Events & Lectures</p>
        </header>
        <div className="row">
          <section className="feature 8 12u$(small)">
            <Calendar EventList={@props.EventList}/>
          </section>
        </div>
      </div>
    </section>

Thread = React.createClass
  displayName:'Thread'
  clickHandler:(e)->
    $target = $(e.target)
    @props.setDetail($target.data().listDetail)
  render:->
    listData = @props.listData.map (val,idx)=>
       <tr className="ios_clickable" data-list-detail={JSON.stringify(val)} onClick={this.clickHandler}><td>{val.created_at.substr(5)}</td><td data-list-detail={JSON.stringify(val)} onClick={this.clickHandler}>{val.title}</td></tr>

    <div>
      <div className="list">
         <table className="alt">
         {listData}
         </table>
      </div>
    </div>

Detail = React.createClass
  displayName:'Detail'
  render:->
    attachment = <a className="pull-right" target="_blank" href={@props.listDetail.download_link}><i className="fa fa-download"> 附件下載</i></a> if not  _.isEmpty(@props.listDetail.download_link)

    <section id="detail" className="feature 5u 12u$(small)">
      <h3 className="title">公告內容</h3>
      <div className="list">
      <h4>{@props.listDetail.title}</h4>
      <p>{@props.listDetail.created_at}</p>
      <pre>{@props.listDetail.description_text}</pre>
      {attachment}
      </div>
    </section>
List = React.createClass
  displayName:'List'
  getInitialState: ->
      'listData':@props.PostList.general[0]
  setListHandler:(theList)->
    @setState
      'listData':theList
  render : ->

     <section id="two" className="wrapper style2 align-center">
      <div className="container">
        <header>
          <h2>最新消息</h2>
          <p>Latest News</p>
        </header>
        <div className="row">

          <section className="feature 7u 12u$(small)">
          <TabbedArea animation={false}>
            <TabPane eventKey={1} tab="所務公告">
                <Thread listData={@props.PostList.general}
                        setDetail={this.setListHandler}
                        title="所務公告"/>
            </TabPane>
            <TabPane eventKey={2} tab="學術公告">
                <Thread listData={@props.PostList.conference}
                        setDetail={this.setListHandler}
                        title="學術公告"/>
            </TabPane>
            <TabPane eventKey={3} tab="所友會公告">
                <Thread listData={@props.PostList.alumni}
                        setDetail={this.setListHandler}
                        title="所友會公告"/>
            </TabPane>
          </TabbedArea>
          </section>

          <Detail listDetail={@state.listData} />
        </div>
      </div>
    </section>

Content = React.createClass
  displayName:'Content'

  render: ->
    <div>
    <List PostList={@props.PostList}/>
    <Event EventList={@props.EventList}/>
    </div>



Main = React.createClass
  displayName:'NEWS'
  render:->
    <div>
      <Banner/>
      <Content PostList={@props.PostList} EventList={@props.EventList}/>
    </div>
#module.exports = React.render(Main(), document.querySelector('#app'))
module.exports = Main
