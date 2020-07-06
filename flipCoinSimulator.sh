
echo "Welcome To The Flip Coin Simulation Program"
echo "This problem displays the winner Heads or Tails"
printf "\n"

echo "Simulating to start with Flipping a Coin to Display Heads or Tails as winner"
flipCoin=$(( $RANDOM % 2 +1 ))
echo $flipCoin    
if [ $flipCoin -eq 1 ]
then
	smilulate=$flipCoin
	echo "Heads Wins"
else
	smilulate=$flipCoin
	echo "Tails Wins"
fi
printf "\n"

echo "Looping through a multiple times and show the no. of times head or tail wins"

headCount=0
tailCount=0
read -p "Enter The No. Times You Want To Flip a Coin : " flipCount

while [ $flipCount -gt 0 ]
do
	flipCoin=$(( $RANDOM%2 + 1 ))    
	if [ $flipCoin -eq 1 ]
	then
		headCount=$(($headCount+1))
		flipCount=$(($flipCount-1))
	fi

	if [ $flipCoin -eq 2 ]
	then
		tailCount=$(($tailCount+1))
		flipCount=$(($flipCount-1))
	fi
done

echo "Head Won  "$headCount "Times"
echo "Tail Won  "$tailCount "Times"
printf "\n"

echo "Modified the earlier UC 2 to continue till either of them have won 21 times. Show if it’s a Win or Tie. If Win then who won and by how much"

diffInCounts(){
if [ $headCount -eq 21 ]
then
	winCount=$(($headCount-$tailCount))
	echo "Head Wins With Count : "  $winCount " More From Tail Count"
fi

if [ $tailCount -eq 21 ]
then
	winCount=$(($tailCount-$headCount))
	echo "Tail Wins With Count : " $winCount " More From Head Count"
fi

if [ $headCount -eq 21 -a $tailCount -eq 21 ]
then
	echo "Both Wins With Tie Count of :  $tailCount Tails and $headCount Head "
else
	echo "There Was no Tie Between Head and Tails"
fi
}

headCountFunc(){
headCount=$(($headCount+1))
}

tailCountFunc(){
tailCount=$(($tailCount+1))
}

headCount=0
tailCount=0

while [ true ]
do
	flipCoin=$(( $RANDOM%2 + 1 ))
	if [ $flipCoin -eq 1 ]
	then
		headCountFunc
		if [ $headCount -eq 21 ]
		then	
			tailCountFunc
			break		
		fi
	fi

	if [ $flipCoin -eq 2 ]
	then
		tailCount=$(($tailCount+1))
		if [ $tailCount -eq 21 ]
		then
			headCountFunc
			break
		fi
	fi
done

echo "Head Won  "$headCount "Times"
echo "Tail Won  "$tailCount "Times"
diffInCounts
printf "\n"

echo "Extend UC 3 to ensure if its tie then the game continues till the difference of minimum 2 points is achieved"

diffifGameTies() { 
headCountDiff=0 
tailCountDiff=0
 
if [ $headCount -gt $tailCount ] 
then 
	headCountDiff=$(($headCount - $tailCount)) 
elif [ $tailCount -gt $headCount ] 
then 
	tailCountDiff=$(($tailCount - $headCount))
fi 

if [ $headCountDiff -eq 1 -o $tailCountDiff -eq 1 ] 
then 
	runGameTillDiff 
elif [ $headCountDiff -gt 1 ] 
then 
	echo "Difference Of Head Count is : "$headCountDiff " More Than Tails"
	echo "Head Wins After a Tie : " $headCount 
elif [ $tailCountDiff -gt 1 ] 
then 
	echo "Diffrence Of Tail Count is : "$tailCountDiff " More Than Heads"
	echo "Tail Wins After a Tie : " $tailCount 
fi
}

runGameTillDiff(){ 
headCount=0 
tailCount=0 
while [ $headCount -lt 21 -a $tailCount -lt 21 ] 
do 
	flipCoin=$(( $RANDOM % 2 +1 )) 
	if [ $flipCoin -eq 1 ] 
	then 
		headCount=$(($headCount+1)) 
	fi 
	
	if [ $flipCoin -eq 2 ] 
	then tailCount=$(($tailCount+1)) 
	fi 
done
echo "After Running The Game Again "
echo "Head Count is :  "$headCount "Times"
echo "Tail Count is :  "$tailCount "Times" 
diffifGameTies
}

headCount=0 
tailCount=0 
while [ $headCount -lt 21 -o $tailCount -lt 21 ] 
do 
	flipCoin=$(( $RANDOM % 2 +1 )) 
	if [ $flipCoin -eq 1 -a $headCount -lt 21 ] 
	then 
		headCount=$(( $headCount+1 )) 
	fi 

	if [ $flipCoin -eq 2 -a $tailCount -lt 21 ] 
	then 
		tailCount=$(( $tailCount+1 )) 
	fi
done
	 
if [ "$tailCount" -eq "21" -a "$headCount" -eq "21" ] 
then 
	echo "Game Ties Between Head And Tail with Count : $tailCount tails and $headCount head "
	runGameTillDiff
fi
