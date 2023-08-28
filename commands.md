command for showing the available shells
'''
cat /etc/shells
'''

to know the path of bash
'''which bash'''


to make the .sh file as executable, we have to run the command 
'''chmod +x <sh-file-name>'''

in order to execute the file, we have to run the command
'''./<sh-file-name>'''

in order to replace the text in the file
the command in the .sh file is 
'''
cat > file.txt
'''

if we want to append
'''
cat >> file.txt
'''


'''
#this is a cat command
'''
is a comment

for multiline comments
'''
: ' this is a multiline comment ........'



'''


while declaring a variable, there must be no space
the following is invalid
'''
count = 10
'''

the following is valid
'''count=10'''


for conditional statements, space is necessary
for example
'''
if [ $count -eq 10 ]
then
    echo "condition is true"
fi
'''


-eq for equals to


-ne for not equals

-gt greater than


we can also use angular brackets for greater than 
but we have to replace square brackets with double parentheses
example
'''
[ count -gt 10 ]
'''
is same as 
'''
(( $count > 10 ))
'''
