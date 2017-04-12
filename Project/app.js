var layerA;

layerA = new Layer({
  x: 0,
  y: 0,
  width: 750,
  hight: 1334
});

layerA.image = "images/Logo_3cm.png";

layerA.states = {
  stateA: {
    x: Align.right,
    y: Align.bottom,
    width: 750,
    hight: 1334
  },
  stateB: {
    x: Align.center,
    y: Align.top,
    width: 750,
    hight: 1334
  }
};

layerA.onTap(function() {
  return layerA.stateCycle();
});
