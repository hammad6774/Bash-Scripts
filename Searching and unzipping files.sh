
##Searching the desired file and unzipping all zip files

echo "What file name are you looking for?"
read search_term

# Use a loop to check every 'red' zip file in the folder
for file in *.zip
do
    echo "Checking in $file..."
    # If grep finds the name, it will print the line
    unzip -l "$file" | grep "$search_term"
done
