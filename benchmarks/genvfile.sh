
sed -i '2,3d' $1.v

sed -i 's/\(x[0-9][0-9]* , \)*x\([0-9][0-9]*\) , y[0-9][0-9]*/input [\2:0] x/g' $1.v
sed -i 's/\(y[0-9][0-9]* , \)*y\([0-9][0-9]*\) );/output [\2:0] y );/g' $1.v
sed -i "s/top/$1/g" $1.v
sed -i 's/n\([0-9][0-9]*\)000 ,/n\1000 ,\n   /g' $1.v
sed -i 's/x\([0-9][0-9]*\)/x[\1]/g' $1.v
sed -i 's/y\([0-9][0-9]*\)/y[\1]/g' $1.v