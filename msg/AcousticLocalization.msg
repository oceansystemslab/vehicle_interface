# vehicle_msgs/AcousticLocalization.msg
#   This message contains USBL localization data

Header header                           # message header
uint8 sender_address                    # address of the sending modem

float64 latitude
float64 longitude
float32 depth

float64 measurement_time
float32 accuracy
