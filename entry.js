const child_process = require('child_process');

child_process.exec('miniflare index.js', () => {})
child_process.exec('miniflare index2.js -p 8989', () => {})
child_process.exec('miniflare index3.js -p 9090', () => {})
child_process.exec('miniflare index4.js -p 9191', () => {})