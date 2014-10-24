# vehicle_msgs/Vector6ArrayStamped.msg
#
#   For instance it can be used to create an array of 6DOF force vector messages:
#
#       tau = [X, Y, Z, K, M, N]  as used in modelling equations
#       X, Y, Z are forces in Newtons. K, M, N are torques in Newton metres.

Header header
Vector6[] values        # array of array --> float32[][6]
