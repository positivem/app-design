# Import file "Filtered-do"
sketch = Framer.Importer.load("imported/Filtered-do@1x")
# Import file "Filtered-do"

#Create flow component
flow = new FlowComponent
flow.showOverlayRight(sketch.$1_Login)

#Create Event on Tap for Login page
sketch.sign_in.onTap (event, layer) ->
	flow.showOverlayRight(sketch.$10_Profile)

#Create Event on Tap for Profile Progress page
sketch.create.onTap (event, layer) ->
    flow.showOverlayRight(sketch.$6_Overview)

#Create Event on Tap for Profile Start page
sketch.create_copy.onTap (event, layer) ->
    flow.showOverlayRight(sketch.details_session)

#Create Event on Tap for Menu in Detailed Session report page
sketch.menu1.onTap (event, layer) ->
    flow.showOverlayRight(sketch.$6_Overview)
    
    
#Create Event on Tap for Overview menu button
sketch.menu.onTap (event, layer) ->
	flow.showOverlayLeft(sketch.$1_Login)
	


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
#Create Event for signin
sketch.sign_in.onTap -> sketch.sign_in.stateCycle()




 









