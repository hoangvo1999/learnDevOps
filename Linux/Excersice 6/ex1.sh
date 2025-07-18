# 
#   Writing an simple program, which help you list all user in system and display it get username only
#

echo "List username in $(hostname)"
cat /etc/passwd | cut -d':' -f1