# Import file "Filtered-yes"
sketch = Framer.Importer.load("imported/Filtered-yes@1x")

#Create flow component
flow = new FlowComponent
flow.showOverlayRight(sketch.$1_Login)

#Create Event on Tap for Login page
sketch.sign_in.onTap (event, layer) ->
	flow.showOverlayRight(sketch.$10_Profile)
	

#Create Event on Tap for Login page to Signup
sketch.sign_up.onTap (event, layer) ->
	flow.showOverlayRight(sketch.$2_Sign_Up)

#Create Event on Tap from Signup to Create Profile
sketch.create2.onTap (event, layer) ->
	flow.showOverlayRight(sketch.$10_Profile)	


#Create Event on Tap for Profile Progress page
sketch.create1.onTap (event, layer) ->
    flow.showOverlayRight(sketch.$6_Overview_info)

#Create Event on Tap for Progress Overview page
sketch.$6_Overview_info.onTap (event, layer) ->
    flow.showOverlayRight(sketch.$6_Overview)

#Create Event on Tap for Drop Menu to appear
sketch.menu1.onTap (event, layer) ->
    flow.showOverlayLeft(sketch.Drop_LastSession)

#Create Event on Tap for Drop Menu to Profile
sketch.next5.onTap (event, layer) ->
    flow.showOverlayLeft(sketch.$10_Profile)

#Create Event on Tap for Profile Start page
sketch.create_copy.onTap (event, layer) ->
    flow.showOverlayRight(sketch.$3_Walkthrough)

#Create Event on Tap for Profile Start page
sketch.close.onTap (event, layer) ->
    flow.showOverlayRight(sketch.$10_Profile)

#Create Event on Tap for Sync to Game
sketch.group30.onTap (event, layer) ->
    flow.showOverlayRight(sketch.ALERT_sync_end)
    
#Create Event on Tap for Sync to Game Over
sketch.group32.onTap (event, layer) ->
    flow.showOverlayRight(sketch.ALERT_game_over)
    
#Create Event on Tap for Sync to Game Over
sketch.group33.onTap (event, layer) ->
    flow.showOverlayRight(sketch.details_session)

#Create Event on Tap for Sync to Game Over
sketch.menu3.onTap (event, layer) ->
    flow.showOverlayRight(sketch.Drop_Monthly)
    
#Create Event on Tap for Drop Down to Main
sketch.next4.onTap (event, layer) ->
    flow.showOverlayLeft(sketch.$10_Profile)
    


# Create states for Logo
sketch.Group.states =
    stateA:
        x: 275
        y: 120
        width:200
        height:270
        rotation:360
    stateB:
        x: 275
        y: 120
        width:200
        height:270
        rotation:360

#Create Event for Logo
sketch.Group.onTap  -> sketch.Group.stateCycle()

#Animate with a spring curve 
sketch.sign_in.states =
        stateA:
          opacity:0.5
        stateB:
          opacity:1

#Create Event for signin
sketch.sign_in.onTap -> sketch.sign_in.stateCycle()


# Draw circle
radius  = 200
stroke  = 15
viewBox = (radius * 2) + stroke

circle = new Layer
  superLayer:sketch.details_session
  width:  viewBox
  height: viewBox
  backgroundColor: ''
  rotation: -90
  y: 460
  x: 168
  borderRadius: 0

 #borderRadius: 16

circle.center() 
circle.pathLength = 2 * Math.PI * radius


circle.html = """
  <svg viewBox='-#{stroke/2} -#{stroke/2} #{viewBox} #{viewBox}'>
    <circle fill='none' stroke='yellow' stroke-linecap='round'
      stroke-width      = '#{stroke}'
      stroke-dasharray  = '#{circle.pathLength}'
      stroke-dashoffset = '#{circle.pathLength}'
      cx = '#{radius}'
      cy = '#{radius}'
      r  = '#{radius}'>
  </svg>"""
# Create proxy
proxy = new Layer visible: false, x: .1

proxy.on 'change:x', ->
  offset = Utils.modulate(@.x, [0, 100], [circle.pathLength, 0])
  circle.path.setAttribute 'stroke-dashoffset', offset
 
# Create animation
fill = new Animation
    layer: proxy
    properties: x: 100
    curve: 'spring(50,14,0)'

empty = fill.reverse()

fill.on(Events.AnimationEnd, empty.start)
empty.on(Events.AnimationEnd, fill.start)


# Run animation
Utils.domComplete ->
  circle.path = document.querySelector('svg circle')
  fill.start()





 









