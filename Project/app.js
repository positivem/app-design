var layerA;

layerA = new Layer({
  x: Align.right,
  y: Align.center
});

layerA.image = "images/Start_2.png";

layerA.states = {
  stateA: {
    x: Align.right,
    y: Align.bottom
  },
  stateB: {
    x: Align.left,
    y: Align.top
  }
};

layerA.onTap(function() {
  return layerA.stateCycle();
});
