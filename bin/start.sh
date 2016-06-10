#!/bin/bash

java -jar $(find $APP_DIR -type f -name '*.jar' -print -quit)
