echo -e "\nStarting post creat command script..."
echo "Dev machine:"
uname -a
echo -e "\nInstalling expo boiler plate..."
yarn add -D -y create-expo-app@latest
echo -e "\nInstalling watchman...\n"
sudo apt update
sudo apt install watchman
watchman version

echo -e "\n*******************************"
echo -e "\nDev container ready!".
echo -e "\n*******************************\n"