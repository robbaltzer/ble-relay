# ble-relay

A simple POC app that runs on two Apple devices. A count is passed back and forth between the two devices, incrementing the count on each transfer. This uses BLE support in CoreBluetooth. Will show how Apple devices can be controllers and peripherals.

It also uses SwiftUI for its rudimentary UI.

This POC is for a functionality called Payjoin.
Generally Payjoin wallets will be running in peripheral mode, advertising their ability to participate in a payjoin. When a wallet wants to actually initiate a payjoin transaction, the wallet will start running in central mode, looking for peripherals that can join. Once complete, the wallet initiating wallet will go back into peripheral mode (with user consent).
