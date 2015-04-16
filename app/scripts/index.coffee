React = require 'react'
Router = require 'react-router'
Link = Router.Link
Banner = require './components/banner'
ReactBootstrap = require 'react-bootstrap'
Modal = ReactBootstrap.Modal
ModalTrigger = ReactBootstrap.ModalTrigger
#Accordion = ReactBootstrap.Accordion
#Panel = ReactBootstrap.Panel

PostDetail = React.createClass
  displayName: 'PostDetail'
  componentDidMount:->
    console.log 'componentDidMount'
    $(@getDOMNode()).hide().slideDown()
  componentWillUpdate:->
    console.log 'componentWillUpdate'
    $(@getDOMNode()).slideUp()
  componentDidUpdate:->
    console.log 'componentDidUpdate'
    $(@getDOMNode()).slideDown()
  clickHandler:->
    console.log $(@getDOMNode())
    @props.disableDetail()
  render: ->
    attachment = <a className="alt button icon fa-download small fit" target="_blank" href={@props.currentDetail.download_link}>附件</a> if not  _.isEmpty(@props.currentDetail.download_link)
    <div >
      <h4> 公告內容 <i className="fa fa-times pull-right ios_clickable"  onClick={@clickHandler}></i></h4>
      <blockquote className="list">
        <p>標題： {@props.currentDetail.title}</p>
        <p>日期： {if @props.currentDetail.start_time then @props.currentDetail.start_time else @props.currentDetail.created_at}</p>
        {'截止日期： '+@props.currentDetail.end_date if @props.currentDetail.end_date? }
        <pre>{@props.currentDetail.description} </pre>
      </blockquote>
      {attachment}

    </div>

Index = React.createClass
  displayName:'INDEX'
  getInitialState: ->
    showDetail:false
  detailHandler:(e)->
    detail = $(e.target).data().detail
    @setState
      'showDetail' : true
      'currentDetail':detail
  disableDetailHandler: ->
    @setState
      'showDetail': false
  render: ->
    switch @state.showDetail
      when true then postDetail = <PostDetail disableDetail={@disableDetailHandler} currentDetail={@state.currentDetail}/>
      when false then postDetail = null

    postsGeneral = $.map @props.InitialPosts.general,(val)=>
        <li><span className="label label-info"> {val.created_at}</span>  <a onClick={@detailHandler} data-detail={JSON.stringify(val)} >{val.title}</a> </li>

    postsConference = $.map @props.InitialPosts.conference,(val)=>
      <li><span className="label label-info"> {val.created_at}</span>  <a onClick={@detailHandler} data-detail={JSON.stringify(val)} >{val.title}</a> </li>
    events = $.map @props.EventList,(val,idx)=>
      <li><span className="label label-info"> {val.created_at.substr(0,10)}</span>  <a onClick={@detailHandler} data-detail={JSON.stringify(val)} >{val.title}</a> </li> if idx <= 2
    <div>
    <Banner bannerStyle='welcome'/>
    <section id="latestNews" className="wrapper style2 align-center">
      <div className="container">
        <header>
          <h2>最新消息</h2>
          <p>Latest News</p>
        </header>
        {postDetail}
        <div className="row modal-container">
          <section id="post_1" className="feature 4u 12u$(small)">
            <img className="image fit" src="images/pic01.jpg" alt="" />
            <h3 className="title">所上公告</h3>
             <ul className="alt list">
               {postsGeneral}
            </ul>
            <Link to="news"><button className="button alt small">了解更多</button></Link>
          </section>
          <section id="post_2" className="feature 4u 12u$(small)">
            <img className="image fit" src="images/pic02.jpg" alt="" />
            <h3 className="title">學術公告</h3>
            <ul className="alt list">
               {postsConference}
            </ul>
            <Link to="news"><button className="button alt small">了解更多</button></Link>
          </section>
          <section id="post_3" className="feature 4u$ 12u$(small)">
            <img className="image fit" src="images/pic03.jpg" alt="" />
            <h3 className="title">所上活動 ＆ 專題演講 </h3>
             <ul className="alt list">
               {events}
            </ul>
            <Link to="news"><button className="button alt small">了解更多</button></Link>
          </section>
        </div>
      </div>
    </section>
    </div>
module.exports = Index

