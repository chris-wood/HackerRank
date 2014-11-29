# Input: One character (this may be 'Y', 'y', 'N', 'n').
# Output: One word: either "YES" or "NO" (quotation marks excluded)

read token

# use ((..)) instead of [[..]] for evaluations
# see: http://stackoverflow.com/questions/2188199/how-to-use-double-or-single-bracket-parentheses-curly-braces
# whitespace matters between `[[` and "$token"

if [[ "$token" = "Y" ]]
then
    echo YES
elif [[ "$token" = "y" ]]
then
    echo YES
elif [[ "$token" = "N" ]]
then
    echo NO
elif [[ "$token" = "n" ]]
then
    echo NO
fi