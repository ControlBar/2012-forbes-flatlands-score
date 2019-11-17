#!/bin/sh

#set +v

COMP="--file=Australia Forbes 2012"

fs-filter "$COMP"
fs-route "$COMP"
fs-effort "$COMP"
fs-score "$COMP"

extract-input "$COMP" --give-fraction=0.005 --haversines
cross-zone "$COMP"
tag-zone "$COMP"
peg-frame "$COMP"
align-time "$COMP"
discard-further "$COMP"
mask-track "$COMP"
land-out "$COMP"
gap-point "$COMP"

comp-serve "$COMP"
