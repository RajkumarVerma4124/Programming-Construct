
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
secondComputation=$(echo "scale=2;$a*$b+$c/1" | bc )
echo "SecondComputation Result is : "$secondComputation
printf "\n"

echo "Computing c+a/b"
thirdComputation=$(echo "scale=2;$c+$a/$b/1" | bc )
echo "ThirdComputation Result is : "$thirdComputation
printf "\n"

echo "Computing a%b+c"
fourthComputation=$(echo "scale=2;$a%$b+$c/1" | bc )
echo "FourthComputation Result is : "$fourthComputation
printf "\n"


echo "Storing the results in a Dictionary for every Computation"

declare -A operations
operations[1]=$firstComputation
operations[2]=$secondComputation
operations[3]=$thirdComputation
operations[4]=$fourthComputation

echo "Dictionary Results are : "${operations[@]}
printf "\n"

echo "Reading the values from the Dictionary into the array for every Computation"

for i in {1..4}
do
	operationsArr[$i]=${operations[$i]}
done

echo "Array Results are : "${operationsArr[*]}
printf "\n"

echo "Sort the results to show the Computation Result in the Descending Order"

descendingSort(){
n=5
for((i=1;i<n;i++))
do
	for((j=1;j<n;j++))
	do
		if [ 1 -eq " $(echo "${operationsArr[$i]} > ${operationsArr[$j]}" | bc )" ]
		then
			temp=${operationsArr[$i]}
			operationsArr[$i]=${operationsArr[$j]}
			operationsArr[$j]=$temp
		fi
	done
done
}

descendingSort
echo "RESULT IN DESCENDING ORDER ARE : "${operationsArr[*]}
printf "\n"

echo "Sort the results to show the Computation Result in the Ascending Order"

ascendingSort(){
n=5
for((i=1;i<n;i++))
do
	for((j=1;j<n;j++))
	do
		if [ 1 -eq " $(echo "${operationsArr[$i]} < ${operationsArr[$j]}" | bc )" ]
		then
			temp=${operationsArr[$i]}
			operationsArr[$i]=${operationsArr[$j]}
			operationsArr[$j]=$temp
		fi
	done
done
}

ascendingSort
echo "RESULT IN ASCENDING ORDER ARE : "${operationsArr[*]}
printf "\n"
