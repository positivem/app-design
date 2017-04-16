var backgroundColor, layerA, layerB;

layerA = new Layer({
  width: 640,
  height: 960
}, backgroundColor = "#28affa");

layerA.image = "images/1-Login.png";

print(Canvas.frame);

print(Canvas.size);

layerB = new Layer({
  x: 0,
  y: 0,
  width: 200,
  height: 200
});

layerB.image = "images/Logo_3cm.png";

layerB.states = {
  stateA: {
    x: 0,
    y: 0,
    width: 200,
    height: 200,
    rotation: 180
  },
  stateB: {
    x: 0,
    y: 0,
    width: 200,
    height: 200,
    rotation: 180
  }
};

layerB.onTap(function() {
  return layerB.stateCycle();
});
