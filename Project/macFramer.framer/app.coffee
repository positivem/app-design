
# Import file "Filtered-yes"
sketch = Framer.Importer.load("imported/Filtered-yes@1x")

# create canvas
Circle = new Layer
	width: 400,
	height: 400,
	backgroundColor: "blue"
	opacity: 0.5
	superLayer: sketch.details_session
	x: 187
	y: 284

# create SVG element inside canvas and hook snap into it
Circle.html = "<svg id='svg' style='width:#{Circle.width}px;height:#{Circle.height}px;ignore-events:all;'></svg>"
snap = Snap(canvas.querySelector("#svg"))


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
sketch.group31.onTap (event, layer) ->
    flow.showOverlayRight(sketch.ALERT_sync_end)
    
#Create Event on Tap for Sync to Game Over
sketch.group33.onTap (event, layer) ->
    flow.showOverlayRight(sketch.ALERT_game_over)
    
#Create Event on Tap for Sync to Game Over
sketch.group34.onTap (event, layer) ->
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

       
       





 









