var Pages, Planet1, Planet2, Planet3, Planet4, Selected, Statusbar, Unselected, artboard, artboardA, artboardB, artboardC, artboardD, artboardE, artboardF, artboards, bg, i, introbg, len, loadingtext;

Framer.Info = {
  title: "Planets",
  author: "Jurre Houtkamp",
  twitter: "JurreHoutkamp",
  description: "Scroll right and head deeper into our solar system. You're right, this is not scientifically accurate"
};

introbg = new Layer({
  width: 6090,
  height: 1334,
  image: "images/introbg.png"
});

introbg.animate({
  options: {
    time: 2,
    delay: 15
  },
  opacity: 0
});

loadingtext = new Layer({
  width: 406,
  height: 78,
  x: 180,
  y: 1100,
  image: "images/loadingtext.png"
});

loadingtext.animate({
  options: {
    time: 1,
    delay: 14
  },
  opacity: 0
});

Planet1 = new Layer({
  width: 226,
  height: 226,
  x: 276,
  y: 535,
  rotation: 90,
  image: "images/Planet1.png"
});

Planet2 = new Layer({
  width: 186,
  height: 186,
  x: 298,
  y: 555,
  rotation: 180,
  image: "images/Planet2.png"
});

Planet3 = new Layer({
  width: 152,
  height: 152,
  x: 315,
  y: 570,
  rotation: 250,
  image: "images/Planet3.png"
});

Planet4 = new Layer({
  width: 86,
  height: 86,
  x: 350,
  y: 600,
  image: "images/Planet4.png"
});

Planet1.animate({
  options: {
    curve: "linear",
    time: 12
  },
  rotation: 1000
});

Planet2.animate({
  options: {
    curve: "linear",
    time: 12
  },
  rotation: 720
});

Planet3.animate({
  options: {
    curve: "linear",
    time: 12
  },
  rotation: 600
});

Planet4.animate({
  options: {
    curve: "linear",
    time: 12
  },
  rotation: 550
});

Framer.Device.background.backgroundColor = "#000";

bg = new Layer({
  width: 5172,
  height: 3188,
  image: "images/bg.png",
  opacity: 0
});

artboardF = new Layer({
  width: 750,
  height: 1334,
  image: "images/Screen5.png"
});

artboardB = new Layer({
  width: 750,
  height: 1334,
  image: "images/Screen2.png"
});

artboardC = new Layer({
  width: 750,
  height: 1334,
  image: "images/Screen3.png"
});

artboardD = new Layer({
  width: 750,
  height: 1334,
  image: "images/Screen4.png"
});

artboardE = new Layer({
  width: 750,
  height: 1334,
  image: "images/Screen1.png"
});

artboardA = new Layer({
  width: 750,
  height: 1334,
  image: "images/Screen6.png"
});

artboards = [artboardB, artboardC, artboardD, artboardE, artboardF];

Pages = PageComponent.wrap(artboardA);

for (i = 0, len = artboards.length; i < len; i++) {
  artboard = artboards[i];
  artboard.visible = true;
  Pages.addPage(artboard);
}

Pages.scrollVertical = false;

Pages.velocityThreshold = 0.2;

Pages.animationOptions = {
  time: 0.1,
  curve: "spring(150, 30, 1)"
};

Pages.opacity = 0;

Pages.scale = 0.95;

Pages.animate({
  opacity: 1,
  y: 10,
  scale: 1,
  options: {
    time: 2,
    delay: 10
  }
});

bg.animate({
  opacity: 1,
  options: {
    curve: "linear",
    time: 1,
    delay: 9
  }
});

Selected = new Layer({
  width: 42,
  height: 42,
  x: 275,
  y: 1243,
  opacity: 0,
  image: "images/Selected.png"
});

Unselected = new Layer({
  width: 174,
  height: 14,
  x: 290,
  y: 1255,
  opacity: 0,
  image: "images/Unselected.png"
});

Selected.animate({
  opacity: 1,
  options: {
    curve: "linear",
    time: 1,
    delay: 10
  }
});

Unselected.animate({
  opacity: 1,
  options: {
    curve: "linear",
    time: 1,
    delay: 10
  }
});

loadingtext = new Layer({
  width: 406,
  height: 78,
  x: 180,
  y: 1100,
  image: "images/loadingtext.png"
});

loadingtext.animate({
  options: {
    time: 1,
    delay: 9
  },
  opacity: 0
});

Pages.scrollVertical = false;

Pages.on("change:currentPage", function() {
  return Selected.x = 275 + 32 * Pages.horizontalPageIndex(Pages.currentPage);
});

Pages.content.on(Events.DragMove, function() {
  return Selected.animate({
    properties: {
      scale: 0
    },
    time: 0.1,
    opacity: 0.1
  });
});

Pages.content.on(Events.DragEnd, function() {
  return Selected.animate({
    properties: {
      scale: 1.1
    },
    time: 0.3
  });
});

Pages.content.on("change:x", function() {
  bg.x = Utils.modulate(this.x, [0, -3750], [0, -1000], true);
  bg.y = Utils.modulate(this.y, [0, -3750], [0, -150], true);
  bg.scale = Utils.modulate(this.x, [-3750, 0], [1.2, 1], true);
  artboardA.scale = Utils.modulate(this.x, [-638, 0], [1.3, 1], true);
  artboardA.opacity = Utils.modulate(this.x, [-510, 0], [0, 1], true);
  artboardB.scale = Utils.modulate(this.x, [-1455, -150], [1.3, 0.7], true);
  artboardB.blur = Utils.modulate(this.x, [-290, -750], [5, 0], true);
  artboardB.opacity = Utils.modulate(this.x, [-1298, -750], [0, 1], true);
  artboardC.scale = Utils.modulate(this.x, [-2200, -850], [1.3, 0.7], true);
  artboardC.blur = Utils.modulate(this.x, [-850, -1500], [5, 0], true);
  artboardC.opacity = Utils.modulate(this.x, [-2040, -1500], [0, 1], true);
  artboardD.scale = Utils.modulate(this.x, [-2930, -1550], [1.3, 0.7], true);
  artboardD.blur = Utils.modulate(this.x, [-1630, -2250], [5, 0], true);
  artboardD.opacity = Utils.modulate(this.x, [-2730, -2250], [0, 1], true);
  artboardE.scale = Utils.modulate(this.x, [-3690, -2300], [1.3, 0.7], true);
  artboardE.blur = Utils.modulate(this.x, [-2388, -3000], [5, 0], true);
  artboardE.opacity = Utils.modulate(this.x, [-3560, -3000], [0, 1], true);
  artboardF.scale = Utils.modulate(this.x, [-3750, -3050], [1, 0.7], true);
  return artboardF.blur = Utils.modulate(this.x, [-3139, -3750], [5, 0], true);
});

Statusbar = new Layer({
  width: 728,
  height: 24,
  x: 15,
  y: 15,
  opacity: 0,
  image: "images/Statusbar.png"
});

Statusbar.animate({
  opacity: 1,
  options: {
    curve: "linear",
    time: 1,
    delay: 10
  }
});
