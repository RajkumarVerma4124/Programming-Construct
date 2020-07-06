
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




