# Intial environment for C++ development

echo Update packages cache
sudo apt-get update

echo Install editors
sudo apt-get install -y vim pathogen

echo Install compilers
sudo apt-get install-y build-essential software-properties-common
sudo apt-get install -y gcc g++ clang-3.8
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-6 g++-6

echo Set GCC 6 as default
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 20

sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 20

sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30
sudo update-alternatives --set cc /usr/bin/gcc

sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30
sudo update-alternatives --set c++ /usr/bin/g++

echo Install analyzers
sudo apt-get install -y clang-tidy-3.8 clang-format-3.8 valgrind valkyrie

echo Install GIT
sudo apt-get install -y git git-core git-doc gitk meld

echo Install cppcheck
wget -P /tmp http://downloads.sourceforge.net/project/cppcheck/cppcheck/1.77/cppcheck-1.77.tar.bz2
tar jxf /tmp/cppcheck-1.77.tar.bz2 -C /tmp
cd /tmp/cppcheck-1.77
make && sudo make install
cd -

echo Install CMake
sudo apt-get install -y cmake cmake-doc

echo Install Conan.io
sudo apt-get install -y python-pip
sudo pip install --upgrade pip
sudo pip install setuptools
sudo pip install conan
conan --version

echo Install CLion
wget -P /tmp https://download.jetbrains.com/cpp/CLion-2016.3.2.tar.gz
sudo mkdir /opt/jetbrains
sudo tar zxf /tmp/CLion-2016.3.2.tar.gz -C /opt/jetbrains
sudo mv /opt/jetbrains/clion-2016.3.2/ /opt/jetbrains/clion
sudo ln -s /opt/jetbrains/clion/bin/clion.sh /usr/local/bin/clion

