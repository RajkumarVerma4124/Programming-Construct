
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

