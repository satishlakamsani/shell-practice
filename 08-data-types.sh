NUM1=100
NUM2=SATISH
SUM=$(($NUM1 + $NUM2))
echo "Sum is: $SUM"

#Array
Fruits=("Mango","Apple","Bananana")

echo "Fruits are: ${Fruits[@]}"
echo "First fruit is: ${Fruits[0]}"
echo "Second fruit is: ${Fruits[1]}"
echo "Third fruit is: ${Fruits[2]}"
echo "First Fruit is: ${FRUITS[0]}"
echo "Second Fruit is: ${FRUITS[1]}"
echo "Third Fruit is: ${FRUITS[2]}"