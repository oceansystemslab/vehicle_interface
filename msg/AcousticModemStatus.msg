# vehicle_msgs/ModemStatus.msg
#   reports the current status of the modem

# status constants
string MODEM_ENABLED=enabled
string MODEM_DISABLED=disabled

Header header                          # message header
string status                          # status (e.g. enabled, disabled)
float32 battery_level                  # voltage of the batteries

diagnostic_msgs/KeyValue[] info        # optional field for additional data
