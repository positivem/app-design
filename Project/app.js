var layerA;

layerA = new Layer({
  x: 0,
  y: 0,
  width: 200,
  hight: 200
});

layerA.image = "images/Logo_3cm.png";

layerA.states = {
  stateA: {
    x: Align.right,
    y: Align.bottom,
    width: 250,
    hight: 250,
    rotation: 180
  },
  stateB: {
    x: Align.center,
    y: Align.top,
    width: 250,
    hight: 250,
    rotation: 180
  }
};

layerA.onTap(function() {
  return layerA.stateCycle();
});
