var backgroundColor, layerA, layerB;

layerA = new Layer({
  x: -186,
  y: -330,
  width: 750,
  height: 1334
}, backgroundColor = "#28affa");

layerA.scale = 0.5;

layerA.image = "images/1-Login.png";

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
