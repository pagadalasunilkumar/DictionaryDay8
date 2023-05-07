counter=0;
Fruits[((counter++))]="Apple";
Fruits[((counter++))]="Banana";
Fruits[((counter++))]="Cherry";
Fruits[((counter++))]="Peach";
echo ${Fruits[@]}
echo ${Fruits[*]}
echo ${Fruits[1]}
Fruits[((0))]="Apple";
Fruits[((1))]="Banana";
Fruits[((2))]="Cherry";
Fruits[((3))]="Peach";
echo ${Fruits[@]}
echo ${Fruits[*]}
Fruits=(Apple Banana Cherry Peach 0 1 2 0.1)
echo ${Fruits[@]}
echo ${Fruits[*]}
