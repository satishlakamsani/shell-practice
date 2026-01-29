NUM1=100
NUM2=SATISH
SUM=$(($NUM1 + $NUM2))
echo "Sum is: $SUM"

#Array
FRUITS=("Mango" "Apple" "Bananana")

echo "Fruits are: ${FRUITS[@]}"
echo "First Fruit is: ${FRUITS[0]}"
echo "Second Fruit is: ${FRUITS[1]}"
echo "Third Fruit is: ${FRUITS[2]}"

NO1=29
NO2=29
MUL=$(($NO1 * $NO2))
echo "Mul is:$MUL"

