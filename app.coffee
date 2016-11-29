# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "akash soti"
	twitter: ""
	description: ""


page = new PageComponent
  width: Screen.width
  height: Screen.height
  scrollHorizontal: false 
  scrollVertical: false
  
#page 1
mainScreen = new Layer
	width: page.width
	height: page.height
	parent: page.content
	backgroundColor: "white"

mainScreenScroll = new ScrollComponent
	width: Screen.width
	height: Screen.height
	parent: mainScreen
	scrollHorizontal: false
mainScreenScroll.contentInset = 
	top: 170
	bottom: 200
	
picture_group = new Layer
	width: 670
	height: 7240
	image: "images/picture_group.png"
	parent: mainScreenScroll.content
	x: Align.center

continueCta = new Layer
	width: 700
	height: 150
	image: "images/continueCta.png"
	x: Align.center
	y: Align.bottom(-20)
	parent: mainScreen

title_bar = new Layer
	width: 750
	height: 128
	image: "images/title_bar.png"
	parent: mainScreen
	
statusBar = new Layer
	width: 750
	height: 40
	image: "images/status_bar.png"
	parent: page

#page 2
secondPage = new Layer
	width: page.width
	height: page.height
	backgroundColor: "#f5f5f5"

titleBarTwo = new Layer
	width: 750
	height: 128
	image: "images/titleBarTwo.png"
	parent: secondPage

back = new Layer
	height: 100
	y: 30
	parent: secondPage
	backgroundColor: "transparent"
	
#this is where we add new pages
page.addPage(secondPage)

#let's add click event to the button
continueCta.on Events.Click, ->
	page.snapToPage(secondPage)

back.on Events.Click, ->
	page.snapToPreviousPage()


