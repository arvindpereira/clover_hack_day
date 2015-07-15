#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include "er1_motor_driver/Motors.h"
#include "er1_motor_driver/er.h"

void motorCommand( const er1_motor_driver::Motors::ConstPtr& msg ) {
	ROS_INFO("I received: [%.3f, %.3f]", msg->x_vel, msg->a_vel);
}

int main(int argc, char **argv) {
	ros::init(argc, argv, "er1_listener");

	ros::NodeHandle n;

	ros::Subscriber sub = n.subscribe("motor_out", 1000, motorCommand );

	ros::spin();

	return 0;
}