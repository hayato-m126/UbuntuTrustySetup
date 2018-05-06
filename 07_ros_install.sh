sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get -y update
sudo apt-get -y install ros-indigo-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc
source /opt/ros/indigo/setup.bash
sudo apt-get -y install python-rosinstall

#make catkin_workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_init_workspace src
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
catkin_make
source ~/.bashrc
cd -

#simulator
sudo apt-get -y install ros-indigo-kobuki-gazebo
sudo apt-get -y install ros-indigo-pr2-simulator
sudo apt-get -y install ros-indigo-turtlebot-gazebo
sudo apt-get -y install ros-indigo-uwsim
#raspimouse simulator
bash -exv -c "$(curl -sSfL https://git.io/raspimouse-sim-installer)"

#tool
sudo apt-get -y install ros-indigo-rqt*
#sudo apt-get -y install ros-indigo-rqt-ez-publisher #include in above
sudo apt-get -y install ros-indigo-rosdoc-lite
sudo apt-get -y install ros-indigo-usb-cam
sudo apt-get -y install ros-indigo-rosserial ros-indigo-rosserial-arduino
sudo apt-get -y install ros-indigo-joy

#joystic setting tool
sudo apt-get -y install jstest-gtk
