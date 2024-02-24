#!/usr/bin/env bash
# rule, x, y, start, move

rule=30;
x=600;
y=400;
start=0;
move=0;
echo $1
if [ "$#" -ge 1 ]; then
    rule=$1;
fi

if [ "$#" -ge 3 ]; then
    x=$2;
    y=$3;
fi

if [ "$#" -ge 4 ]; then
    start=$4;
fi

if [ "$#" -eq 5 ]; then
    move=$5;
fi

(
    echo -ne "P3\n$x $y 255\n" &&
    ./wolfram --rule $rule --window $x --lines $y --start $start --move $move |
    sed -e 's/ /255 255 255 /g' |
    sed -e 's/*/0 0 0 /g'
) > out.ppm &&

feh --force-aliasing out.ppm -F -Z
