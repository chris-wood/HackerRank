# Input Format 
# Three integers, each on a new line

# Input Constraints 
# 1 <= (Each of the sides) <= 1000 
# Sum of any two sides will be greater than the third

# Output Format 
# One word: either "SCALENE" or "EQUILATERAL" or "ISOSCELES" (quotation marks excluded)

read X
read Y
read Z

if (($X == $Y)) && (($X == $Z));
then
    echo "EQUILATERAL"
elif (($X == $Y));
then
    echo "ISOSCELES"
elif (($Y == $Z));
then
    echo "ISOSCELES"
elif (($Z == $X));
then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi
