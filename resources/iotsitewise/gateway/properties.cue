package gateway

#Properties: {
	// A list of gateway capability summaries that each contain a namespace and status.
	GatewayCapabilitySummaries?: [...#GatewayCapabilitySummary]
	// A unique, friendly name for the gateway.
	GatewayName: string
	// The gateway's platform. You can only specify one platform in a gateway.
	GatewayPlatform: #GatewayPlatform
	// The version of the gateway you want to create.
	GatewayVersion?: string
	// A list of key-value pairs that contain metadata for the gateway.
	Tags?: [...#Tag]
}

#CapabilityConfiguration: string

#CapabilityNamespace: string

#GatewayCapabilitySummary: {
	CapabilityConfiguration?: #CapabilityConfiguration
	CapabilityNamespace: #CapabilityNamespace
}

#GatewayPlatform: {
	// A gateway that runs on AWS IoT Greengrass V2.
	GreengrassV2?: #GreengrassV2
	// A gateway that runs on Siemens Industrial Edge.
	SiemensIE?: #SiemensIE
}

#GatewayVersion: string

#GreengrassV2: {
	// The operating system of the core device in AWS IoT Greengrass V2.
	CoreDeviceOperatingSystem?: "LINUX_AARCH64" | "LINUX_AMD64" | "WINDOWS_AMD64"
	// The name of the CoreDevice in GreenGrass V2.
	CoreDeviceThingName: string
}

#SiemensIE: {
	// The name of the IoT Core Thing.
	IotCoreThingName: string
}

#Tag: {
	Key: string
	Value: string
}
