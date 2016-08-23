docker-phantomjs
================

[![Docker Automated buil](https://img.shields.io/docker/automated/atsnngs/phantomjs.svg?maxAge=2592000)](https://hub.docker.com/r/atsnngs/phantomjs/)

Dockerfile for Phantom JS

https://hub.docker.com/r/atsnngs/phantomjs/

Run Examples
------------

```sh
docker run --rm -v $(pwd)/examples:/examples phantomjs \
  --config=/examples/config.json /examples/trending.js
```

Author
------

[Atushi Nagase]

License
-------

Copyright &copy; 2016 [Atushi Nagase]. All rights reserved.

[Atushi Nagase]: http://ngs.io/
