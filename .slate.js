var fullscreen, right, left;

fullscreen = slate.operation('move', {
  x: 'screenOriginX',
  y: 'screenOriginY',
  width: 'screenSizeX',
  height: 'screenSizeY'
});

right = slate.operation('move', {
  x: 'screenSizeX / 2',
  y: 'screenOriginY',
  width: 'screenSizeX / 2',
  height: 'screenSizeY'
});

left = slate.operation('move', {
  x: 'screenOriginX',
  y: 'screenOriginY',
  width: 'screenSizeX / 2',
  height: 'screenSizeY'
});

slate.bind('1:ctrl', function (win) {
  win.doOperation(fullscreen);
});

slate.bind('2:ctrl', function (win) {
  win.doOperation(left);
});

slate.bind('3:ctrl', function (win) {
  win.doOperation(right);
});
