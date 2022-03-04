#!/bin/bash

pm2 start "miniflare index.js" --no-daemon && pm2 start "miniflare index2.js -p 8989" --no-daemon