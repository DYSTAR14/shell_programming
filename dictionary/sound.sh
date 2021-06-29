#!/bin/bash -x
declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sound :: " ${sounds[dog]}
echo "All animal sounds :: " ${sounds[@]}
echo "All the animal :: " ${!sounds[@]}
echo "Number animal sounds :: " ${#sounds[@]}
unset sounds[wolf]
echo "After deleting all animal sounds :: " ${sounds[@]}
sounds[cat]="meow"
echo ${sounds[*]}
