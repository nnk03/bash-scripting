#!/bin/bash
: '
this is a cat command

'

count=10
if [ $count -eq 9 ]
# the spaces just after opening square brackets and just before closing square brackets are important
then
  echo "true"
else
  echo "false"
fi

# -eq stands for equals
# -ne stands for not equals
# -gt stands for greater than

if [ $count -ne 9 ]
then
  echo "count not 9"
else
  echo "count is 9"
fi

# we can use > symbol for greater than but we need to use (()) kind of brackets as shown below

# here the spaces before and after the brackets are not important
# we can also use == instead of -eq when using this syntax
# if (($count < 9)) is also allowed

if (($count > 9))
then
  echo "true"
else
  echo "false"
fi
if (($count < 9))
then
  echo "true"
elif (($count<=10))
then
  echo "elif block"
else
  echo "false"
fi

# count = 10
if [ "$count" -gt 9 ] && [ "$count" -lt 12 ]
then
  echo "true"
fi

# or
if [[ "$count" -gt 9 && "$count" -lt 12 ]]
then
  echo "true"
fi
# or 
if [ "$count" -gt 9 -a "$count" -lt 12 ]
then
  echo "true"
fi

# or operator is represented by -o
# or 
# || , but we have to use double brackets


# while assigning there shouldn't be any spaces between (lhs and '=') or (rhs and '=') like car = "bmw"
car="bmw"
case $car in 
  "bmw" )
    echo "it's bmw" ;;
  "mercedes" )
    echo "mercedes" ;;
  * )
    echo "unknown car"

esac

number=1
while [ $number -le 10 ]
do
  echo "$number"
  # number=$(( $number+1 ))
  # or 
  number=$(( $number + 1 ))
  # both ways of writing will work
done

# until loops are almost the same
number=1
# until will run until the statement becomes true
until [ $number -ge 10 ]
do
  echo "$number"
  number=$((number+1))
done

# for loops
for i in 1 2 3 4 5
do
  echo $i
done

for i in {0..20}
do
  echo $i
done

# the 3rd number is the step value
# but the below code is not working
# for i in {0..20..2}
# do
#   echo $i
# done

# another way of writing for loop

for (( i=0; i<5;i++))
# here we should not write $i=0;$i<5;$i++
do
echo $i
# indentation is not necessary
done

for (( i=0; i<5;i++))
# here we should not write $i=0;$i<5;$i++
do
echo $i
if [ $i -gt 2 ]
then
break
fi
# indentation is not necessary
done


# same with the continue statement
