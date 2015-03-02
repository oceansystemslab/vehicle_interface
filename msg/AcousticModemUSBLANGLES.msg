# vehicle_msgs/AcousticModemUSBLANGLES.msg
# message containing USBL data published by modem driver

Header header                           # message header which contains current timestamp

float32 measurement_time                # Timestamp of the target position measurement in the local devices System Time
uint8 remote_address                    # the target's address

float32 lbearing			            # Target bearing in the local device's reference frame, in radians
float32 lelevation			            # Target elevation in the local device's reference frame, in radians

float32 bearing				            # Target bearing, motion-compensated, in radians.
float32 elevation			            # Target elevation, motion-compensated, in radians.

float32 roll                            # rotation angles of the local device, in radians, floating point
float32 pitch
float32 yaw

float32 accuracy                        # accuracy of the position fix in metres

diagnostic_msgs/KeyValue[] info         # optional field for additional data
