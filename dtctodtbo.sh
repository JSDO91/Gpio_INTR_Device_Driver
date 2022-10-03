#!/bin/bash

rm gpiointr.dtbo
sleep 1
dtc -I dts -O dtb -o gpiointr.dtbo gpiointr-overlay.dts
