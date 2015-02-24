# vehicle_msgs/AcousticLocalization.msg
# message containing USBL localization data

Header header                           # message header which contains current timestamp

uint8  sender_address

float64 latitude
float64 longitude
float32 depth

float64 measurement_time

float32 accuracy

