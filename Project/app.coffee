# Create a layer an position it in the center
layerA = new Layer
    x: 0
    y: 0
    width:200
    hight:200
layerA.image = "images/Logo_3cm.png"
# Create a state in the bottom right corner
layerA.states =
    stateA:
        x: Align.right
        y: Align.bottom
        width:250
        hight:250
    stateB:
        x: Align.center
        y: Align.top
        width:350
        hight:350


layerA.onTap -> layerA.stateCycle()
