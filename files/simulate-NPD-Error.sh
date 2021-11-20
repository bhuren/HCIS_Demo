#!/bin/bash
for i in {0..15}
do
echo 'kernel: INFO: task docker:20744 blocked for more than 120 seconds.' >> /dev/kmsg
done