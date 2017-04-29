# Import file "Filtered-do"
sketch2 = Framer.Importer.load("imported/Filtered-do@1x")

sketch2.$1_Login
sketch2.$2_Sign_Up
sketch2.$10_Profile
sketch2.$6_Overview
sketch2.details_session

sketch2.$1_Login.draggable.enabled = true
sketch2.$2_Sign_Up.draggable.enabled = true
sketch2.$10_Profile.draggable.enabled = true
sketch2.$6_Overview.draggable.enabled = true
sketch2.details_session.draggable.enabled = true

sketch2.$1_Login.draggable.vertical = false
sketch2.$2_Sign_Up.draggable.vertical = false
sketch2.$10_Profile.draggable.vertical = false
#sketch2.$6_Overview.draggable.vertical = false sketch2.details_session.draggable.vertical = false

sketch2.Group4.states =
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

sketch2.Group4.onTap (event, layer) -> sketch2.Group4.stateCycle()


#Animate with a spring curve 

sketch2.sign_in.states =
        stateA:
          opacity:0.5
sketch2.sign_in.onTap -> sketch2.sign_in.stateCycle()




 









