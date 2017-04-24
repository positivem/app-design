
layerA = new Layer
    x: -186
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
