    EXPORT payload
    EXPORT arg_location

    ## Payload (must not be too short)
payload:
    ## Based on: xxd -g 1 -i echo.b
    data1 [
        0x06 0x09 0x67 0x20 0x07 0x13 0x07 0x13 0x13 0x20 0x09 0x08
        0x20 0x06 0x09 0x14 0x20 0x17 0x06 0x09 0x07 0x20 0x17 0x08
        0x03 0x10 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
        0x00 0x00 0x00 0x00 0x00 0x00 0x06 0x09 0x10 0x2a 0x20 0x13
        0x09 0x08 0x20 0x07 0x13 0x06 0x09 0x1b 0x2a 0x20 0x13 0x13
        0x20 0x07 0x13 0x07 0x09 0x10 0x20 0x13 0x08 0x2a 0x21 0x20
        0x03 0x17 0x07 0x09 0x08 0x20 0x13 0x10 0xfa 0x07 0x09 0x08
        0x20 0x13 0x09 0x01 0x20 0x07 0x09 0x10 0x20 0x17 0x08 0x04
        0x23 0x07 0x09 0x10 0x20 0x05 0x08 0x00
    ]
arg_location: