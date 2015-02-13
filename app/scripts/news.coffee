# @jsx React.DOM
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
posts = [{"id":1,"title":"title1","description":"discription1"},{"id":2,"title":"title2","description":"discription2"},{"id":3,"title":"title3","description":"discription3"}]


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
            <Calendar />
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
       <li><i className="fa fa-thumb-tack"></i> {val.title} <button className="btn btn-sm btn-success pull-right" id={val.id} data-list-detail={JSON.stringify(val)} onClick={this.clickHandler}>查看</button></li>

    <div>
      <h3 className="title">{@props.title}</h3>
      <div className="list">
         <ul className="alt">
         {listData}
         </ul>
      </div>
    </div>

Detail = React.createClass
  displayName:'Detail'
  render:->
    <section id="detail" className="feature 5u 12u$(small)">
      <h3 className="title">公告內容</h3>
      <div className="list">
      <p><b>ID : </b>{@props.listDetail.id}</p>
      <p><b>TITLE : </b>{@props.listDetail.title}</p>
      <p><b>DESCRIPTION : </b>{@props.listDetail.description}</p>
      </div>
    </section>
List = React.createClass
  displayName:'List'
  getInitialState: ->
      'listData':posts[0]
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
          <TabbedArea>
            <TabPane eventKey={1} tab="所務公告">
                <Thread listData={posts}
                        setDetail={this.setListHandler}
                        title="所務公告"/>
            </TabPane>
            <TabPane eventKey={2} tab="學術公告">
                <Thread listData={posts}
                        setDetail={this.setListHandler}
                        title="學術公告"/>
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
    <List />
    <Event />
    </div>



Main = React.createClass
  displayName:'NEWS'
  render:->
    <div>
      <Banner/>
      <Content />
    </div>
#module.exports = React.render(Main(), document.querySelector('#app'))
module.exports = Main
