#
# write an script to process the `ls` command and list out all files in folder
# 

path="/mnt/d/Study/DevOps/VTI/Practice/VTIDO2503/containerization"
folder_list="$(ls ${path})"
for folder in ${folder_list}
do
    echo "${folder}"
    echo "List item in ${folder}:"
    echo "$(ls ${path}/${folder})"
done