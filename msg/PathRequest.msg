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
string CMD_START=start                  # start the navigation once a path as been loaded or requested
string CMD_RESET=reset                  # abort the navigation disabling the pilot module and cancelling the current path
string CMD_HOVER=hover                  # pause the navigation (if any) and make the vehicle hold its position
string CMD_PATH=path                    # request a new path (this will produce a new path id)

Header header                           # keep track of time
string command                          # request a given state in the path controller

Vector6[] points                        # (optional) list of waypoints (ie. control point for navigation)
diagnostic_msgs/KeyValue[] options      # (optional) list of options (ie. parameters for navigation algorithms)
