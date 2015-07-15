#include "ros/ros.h"
#include "er1_motor_driver/AddTwoInts.h"

bool add(er1_motor_driver::AddTwoInts::Request &req,
		er1_motor_driver::AddTwoInts::Response &res) {
	res.sum = req.a + req.b;
	ROS_INFO("Request: x=%ld, y=%ld", (long int)req.a, (long int)req.b);
	ROS_INFO("sending back response: [%ld]", (long int)res.sum);
	return true;
}


int main(int argc, char *argv[]) {
	ros::init(argc, argv, "add_two_ints_server");
	ros::NodeHandle n;

	ros::ServiceServer service = n.advertiseService("add_two_ints", add);
	ROS_INFO("Ready to add two ints.");
	ros::spin();

	return 0;
}