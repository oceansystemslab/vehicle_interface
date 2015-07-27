# vehicle_msgs/PathRequest.msg
#   this message represent the generic path request to be used with the path controller
#
#   to request a new path the caller shall set the command to CMD_PATH and provide a list of points (Vector6)
#   and optionally parameters (key, value) to be used by the navigation algorithms
#
#   alternatively further actions can be requested using this message setting a different value for the command field
#   for instance requesting the hovering state, pausing the navigation or resetting (ie. aborting) the navigation
#

# common commands
#   start:  start the navigation once a path as been loaded or requested
#   reset:  abort the navigation disabling the pilot module and cancelling the current path
#   hover:  pause the navigation (if any) and make the vehicle hold its position
#   path:   request a new path (this will produce a new path id)
string CMD_START=start
string CMD_RESET=reset
string CMD_HOVER=hover
string CMD_PATH=path

Header header                           # keep track of time
string command                          # request a given state in the path controller

Vector6[] points                        # (optional) list of waypoints (ie. control point for navigation)
diagnostic_msgs/KeyValue[] options      # (optional) list of options (ie. parameters for navigation algorithms)
