# vehicle_msgs/AcousticModemUSBL.msg
# message containing USBL data published by modem driver

Header header                           # message header which contains current timestamp

float32 measurement_time                # Timestamp of the target position measurement in the local devices System Time
uint8 remote_address                    # the target's address
float32 X                               # X coordinate of the target in the local device's reference frame in metres
float32 Y                               # Y coordinate of the target in the local device's reference frame in metres
float32 Z                               # Z coordinate of the target in the local device's reference frame in metres
float32 N                               # N coordinate of the target in the local device's reference frame in metres
float32 E                               # E coordinate of the target in the local device's reference frame in metres
float32 U                               # U coordinate of the target in the local device's reference frame in metres

float32 roll                            # rotation angles of the local device, in radians, floating point
float32 pitch
float32 yaw

float32 propagation_time                # time of flight between target and usbl modem transmission
float32 accuracy                        # accuracy of the position fix in metres

diagnostic_msgs/KeyValue[] info         # optional field for additional data
