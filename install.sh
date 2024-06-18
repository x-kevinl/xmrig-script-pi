sudo apt-get update && sudo apt-get upgrade
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make

read -p "Would you like to donate to the maker of the script? (y/n): " donate

if [ "$donate" != "y" ]; then
  cd ../src
  curl -o donate.h https://raw.githubusercontent.com/x-kevinl/xmrig-script-pi/main/no-donations.h
fi

echo "Installation complete."
