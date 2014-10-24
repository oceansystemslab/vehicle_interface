# vehicle_msgs/PathStatus.msg
#   reports the current status of the path

# navigation constants
#   they represent the state of the path control module
#   as they are linked to the internal fsm controlling the navigation
string NAV_RUNNING=running
string NAV_HOVERING=hovering
string NAV_IDLE=idle
string NAV_ERROR=error

# path constants
#   they signal the user the state of the current path identified by the path_id field
#   this can be used in user scripts to create complex missions or to keep track the vehicle's navigation
string PATH_IDLE=idle
string PATH_RUNNING=running
string PATH_COMPLETED=completed
string PATH_TIMEOUT=timeout
string PATH_ABORT=abort


Header header                           # message header

uint32 path_id                          # id of the current path
string navigation_status                # status of the path module (running, hovering, disabled) (see implementation)
string path_status                      # status of the current path (completed, aborted, timeout) (see implementation)

float32 time_elapsed                    # time since the path was started
float32 time_arrival                    # estimate based on the average speed so far
float32 time_start                      # path initial time
float32 time_end                        # path final time

float32 distance_completed              # navigation distance covered so far
float32 distance_left                   # navigation distance to the goal

float32 speed_average                   # navigation average speed at current time
float32 path_completion                 # fraction of the path completed (percentage)

diagnostic_msgs/KeyValue[] info         # optional field carrying additional info
