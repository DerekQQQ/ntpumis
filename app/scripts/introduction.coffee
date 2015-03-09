# @jsx React.DOM
React = require 'react'
Router = require 'react-router'
Route = Router.Route
Link = Router.Link
Banner = require './components/banner'
ReactBootstrap = require 'react-bootstrap'

TeachersList = React.createClass
	displayName:'TeachersList'
	render:->
		console.log @props.TeacherList
		teacherList = @props.TeacherList.map (val,idx)=>
		      <table className="left" ><tbody><tr><td rowSpan="4" width="81" className="mid"><img width="120" src={val.image_url} /></td><td width="199">{val.name}&nbsp{val.title}</td><td colSpan="2">辦公室：{val.office}	</td></tr><tr><td>E-mail：{val.email}</td><td width="176">電話：{val.tel}</td><td width="124">校內分機：{val.extension}</td></tr><tr><td colSpan="3">學歷：{val.degree}</td></tr><tr><td colSpan="3">專長領域：{val.domain}</td></tr></tbody></table>
		<div>
			{teacherList}
			<table className="left" ><tbody><tr><td width="199">江義平 教授</td><td colSpan="2">辦公室：法律學院8樓29室
					</td><td rowSpan="4" width="81" className="mid"><img src="images/pic09.jpg" alt="" /></td></tr><tr><td>知識暨視覺化系統研究</td><td width="176">電話：(02)8674-1111</td><td width="124">校內分機：67719</td></tr><tr><td colSpan="3">學歷：國立臺灣大學資管博士</td></tr><tr><td colSpan="3">專長領域：雲端運算、行動商務技術、RFID整合應用、無線通訊網路</td></tr></tbody></table>	
		</div>
