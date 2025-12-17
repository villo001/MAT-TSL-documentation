#!/bin/bash

wget --spider --recursive --no-parent --level=inf --adjust-extension --reject-regex ".*\?.*" https://villo001.github.io/MAT-TSL-documentation/ 2>&1 | tee linkcheck.log

