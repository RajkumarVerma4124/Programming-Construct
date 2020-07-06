
echo "Welcome to the Arithmetic Computation & Sorting Program "
printf "\n"
echo "This problem computes different arithmetic expression and Sorts the results"
printf "\n"

echo "Writing program to take three inputs – a, b & c"
printf "\n"
read -p "Enter The First Number : " a
echo "Your First number is : "$a
printf "\n"
read -p "Enter The Second Number : " b
echo "Your Second number is : "$b
printf "\n"
read -p "Enter The Third Number : " c
echo "Your Third number is : "$c
printf "\n"

echo "Computing a+b*c"
firstComputation=$(echo "scale=2;$a+$b*$c/1" | bc )
echo "FirstComputation Result is : "$firstComputation
printf "\n"

echo "Computing a*b+c"
secondComputation=$(echo "scale=2;$a*$b+$c/1" |bc )
echo "SecondComputation Result is : "$secondComputation

