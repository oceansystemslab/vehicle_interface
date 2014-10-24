# vehicle_msgs/PilotStatus.msg
#   reports the current status of the pilot

# status constants
string PILOT_ENABLED=enabled
string PILOT_DISABLED=disabled

# mode constants
string MODE_POSITION=position
string MODE_VELOCITY=velocity
string MODE_STATION=station


Header header                          # message header

string status                          # status (e.g. enabled, disabled)
string mode                            # mode (e.g. position tracking, velocity tracking, station keeping)

float32[6] des_pos                     # position goal
float32[6] des_vel                     # velocity goal
float32[6] err_pos                     # current error in position
float32[6] err_vel                     # current error in velocity

float32[6] lim_vel_user                # current velocity limits (user)
float32[6] lim_vel_ctrl                # current velocity limits (controller)

float32[6] available_forces            # estimation of available forces (given thruster config and efficiencies)
float32[] thruster_efficiency          # efficiency of available thrusters (vector)

diagnostic_msgs/KeyValue[] info        # optional field for additional data
