
curpath=`pwd`
if ! [[ $curpath =~ .*/ghost/content/themes.* ]]
then
   echo "Install path is not valid."
   echo "Move to you themes directory (e.g. 
/path/to/ghost/content/themes)"
   exit 1
fi

echo "Installation started..."
echo "Removing any previous Optimium installs..."
rm -rf Optimium
echo "Downloading Optimium from GitHub..."
wget -q https://github.com/viruzx/Optimium/archive/master.zip
echo "Extracting Archive..."
unzip -q master.zip
rm master.zip
mv Optimium-master Optimium
service ghost restart >> /dev/null
echo "Creating update script"
cp Optimium/install.sh optimium.sh
echo "Done!"
echo "You may need to now restart Ghost to have it as an option."
echo "Run this script occasionally to make sure you have the latest 
build."
echo "To update theme just run optimium.sh in this directory."
