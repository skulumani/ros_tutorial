## [ROS](http://www.ros.org/) (Robot Operating System) Tutorial

First you should go through the [ROS Tutorial](http://wiki.ros.org/)

## Working with ROS

* If you installed ROS from a package manager like apt, then those packages will not be write accessible and should not be edited by you the user. When working with ROS packages from source or when creating a new ROS package, you should always work in a directory that you have access to, like your home folder.

* If you're using Anaconda you might need to install 'catkin_pkg'

~~~
$ conda install pip --yes
$ conda install catkin_pkg --yes
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

~~~
$ cd work_dir/src
$ catkin_create_pkg <package_name> [depends1] [depends2] [depends3]
$ cd work_dir
$ catkin_make
$ . ./devel/setup.bash
~~~

* Check first level dependencies using `rospack depends1 <package_name>`
* Recursively check dependencies using `rospack depends <package_name>`