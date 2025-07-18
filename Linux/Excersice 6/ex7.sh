#
# list all file in a folder, the folder path come from the keyboard, list the file is can wrx
#
cd ..
file_list=$(ls ${1})
for file in ${file_list}
do
    if [ -w ${file} -a -r ${file} -a -x ${file} ]; then
        echo "${file}"
    fi
done
