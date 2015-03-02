# vehicle_msgs/AcousticModemData.msg
#   This message carries binary payloads to be transmitted by, and received from, an acoustic modem.

uint32 MAX_PAYLOAD_SIZE = 2048      # largest possible payload (bytes)

Header header                       # message header

uint8 host                          # sending modem ID (ignored if outbound)
# uint8 receiver                    # receiving modem ID

uint8[] payload                     # array of bytes to send / received
