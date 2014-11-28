# vehicle_msgs/ModemStatus.msg
#   reports the current status of the modem

# status constants
string MODEM_ENABLED=enabled
string MODEM_DISABLED=disabled

Header header                          # message header

string status                          # status (e.g. enabled, disabled)

diagnostic_msgs/KeyValue[] info        # optional field for additional data
