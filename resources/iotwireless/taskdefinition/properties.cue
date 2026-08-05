package taskdefinition

import "strings"

#Properties: {
	// Whether to automatically create tasks using this task definition for all gateways with the specified current version. If false, the task must me created by calling CreateWirelessGatewayTask.
	AutoCreateTasks: bool
	// The list of task definitions.
	LoRaWANUpdateGatewayTaskEntry?: #LoRaWANUpdateGatewayTaskEntry
	// The name of the new resource.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// A list of key-value pairs that contain metadata for the destination.
	Tags?: [...#Tag]
	// A filter to list only the wireless gateway task definitions that use this task definition type
	TaskDefinitionType?: "UPDATE"
	// Information about the gateways to update.
	Update?: #UpdateWirelessGatewayTaskCreate
}

#LoRaWANGatewayVersion: {
	Model?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	PackageVersion?: string & strings.MinRunes(1) & strings.MaxRunes(32)
	Station?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#LoRaWANUpdateGatewayTaskCreate: {
	CurrentVersion?: #LoRaWANGatewayVersion
	SigKeyCrc?: int
	UpdateSignature?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	UpdateVersion?: #LoRaWANGatewayVersion
}

#LoRaWANUpdateGatewayTaskEntry: {
	CurrentVersion?: #LoRaWANGatewayVersion
	UpdateVersion?: #LoRaWANGatewayVersion
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#UpdateWirelessGatewayTaskCreate: {
	LoRaWAN?: #LoRaWANUpdateGatewayTaskCreate
	UpdateDataRole?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	UpdateDataSource?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}
