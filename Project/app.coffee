
layerA = new Layer
#  x: 0
#  y: 0
    width:640
    height:960
    backgroundColor = "#28affa"

layerA.image = "images/1-Login.png"
#layerA.centerX()
print Canvas.frame
print Canvas.size
layerB = new Layer
#parent:layerA
    x: 0
    y: 0
    width:200
    height:200
layerB.image ="images/Logo_3cm.png"

# Create a state in the bottom right corner
layerB.states =
    stateA:
        x: 0
        y: 0
        width:200
        height:200
        rotation:180
    stateB:
        x: 0
        y: 0
        width:200
        height:200
        rotation:180

layerB.onTap -> layerB.stateCycle()
