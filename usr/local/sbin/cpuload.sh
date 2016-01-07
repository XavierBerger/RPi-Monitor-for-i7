var=`echo $(sar -P ALL 1 1)`
cpuall=$(echo $var | cut -d " "  -f18-22 | sed 's/,/./g' | sed "s/ /+/g" | bc -l)
cpu0=$(echo $var | cut -d " "  -f26-30 | sed 's/,/./g' | sed "s/ /+/g" | bc -l)
cpu1=$(echo $var | cut -d " "  -f34-38 | sed 's/,/./g' | sed "s/ /+/g" | bc -l)
cpu2=$(echo $var | cut -d " "  -f42-46 | sed 's/,/./g' | sed "s/ /+/g" | bc -l)
cpu3=$(echo $var | cut -d " "  -f50-54 | sed 's/,/./g' | sed "s/ /+/g" | bc -l)
cpu4=$(echo $var | cut -d " "  -f58-62 | sed 's/,/./g' | sed "s/ /+/g" | bc -l)
cpu5=$(echo $var | cut -d " "  -f66-70 | sed 's/,/./g' | sed "s/ /+/g" | bc -l)
cpu6=$(echo $var | cut -d " "  -f74-78 | sed 's/,/./g' | sed "s/ /+/g" | bc -l)
cpu7=$(echo $var | cut -d " "  -f82-86 | sed 's/,/./g' | sed "s/ /+/g" | bc -l)

echo $cpuall $cpu0 $cpu1 $cpu2 $cpu3 $cpu4 $cpu5 $cpu6 $cpu7