About = React.createClass
	displayName:'About'
	render:->
		<section id="about" className="wrapper style2 align-center">
		<div>
			<header>
				<h2>關於本所</h2>
			</header>
			<h3>本所沿革與發展方向</h3>
			<blockquote>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp資訊管理研究所成立於民國90年8月，為臺北大學改制後首先成立的研究所，隸屬於本校商學院。本所為一獨立研究所，並未設置大學部，但仍充分整合商學院其它系所的資源，促使本所不論在教學、研究方面皆有良好的質量，也因此有極佳的內部組織管理機制及師生互動。本所為培育資訊社會與電子化企業所需專業與研究人才，發展方向著重在資訊系統管理與網路行銷二方面，以資訊科技為主軸，結合資訊系統開發與管理、資訊科學、網路市場調查及網路行為等領域相關知識，鼓勵學術研究與實務應用，期許學生日後成為資訊管理中堅人才。
			</blockquote>
			<h3>獎助學金</h3>
			<blockquote>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp本所提供各項獎助學金供本所研究生申請， 凡本所研究生皆可申請，項目有：<br/>
				1.一般助理：協助本所之工作。如：電腦、網站維護助理、行政助理、所辦值班助理等<br/>
				2.研究助理：協助本所專任教師研究計畫書撰寫與學術研究。<br/>
				3.研究獎勵：本所學生出席國際研討會發表著作或投稿國際期刊並刊登者，給予研究獎勵。
			</blockquote>
			<h3>學術活動</h3>
			<blockquote>
			1.資訊管理系列專題演講：每學期不定時邀請企業界及教育學者蒞臨演講，由演講者分享實務經驗，給予本所研究生新的啟發。<br/>
			2.電子商務期刊：由本所出版之「電子商務研究」季刊，在資管學界享有盛名，並獲本校出版品獎勵審查委員會評定為頭等獎。<br/>
			3.電子商務學術研討會：舉辦全國性的電子商務學術研討會，每年皆有來自國內百餘所大學學者參與盛會。<br/>
			4.學生論文發表：本所學生畢業前，均至少投稿一篇國內外研討會論文，歷屆同學表現均獲好評。
			</blockquote>
			<h3>招生考試</h3>
			<blockquote>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp本所每年招收碩士班學生共15名，入學方式分為二種：甄試及一般招生。甄試於每年十一、十二月間舉行，招收畢業兩年內者(含應屆畢業生)及學士學位且具有六年(含)以上全職工作經驗者；一般招生於每年三、四月間舉行，招收具學士學位之學生。			
			</blockquote>
			<div className="table-wrapper">
			<table className="alt">
				<tr>
					<td align="center">考試別</td><td colSpan="2"><div align="center">錄取人數</div></td><td>考試科目</td><td>百分比</td>
				</tr>
				<tr>
					<td rowSpan="2" className="mid">甄試</td><td rowSpan="2" colSpan="2" className="mid">7</td><td>資料審查</td><td>50%</td>
				</tr>
				<tr>
					<td>口試</td><td>50%</td>
				</tr>
				<tr>
					<td rowSpan="4" className="mid">一般招生</td><td rowSpan="2">甲</td><td rowSpan="4" className="mid">8(依選考該組人數佔總報考人數之比例分配)</td><td>計算機概論</td><td>50%</td>
				</tr>
				<tr>
					<td>選考(2選1)：<br/>1.管理資訊系統<br/>2. 資料結構</td><td>50%</td>
				</tr>
				<tr>
					<td rowSpan="2">乙</td><td>資料審查</td><td>50%</td>
				</tr>
				<tr>
					<td>口試</td><td>50%</td>
				</tr>
			</table>
			</div>
			<h3>生涯規劃與發展</h3>
			<blockquote>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp本所建立學生堅實的知識基礎，兼於軟體開發及管理應用，以培養學生資訊系統管理專業能力；因應現今網路產業的蓬勃發展，加強學生對實務環境的洞察與分析能力、研究能力，以培養學生網路行銷專業能力；積極建立重視研究的文化氛圍，鼓勵學生撰寫研討會與期刊論文，並以各種獎勵措施，鼓勵學生出席國際研討會，投稿優良學術期刊及參加各種學術論文競賽，以培養學生能夠具有充分的研究能力，得以繼續進修博士班或從事研究與產業分析相關工作。
			基於本所培養「資訊系統管理專業能力」、「網路行銷專業能力」、「研究能力」之教育目標，期許學生衡酌自身發展背景與個別需求差異，成為資訊系統管理專業人才、網路行銷專業人才及資管研究人才等三種人才。
			</blockquote>
			<h3>願景及未來展望</h3>
			<blockquote>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp本所以培養資管碩士人才為最主要重點，與大學和技術學院進行專業分工，讓有興趣資訊管理與應用之學生，不論是技術背景或管理背景之同學，皆有進一步進修之機會。基於政府發展台灣為綠色矽島所規劃之願景，及資訊管理與應用已成為e化企業的核心競爭能力，顯示資訊管理碩士是目前業界最迫切需要的人力資源；本所之發展即以落實本校商學院規劃目標-提升教學品質、追求卓越研究、加強產學合作，朝向成為全國最專業的資管所目標邁進。
			</blockquote>
		</div>
		</section>


Faculty = React.createClass
	displayName:'Faculty'
	render:->
		<section id="about" className="wrapper style2 align-center">
		<div>
			<header>
				<h2>師資與研究室</h2>
			</header>
			<blockquote>
			本所目前有專任教師6名，來自本校各系所與學術、企業界深具實務經驗的兼任教師10人，以及行政人員1名。
			</blockquote>
			<h3>專任教師</h3>
			<TeachersList TeacherList={@props.TeacherList} />
			<p><span className="image right"><img src="images/pic09.jpg" alt="" /></span>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent.</p>
		</div>
		</section>


