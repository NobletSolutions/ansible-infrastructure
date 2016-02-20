#!/bin/sh

xvfb-run -a -s "-screen 0 1024x768x16" wkhtmltopdf "$@"

