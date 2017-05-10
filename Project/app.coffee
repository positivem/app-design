# Import file "Filtered-do"
sketch1 = Framer.Importer.load("imported/Filtered-do@1x")

sketch1.Group4.states =
    stateA:
        x: 275
        y: 153
        width:200
        height:270
        rotation:360
    stateB:
        x: 275
        y: 146
        width:200
        height:274
        rotation:360

sketch1.Group4.onTap (event, layer) -> sketch1.Group4.stateCycle()


### Animate with a spring curve 
sketch1.sign_in..animate
    scale: 0.75
    options:
        curve: Spring(damping: 0.5)
        time: 0.5


sketch1.sign_in.states =
   stateFadeout:            # name of the state
      opacity: 0
      scale: 1.5
    stateFadein:
       oopacity: 1
      scale: 1          
sketch1.sign_in.onTap -> sketch1.sign_in.stateCycle()->

#sketch1.sign_in.on Events.TouchEnd, (event, layer)->
#sketch1.sign_in.opacity = 1






###
layerA = new Layer
    x: -185
    y: -330
    width:750
    height:1334
    backgroundColor = "#28affa"
#print layerA;
layerA.scale = 0.5
layerA.image = "images/Nobutton-Login.png"
#layerA.centerX()
#print Canvas.frame
#print Canvas.size
layerB = new Layer
    x: 108
    y: 20
    width:200
    height:200
layerB.image ="images/Logo_3cm.png"

# Create a state in the bottom right corner
layerB.states =
    stateA:
        x: 80
        y: 20
        width:200
        height:200
        rotation:360
    stateB:
        x: 80
        y: 20
        width:200
        height:200
        rotation:360

layerB.onTap -> layerB.stateCycle()
layerButton = new Layer
    x: 65
    y: 540
    width:250
    height:55
    opacity:0.5
layerButton.borderRadius = 4
layerButton.image ="images/sign in.png"
#layerButton.opacity = true
layerButton.states =
    stateA:
          x: 65
          y: 540
          width:250
          height:55
          opacity:1
    #stateB:
layerButton.onTap -> layerButton.stateCycle()
