package multicastgroup

import "strings"

#Properties: {
	// Wireless device to associate. Only for update request.
	AssociateWirelessDevice?: string & strings.MaxRunes(256)
	// Multicast group description
	Description?: string & strings.MaxRunes(2048)
	// Wireless device to disassociate. Only for update request.
	DisassociateWirelessDevice?: string & strings.MaxRunes(256)
	// Name of Multicast group
	Name?: string & strings.MaxRunes(256)
	// A list of key-value pairs that contain metadata for the Multicast group.
	Tags?: [...#Tag]
}

#LoRaWAN: {
	// Multicast group LoRaWAN DL Class
	DlClass: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// Multicast group number of devices in group. Returned after successful read.
	NumberOfDevicesInGroup?: int
	// Multicast group number of devices requested. Returned after successful read.
	NumberOfDevicesRequested?: int
	// Multicast group LoRaWAN RF region
	RfRegion: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
