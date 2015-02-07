# @jsx React.DOM
React = require 'react'
Navbar = require './components/navbar'
Banner = require './components/banner'
Footer = require './components/footer'

Content = React.createClass
  displayName:'Content'
  render: ->
    <div>
    <section id="one" className="wrapper style1 align-center">
      <div className="container">
        <header>
          <h2>Consectetur adipisicing elit</h2>
          <p>Lorem ipsum dolor sit amet adipisicing elit. Delectus consequatur sed tempus.</p>
        </header>
        <div className="row 200%">
          <section className="4u 12u$(small)">
            <i className="icon big rounded fa-clock-o"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim quam consectetur quibusdam magni minus aut modi aliquid.</p>
          </section>
          <section className="4u 12u$(small)">
            <i className="icon big rounded fa-comments"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium ullam consequatur repellat debitis maxime molestiae.</p>
          </section>
          <section className="4u$ 12u$(small)">
            <i className="icon big rounded fa-user"></i>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque eaque eveniet, nesciunt molestias. Ipsam, voluptate vero.</p>
          </section>
        </div>
      </div>
    </section>
    <section id="two" className="wrapper style2 align-center">
      <div className="container">
        <header>
          <h2>Lorem ipsum dolor sit</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio, autem.</p>
        </header>
        <div className="row">
          <section className="feature 6u 12u$(small)">
            <img className="image fit" src="images/pic01.jpg" alt="" />
            <h3 className="title">Lorem ipsum dolor</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore ipsa voluptate, quae quibusdam. Doloremque similique, reiciendis sit quibusdam aperiam? Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
          </section>
          <section className="feature 6u$ 12u$(small)">
            <img className="image fit" src="images/pic02.jpg" alt="" />
            <h3 className="title">Esse, fugiat, in</h3>
            <p>Natus perspiciatis fugit illum porro iusto fuga nam voluptas minima voluptates deserunt, veniam reiciendis harum repellat necessitatibus. Animi, adipisci qui. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
          </section>
          <section className="feature 6u 12u$(small)">
            <img className="image fit" src="images/pic03.jpg" alt="" />
            <h3 className="title">Voluptates, repudiandae, dolor</h3>
            <p>Voluptatibus repellendus tempora, quia! Consequuntur atque, rerum quis, ullam labore officiis ipsa beatae dolore, assumenda eos harum repudiandae, qui ab! Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
          </section>
          <section className="feature 6u$ 12u$(small)">
            <img className="image fit" src="images/pic04.jpg" alt="" />
            <h3 className="title">Eveniet, reiciendis, veniam</h3>
            <p>Rem nulla molestiae inventore quibusdam repudiandae doloremque eveniet ullam, qui autem possimus saepe laudantium numquam sapiente vel. Repudiandae, nihil tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
          </section>
        </div>
        <footer>
          <ul className="actions">
            <li>
              <a href="#" className="button alt big">Learn More</a>
            </li>
          </ul>
        </footer>
      </div>
    </section>
    </div>
Main = React.createClass
  displayName:'Index'
  render: ->
    <div>
      <Navbar />
      <Banner />
      <Content />
      <Footer />
    </div>
module.exports = React.render(Main(), document.querySelector('#app'))

