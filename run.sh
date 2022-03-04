#!/bin/bash

pm2 start "miniflare index.js" && pm2 start "miniflare index2.js -p 8989"