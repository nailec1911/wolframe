#!/usr/bin/env bash
# x, y, start, move

x=600;
y=400;
start=0;
move=0;
if [ "$#" -ge 2 ]; then
    x=$1;
    y=$2;
fi

if [ "$#" -ge 3 ]; then
    start=$3;
fi

if [ "$#" -ge 4 ]; then
    move=$4;
fi

for ((i=0; i<=255; i++)); do
    (
        echo -ne "P3\n$x $y 255\n" &&
        ./wolfram --rule $i --window $x --lines $y --start $start --move $move |
        sed -e 's/ /255 255 255 /g' |
        sed -e 's/*/0 0 0 /g'
    ) > out.ppm &&
    echo $i &&
    (feh --force-aliasing out.ppm -F -Z & sleep 1; kill $!)
done
