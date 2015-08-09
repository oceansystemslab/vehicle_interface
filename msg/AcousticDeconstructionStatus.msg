# vehicle_msgs/AcousticDeconstructionStatus.msg
#   reports the result of message deconstruction

Header header                          # message header
string status                          # status (e.g. enabled, disabled)
float64 time_packed                    # time of packing
float64 time_unpacked                  # time of unpacking
uint16 length

string message                         # payload

diagnostic_msgs/KeyValue[] info        # optional field for additional data
