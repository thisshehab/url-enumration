cat output/gau_output.txt | grep -E "^(https|http)://" | sort -n | uniq >  output/uniqe.txt
echo "Done"
