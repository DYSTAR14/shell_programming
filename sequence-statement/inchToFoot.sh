#!/bin/bash -x
ft_1=12
inch=42
foot=`echo "scale=2; $inch/$ft_1" | bc`
echo 42inch is $foot foot
