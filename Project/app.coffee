# Create a layer an position it in the center
layerA = new Layer
    x: Align.right
    y: Align.center
layerA.image = "images/Start_2.png"
# Create a state in the bottom right corner
layerA.states =
    stateA:
        x: Align.right
        y: Align.bottom
    stateB:
        x: Align.left
        y: Align.top

layerA.onTap -> layerA.stateCycle()