Curriculum = React.createClass
	displayName:'Curriculum'
	render:->
		<section id="about" className="wrapper style2 align-center">
		<div>
			<header>
				<h2>課程規劃</h2>
			</header>
			<h3>一、基礎課程</h3>
			<blockquote>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp為增進本所碩士班研究生在資訊及商管領域之基礎知識，便於銜接及學習本所碩士班規劃之核心課程及未來選修課程，凡本所碩士班入學新生未曾於學士班時期修習該科目，或入學考試未達本所碩士班訂定之最低標準者，應先修習基礎課程，且該科目不計入畢業學分。(大學修過可抵修)
			</blockquote>
			<h3>二、必修課程</h3>
			<blockquote>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp本所碩士班之課程設計，為兼顧資訊及商管領域之整合，並強調培養本所學生之研究能力，故核心課程設計含括管理資訊系統、研究方法、企業倫理等，以建立堅實之知識基礎。
			</blockquote>
			<h3>三、實作課程</h3>
			<blockquote>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp各領域需從6門課中任選兩門修習，其中1門需為主領域之科目。
			<div className="table-wrapper">
			<table width="350" border="1">
		              <tbody><tr><th> <div align="center">資訊系統管理領域</div></th><th><div align="center">網路行銷領域</div></th></tr><tr><td><div align="center">雲端資源規劃實作</div></td><td><div align="center">社群行銷實作</div></td></tr><tr><td><div align="center">行動網系統實作</div></td><td><div align="center">數位創新實作</div></td></tr><tr><td><div align="center">資料分析實作</div></td><td><div align="center">產業觀察實作</div></td></tr></tbody></table></div>
			</blockquote>
			<h3>四、專業選修課程</h3>
			<blockquote>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp本所碩士班選修課程規劃，係參酌國內外各知名大學之資管課程規劃之，可分為以下兩大領域。
			<table width="350" border="1"><tbody><tr><th width="167" scope="col"> <div align="center">資訊系統管理領域</div></th><th width="167" scope="col"><div align="center">網路行銷領域</div></th></tr><tr><td><div align="center">系統與網路管理(主領域必選，與資訊系統開發二選一)</div></td><td><div align="center">網路行銷管理(主領域必選)</div></td></tr><tr><td><div align="center">資訊系統開發與管理專題(主領域必選，與系統與網路管理二選一)</div></td><td><div align="center">電子商務(主領域必選)</div></td></tr> <tr><td><div align="center">軟體工程(主領域必選)</div></td><td><div align="center">數量方法</div></td></tr><tr><td><div align="center">資料庫管理</div></td><td><div align="center">多變量分析</div></td></tr><tr><td><div align="center">物件導向軟體工程</div></td><td><div align="center">網路消費行為專題</div></td></tr><tr><td><div align="center">服務導向架構專題</div></td><td><div align="center">資管個案研討</div></td></tr><tr><td><div align="center">資料探勘</div></td><td><div align="center">顧客關係管理</div></td></tr><tr><td><div align="center">企業資源規劃</div></td><td><div align="center">供應鏈管理</div></td></tr><tr><td><div align="center">智慧型系統</div></td><td><div align="center">資料探勘</div></td></tr><tr><td><div align="center">資料通訊管理</div></td><td><div align="center">資訊傳播專題</div></td></tr><tr><td><div align="center">資訊視覺化</div></td><td><div align="center">網路市場調查專題</div></td></tr><tr><td><div align="center">資訊安全</div></td><td><div align="center">網路行為專題</div></td></tr><tr><td><div align="center">資訊科學專題</div></td><td><div align="center">數位行銷</div></td></tr><tr><td><div align="center">高等電腦網路</div></td><td><div align="center">網路創業專題</div></td></tr><tr><td><div align="center">行動網路技術與應用</div></td><td><div align="center">網路創業管理</div></td></tr><tr><td><div align="center">雲端運算</div></td><td><div align="center"></div></td></tr></tbody></table>
			</blockquote>
			<h3>五、各年級課程科目規劃表</h3>
			<blockquote>
			<ul class="alt">
				<li><a href="http://www.mis.ntpu.edu.tw/files/syllabus/syllabus_103.pdf">103年課程規科目規劃表</a></li>
				<li><a href="http://www.mis.ntpu.edu.tw/files/syllabus/syllabus_102.pdf">102年課程規科目規劃表</a></li>
				<li><a href="http://www.mis.ntpu.edu.tw/files/syllabus/syllabus_101.pdf">101年課程規科目規劃表</a></li>
			</ul>
			</blockquote>
			<h3>六、課程規劃圖</h3>
			<blockquote>
			<div className="mid"><img src="http://www.mis.ntpu.edu.tw/images/curriculum_mapping.jpg" /></div>
			</blockquote>								
		</div>
		</section>

Content = React.createClass
	displayName:'Content'
	render:->
		<div className="container">
		<About />
		<Faculty TeacherList={@props.TeacherList} />
		<Curriculum />
		</div>

Introduction = React.createClass
	displayName:'Introduction'
	render:->
		console.log @props.TeacherList 
		<div>
			<Banner />
			<Content TeacherList={@props.TeacherList} />
		</div>
module.exports = Introduction