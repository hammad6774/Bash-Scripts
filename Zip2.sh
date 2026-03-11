## Zipping the files with folder name of current date and Check Logic
FILE_NAME="backup_$(date +%F).zip"
echo "Starting backup of all files into $FILE_NAME..."
zip -r $FILE_NAME *
if [ $? -eq 0 ]
then
    echo "Success! Backup created."
else
    echo "Error: Something went wrong with the zip process."
fi
