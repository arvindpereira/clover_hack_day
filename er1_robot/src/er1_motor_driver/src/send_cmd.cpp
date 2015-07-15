#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"

#include <sstream>

int main(int argc, char *argv[]) 
{
	ros::init(argc, argv, "send_cmd");

	// NodeHandle is the main access point to communications with the ROS system.
	// First NodeHandle constructed will fully initialize this node, and the last
	// NodeHandle destructed will close down the node.
	ros::NodeHandle n;

	ros::Publisher send_pub = n.advertise<std_msgs::String>("motor_out", 1000);

	ros::Rate loop_rate(10);

	int count = 0;
	while ( ros::ok() ) {
		std_msgs::String msg;

		std::stringstream ss;
		ss << "hello world " << count;
		msg.data = ss.str();

		ROS_INFO("%s", msg.data.c_str());

		send_pub.publish(msg);

		ros::spinOnce();

		loop_rate.sleep();
		++count;
	}
	return 0;
}