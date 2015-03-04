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
  clickHandler:->
    $(@getDOMNode()).slideUp()
    @props.disableDetail()
  render: ->
    <div >
      <h4> 公告內容 <i className="fa fa-times pull-right"  onClick={@clickHandler}></i></h4>
      <blockquote className="list">{@props.currentDetail.title}</blockquote>


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
            <h3 className="title">所上公告 ＆ 其他公告</h3>
             <ul className="alt list">
              <li><span className="label label-info"> 2015-02-02</span>  <a onClick={@detailHandler} data-detail={JSON.stringify({id:1,title:'title1'})}>Dolor pulvinar etiam magna etiam. </a> </li>
              <li><span className="label label-info"> 2015-02-02</span>  <a onClick={@detailHandler} data-detail={JSON.stringify({id:2,title:'title2'})}>Dolor pulvinar etiam magna etiam. </a> </li>
              <li><span className="label label-info"> 2015-02-02</span>  <a onClick={@detailHandler} data-detail={JSON.stringify({id:3,title:'title3'})}>Dolor pulvinar etiam magna etiam. </a> </li>
            </ul>
            <Link to="news"><button className="button alt small">了解更多</button></Link>
          </section>
          <section id="post_2" className="feature 4u 12u$(small)">
            <img className="image fit" src="images/pic02.jpg" alt="" />
            <h3 className="title">學術公告</h3>
            <ul className="alt list">
              <li><span className="label label-info"> 2015-02-02</span>  <a onClick={@detailHandler} data-detail={JSON.stringify({id:1,title:'title1'})}>Dolor pulvinar etiam magna etiam. </a> </li>
              <li><span className="label label-info"> 2015-02-02</span>  <a onClick={@detailHandler} data-detail={JSON.stringify({id:2,title:'title2'})}>Dolor pulvinar etiam magna etiam. </a> </li>
              <li><span className="label label-info"> 2015-02-02</span>  <a onClick={@detailHandler} data-detail={JSON.stringify({id:3,title:'title3'})}>Dolor pulvinar etiam magna etiam. </a> </li>
            </ul>
            <Link to="news"><button className="button alt small">了解更多</button></Link>
          </section>
          <section id="post_3" className="feature 4u$ 12u$(small)">
            <img className="image fit" src="images/pic03.jpg" alt="" />
            <h3 className="title">所上活動 ＆ 專題演講 </h3>
            <div className="list" >
               <p><i className="fa fa-thumb-tack"></i> TBI2014 臺灣商管與資訊研討會</p>
               <p><i className="fa fa-thumb-tack"></i> 恭禧汪志堅老師、陳宗天老師、溫演老師及何政勳老師獲得獲得103年度學術研究獎助</p>
               <p><i className="fa fa-thumb-tack"></i> 本所一貫修讀學、碩士學位辦法</p>
            </div>
            <Link to="news"><button className="button alt small">了解更多</button></Link>
          </section>
        </div>
      </div>
    </section>
    </div>
module.exports = Index
