git clone --recursive https://github.com/graft-project/graft-ng.git
cd graft-ng
git checkout alpha3
git submodule update --init --recursive
mkdir build
cd build
cmake -DENABLE_SYSLOG=ON ..
make -j4
