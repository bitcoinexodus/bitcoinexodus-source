### QoS (Quality of service) ###

This is a Linux bash script that will set up tc to limit the outgoing bandwidth for connections to the BitcoinExodus network. It limits outbound TCP traffic with a source or destination port of 21528, but not if the destination IP is within a LAN.

This means one can have an always-on bitcoinexodusd instance running, and another local bitcoinexodusd/bitcoinexodus-qt instance which connects to this node and receives blocks from it.
