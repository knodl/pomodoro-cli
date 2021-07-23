#!/bin/bash

start_rest_sound=/System/Library/Sounds/Hero.aiff
start_work_sound=/System/Library/Sounds/Funk.aiff
seconds=60
work=30
rest=5

function play_sound () {
   for counter in {1..3}
   do
       afplay $1
   done
}

while getopts w:r: flag
do
    case "${flag}" in
        w) work=${OPTARG};;
        r) rest=${OPTARG};;
    esac
done

while true
do
    work="$(($work * $seconds))"
    rest="$(($rest * $seconds))"

    sleep $work
    play_sound $start_rest_sound
    osascript -e 'display dialog "It is time to rest!"'

    sleep $rest
    play_sound $start_work_sound
    osascript -e 'display dialog "It is time to start working!"'
done
