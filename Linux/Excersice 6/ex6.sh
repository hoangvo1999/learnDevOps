#
# enter a file from keyboard and validate -w -r -x of file
#

echo "Test permission of file ${1}"
if [ -w ${1} ]; then
    echo "File ${1} can write"
fi
if [ -r ${1} ]; then
    echo "File ${1} can read"
fi
if [ -x ${1} ]; then
    echo "File ${1} can execute"
fi
