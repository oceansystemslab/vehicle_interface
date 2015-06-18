# vehicle_msgs/AcousticModemPayloadMsg.msg
#   sends message to the acoustic modem for transmission

Header header                           # message header

uint32 msg_id                           # unique message id (for acknowledgement management)
uint8 address                           # source address for inbound messages OR
                                        # destination address for outbound messages
bool ack                                # if the message is to be acknowledged
uint32 bitrate
float32 rssi                            # received signal strength indicator (dB re 1V)
float32 integrity                       # values above 100 are considered good
uint32 propagation_time                 # microseconds
uint32 duration                         # microseconds
float32 relative_velocity               # relative velocity between communicating devices in m/s

string payload                          # the message payload

diagnostic_msgs/KeyValue[] info         # optional field for additional data
