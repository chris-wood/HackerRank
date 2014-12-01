# Task

# We provide you with expressions containing +,-,*,^, / and parenthesis. None of the numbers in the expression involved will exceed 999. 
# Your task, is to evaluate the expression and display the output correct to 3 decimal places.

### USE bc
# ~$ echo "5+5"
# 5+5
# ~$ echo "5+5"| bc
# 10
# ~$ echo "5+5"| bc -l
# 10
# ~$ echo "5+5.2"| bc -l
# 10.2
# ~$ echo "5+5.2"| bc
# 10.2
# ~$ echo "3/4"| bc
# 0
# ~$ echo "3/4"| bc -l
# .75000000000000000000
# ~`$ echo $`((3+3))
# 6  

### USE scale when decimal point rounding is required
# ~$ echo "scale = 2; 10 * 100 / 30" | bc
# 33.33
# ~$ echo "scale = 2; 10 / 30 * 100" | bc
# 33.00
# ~$ echo "scale = 2; (10 / 30) * 100" | bc
# 33.00

### USE Expr
# ~`$ echo $`(expr 5 + 5)
# 10
# ~`$ echo $`(expr 5 - 5 + 2 )
# 2
# ~`$ echo $`(expr 5 - 5 + 2 / 3 )
# 0
# ~`$ echo $`(expr 5 - 5 + 2 / 1 )
# 2

# Input: 5+50*3/20 + (19*2)/7
# Output: 17.929
# Input: -105+50*3/20 + (19^2)/7
# Output: -45.929

read input
cmd=""
for (( i=0; i<${#input}; i++ )); do
	echo ${input:$i:1}
done	

