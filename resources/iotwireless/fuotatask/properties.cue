package fuotatask

import "strings"

#Properties: {
	// Multicast group to associate. Only for update request.
	AssociateMulticastGroup?: string & strings.MaxRunes(256)
	// Wireless device to associate. Only for update request.
	AssociateWirelessDevice?: string & strings.MaxRunes(256)
	// FUOTA task description
	Description?: string & strings.MaxRunes(2048)
	// Multicast group to disassociate. Only for update request.
	DisassociateMulticastGroup?: string & strings.MaxRunes(256)
	// Wireless device to disassociate. Only for update request.
	DisassociateWirelessDevice?: string & strings.MaxRunes(256)
	// FUOTA task firmware update image binary S3 link
	FirmwareUpdateImage: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// FUOTA task firmware IAM role for reading S3
	FirmwareUpdateRole: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// Name of FUOTA task
	Name?: string & strings.MaxRunes(256)
	// A list of key-value pairs that contain metadata for the FUOTA task.
	Tags?: [...#Tag]
}

#LoRaWAN: {
	// FUOTA task LoRaWAN RF region
	RfRegion: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// FUOTA task LoRaWAN start time
	StartTime?: string & strings.MaxRunes(64)
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
