func(){
    if [ $1 -eq 1 ]
    then
        echo "1"
        return
    fi
    x=`expr $1 - 1`
    x="$(func $x)"
    x=`expr $x \* $1`
    echo "$x"
    return
}

read n
read r

d=`expr $n - $r`
a="$(func $n)"
b="$(func $d)"
c=`expr $a / $b`
echo $c