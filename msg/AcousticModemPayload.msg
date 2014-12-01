# vehicle_msgs/AcousticModemPayloadMsg.msg
#   sends message to the acoustic modem for transmission

Header header                           # message header

uint32 msg_id                           # unique message id (for acknowledgement management)
uint8 address                           # the address of sender/receiver
bool ack                                # if the message is to be acknowledged

string payload                          # the message payload

diagnostic_msgs/KeyValue[] info         # optional field for additional data
