'use strict';

const Pyroscope = require('@pyroscope/nodejs');

Pyroscope.init({
  serverAddress:
    process.env.PYROSCOPE_SERVER_ADDRESS ||
    'http://host.docker.internal:4040',

  appName:
    process.env.PYROSCOPE_APPLICATION_NAME ||
    'todo-app',
});

Pyroscope.start();
