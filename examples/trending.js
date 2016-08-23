var page = require('webpage').create();

page.viewportSize = { width: 1024, height: 768 };
page.open('https://github.com/trending', function(status) {
  page.render('/examples/trending.jpg');
  phantom.exit();
});
