## [ROS](http://www.ros.org/) (Robot Operating System) Tutorial

First you should go through the [ROS Tutorial](http://wiki.ros.org/)

## Helpful guide

* [ROS Intro](http://robohub.org/ros-101-intro-to-the-robot-operating-system/)
* [ROS Book](https://cse.sc.edu/~jokane/agitr/)

## Working with ROS

* If you installed ROS from a package manager like apt, then those packages will not be write accessible and should not be edited by you the user. When working with ROS packages from source or when creating a new ROS package, you should always work in a directory that you have access to, like your home folder.

* Don't use Anaconda, but instead use the built-in python (and install pip)

~~~
$ sudo apt-get install python-pip python3-pip
$ pip3 install --user rospkg catkin_pkg
~~~

* Setup the environment variables for the workspace by `$ source devel/setup.bash`

### Tools

* `rospack find packagename` - find path to ROS packages
* `roscd, rosls` - same as `cd,ls` but for ROS packages on your `echo $ROS_PACKAGE_PATH`

~~~
You may have noticed a pattern with the naming of the ROS tools:

rospack = ros + pack(age)
roscd = ros + cd
rosls = ros + ls
~~~

### Building a package

* Check first level dependencies using `rospack depends1 <package_name>`
* Recursively check dependencies using `rospack depends <package_name>`

### Steps

1. Create a "Catkin Workspace" 

~~~
$ cd ~/catkin_ws/src
$ catkin_init_workspace
~~~

2. Create a catkin package
~~~
$ cd work_dir/src
$ catkin_create_pkg <package_name> [depends1] [depends2] [depends3]
$ cd work_dir
$ catkin_make
$ source ./devel/setup.bash
~~~

3. [Nodes](http://wiki.ros.org/ROS/Tutorials/UnderstandingNodes)
    1. `roscore` - this runs the Master server to coordinate all the nodes
    2. `rosnode` - allows you to query a node and find info about it
    3. `rosrun` - run a node from a package