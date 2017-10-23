var data = [
    { y: 'January', a: 50, b: 90 },
    { y: 'February', a: 65, b: 75 },
    { y: 'Mrch', a: 50, b: 50 },
    { y: 'April', a: 75, b: 60 },
    { y: 'May', a: 80, b: 65 },
    { y: 'June', a: 90, b: 70 },
    { y: 'July', a: 100, b: 75 },
    { y: 'August', a: 115, b: 75 },
    { y: 'September', a: 120, b: 85 },
    { y: 'October', a: 145, b: 85 },
    { y: 'November', a: 160, b: 95 }
],
    config = {
        data: data,
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Concentration Time', 'Wasted Time'],
        fillOpacity: 0.6,
        hideHover: 'auto',
        behaveLikeLine: true,
        resize: true,
        pointFillColors: ['#ffffff'],
        pointStrokeColors: ['white'],
        lineColors: ['white', 'red']
    };
config.element = 'stacked';
config.stacked = true;
Morris.Bar(config);
Morris.Donut({
    element: 'pie-chart',
    data: [
        { label: "High Concentration", value: 30 },
        { label: "Average Concentration", value: 15 },
        { label: "Low Concentration", value: 45 },
        { label: "No Concentration", value: 10 }
    ]
});
Morris.Donut({
    element: 'pie-chart1',
    data: [
        { label: "Game 1", value: 37 },
        { label: "Game 2", value: 25 },
        { label: "Game 3", value: 38 },

    ]
});