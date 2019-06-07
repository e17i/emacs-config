#/bin/sh

tmutil listlocalsnapshots /Volumes/|awk -F. '{print $4}'|xargs -n 1 tmutil deletelocalsnapshots
