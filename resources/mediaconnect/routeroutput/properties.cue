package routeroutput

import "strings"

#Properties: {
	// The Availability Zone where you want to create the router output. This must be a valid Availability Zone for the region specified by regionName, or the current region if no regionName is provided.
	AvailabilityZone?: string
	Configuration: #RouterOutputConfiguration
	MaintenanceConfiguration?: #MaintenanceConfiguration
	// The maximum bitrate for the router output.
	MaximumBitrate: int
	// The name of the router output.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The Amazon Web Services Region for the router output. Defaults to the current region if not specified.
	RegionName?: string
	RoutingScope: #RoutingScope
	// Key-value pairs that can be used to tag this router output.
	Tags?: [...#Tag]
	Tier: #RouterOutputTier
}

#AutomaticEncryptionKeyConfiguration: {...}

#Day: "MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY" | "SUNDAY"

#DefaultMaintenanceConfiguration: {...}

#FlowTransitEncryption: {
	EncryptionKeyConfiguration: #FlowTransitEncryptionKeyConfiguration
	EncryptionKeyType?: #FlowTransitEncryptionKeyType
}

#FlowTransitEncryptionKeyConfiguration: {
	SecretsManager: #SecretsManagerEncryptionKeyConfiguration
} | {
	Automatic: #AutomaticEncryptionKeyConfiguration
}

#FlowTransitEncryptionKeyType: "SECRETS_MANAGER" | "AUTOMATIC"

#ForwardErrorCorrectionState: "ENABLED" | "DISABLED"

#MaintenanceConfiguration: {
	PreferredDayTime: #PreferredDayTimeMaintenanceConfiguration
} | {
	Default: #DefaultMaintenanceConfiguration
}

#MaintenanceType: "PREFERRED_DAY_TIME" | "DEFAULT"

#MediaConnectFlowRouterOutputConfiguration: {
	DestinationTransitEncryption: #FlowTransitEncryption
	// The ARN of the flow to connect to this router output.
	FlowArn?: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:flow:[a-zA-Z0-9-]+:[a-zA-Z0-9_-]+$"
	// The ARN of the flow source to connect to this router output.
	FlowSourceArn?: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:source:[a-zA-Z0-9-]+:[a-zA-Z0-9_-]+$"
}

#MediaLiveInputPipelineId: "PIPELINE_0" | "PIPELINE_1"

#MediaLiveInputRouterOutputConfiguration: {
	DestinationTransitEncryption: #MediaLiveTransitEncryption
	// The ARN of the MediaLive input to connect to this router output.
	MediaLiveInputArn?: string & =~"^arn:(aws[a-zA-Z-]*):medialive:[a-z0-9-]+:[0-9]{12}:input:[a-zA-Z0-9]+$"
	MediaLivePipelineId?: #MediaLiveInputPipelineId
}

#MediaLiveTransitEncryption: {
	EncryptionKeyConfiguration: #MediaLiveTransitEncryptionKeyConfiguration
	EncryptionKeyType?: #MediaLiveTransitEncryptionKeyType
}

#MediaLiveTransitEncryptionKeyConfiguration: {
	SecretsManager: #SecretsManagerEncryptionKeyConfiguration
} | {
	Automatic: #AutomaticEncryptionKeyConfiguration
}

#MediaLiveTransitEncryptionKeyType: "SECRETS_MANAGER" | "AUTOMATIC"

#PreferredDayTimeMaintenanceConfiguration: {
	Day: #Day
	// The preferred time for maintenance operations.
	Time: string
}

#RistRouterOutputConfiguration: {
	// The destination IP address for the RIST protocol in the router output configuration.
	DestinationAddress: string
	// The destination port number for the RIST protocol in the router output configuration.
	DestinationPort: int & >=1024 & <=65535
}

#RouterOutputConfiguration: {
	Standard: #StandardRouterOutputConfiguration
} | {
	MediaConnectFlow: #MediaConnectFlowRouterOutputConfiguration
} | {
	MediaLiveInput: #MediaLiveInputRouterOutputConfiguration
}

#RouterOutputProtocol: "RTP" | "RIST" | "SRT_CALLER" | "SRT_LISTENER"

#RouterOutputProtocolConfiguration: {
	Rtp: #RtpRouterOutputConfiguration
} | {
	Rist: #RistRouterOutputConfiguration
} | {
	SrtListener: #SrtListenerRouterOutputConfiguration
} | {
	SrtCaller: #SrtCallerRouterOutputConfiguration
}

#RouterOutputRoutedState: "ROUTED" | "ROUTING" | "UNROUTED"

#RouterOutputState: "CREATING" | "STANDBY" | "STARTING" | "ACTIVE" | "STOPPING" | "DELETING" | "UPDATING" | "ERROR" | "RECOVERING" | "MIGRATING"

#RouterOutputTier: "OUTPUT_100" | "OUTPUT_50" | "OUTPUT_20"

#RouterOutputType: "STANDARD" | "MEDIACONNECT_FLOW" | "MEDIALIVE_INPUT"

#RoutingScope: "REGIONAL" | "GLOBAL"

#RtpRouterOutputConfiguration: {
	// The destination IP address for the RTP protocol in the router output configuration.
	DestinationAddress: string
	// The destination port number for the RTP protocol in the router output configuration.
	DestinationPort: int & >=1024 & <=65531
	ForwardErrorCorrection?: #ForwardErrorCorrectionState
}

#SecretsManagerEncryptionKeyConfiguration: {
	// The ARN of the IAM role assumed by MediaConnect to access the Secrets Manager secret.
	RoleArn: string & =~"^arn:(aws[a-zA-Z-]*):iam::[0-9]{12}:role/[a-zA-Z0-9_+=,.@-]+$"
	// The ARN of the Secrets Manager secret used for transit encryption.
	SecretArn: string & =~"^arn:(aws[a-zA-Z-]*):secretsmanager:[a-z0-9-]+:[0-9]{12}:secret:[a-zA-Z0-9/_+=.@-]+$"
}

#SrtCallerRouterOutputConfiguration: {
	// The destination IP address for the SRT protocol in caller mode.
	DestinationAddress: string
	// The destination port number for the SRT protocol in caller mode.
	DestinationPort: int & >=1024 & <=65535
	EncryptionConfiguration?: #SrtEncryptionConfiguration
	// The minimum latency in milliseconds for the SRT protocol in caller mode.
	MinimumLatencyMilliseconds: int & >=10 & <=10000
	// The stream ID for the SRT protocol in caller mode.
	StreamId?: string
}

#SrtEncryptionConfiguration: {
	EncryptionKey: #SecretsManagerEncryptionKeyConfiguration
}

#SrtListenerRouterOutputConfiguration: {
	EncryptionConfiguration?: #SrtEncryptionConfiguration
	// The minimum latency in milliseconds for the SRT protocol in listener mode.
	MinimumLatencyMilliseconds: int & >=10 & <=10000
	// The port number for the SRT protocol in listener mode.
	Port: int & >=3000 & <=30000
}

#StandardRouterOutputConfiguration: {
	// The Amazon Resource Name (ARN) of the network interface associated with the standard router output.
	NetworkInterfaceArn: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:routerNetworkInterface:[a-z0-9]{12}$"
	Protocol?: #RouterOutputProtocol
	ProtocolConfiguration: #RouterOutputProtocolConfiguration
}

#Tag: {
	Key: string
	Value: string
}

#Unit: {...}
