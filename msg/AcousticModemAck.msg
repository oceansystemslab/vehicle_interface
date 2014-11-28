# vehicle_msgs/AcousticModemAckMsg.msg
#   sends message acknowledgement information to the higher level software

Header header                           # message header

uint32 msg_id                           # unique message id (for acknowledgement management)
bool ack                                # if the message is acknowledged

diagnostic_msgs/KeyValue[] info         # optional field for additional data
