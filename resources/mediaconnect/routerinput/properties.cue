package routerinput

import "strings"

#Properties: {
	// The Availability Zone where you want to create the router input. This must be a valid Availability Zone for the region specified by regionName, or the current region if no regionName is provided.
	AvailabilityZone?: string
	Configuration: #RouterInputConfiguration
	ContentQualityAnalysisConfiguration?: #RouterContentQualityAnalysisConfiguration
	MaintenanceConfiguration?: #MaintenanceConfiguration
	// The maximum bitrate for the router input.
	MaximumBitrate: int
	// The name of the router input.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The Amazon Web Services Region for the router input. Defaults to the current region if not specified.
	RegionName?: string
	RoutingScope: #RoutingScope
	// Key-value pairs that can be used to tag and organize this router input.
	Tags?: [...#Tag]
	Tier: #RouterInputTier
	TransitEncryption?: #RouterInputTransitEncryption
}

#BlackFramesConfiguration: {
	State: #ContentQualityAnalysisState
	// The number of consecutive seconds of black frames that MediaConnect must detect before it reports an issue.
	ThresholdSeconds: int & >=10 & <=60
}

#ContentQualityAnalysisFeatureConfiguration: {
	BlackFrames?: #BlackFramesConfiguration
	FrozenFrames?: #FrozenFramesConfiguration
	SilentAudio?: #SilentAudioConfiguration
}

#FailoverRouterInputConfiguration: {
	// The ARN of the network interface to use for this failover router input.
	NetworkInterfaceArn: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:routerNetworkInterface:[a-z0-9]{12}$"
	// The index (0 or 1) that specifies which source in the protocol configurations list is currently active. Used to control which of the two failover sources is currently selected. This field is ignored when sourcePriorityMode is set to NO_PRIORITY
	PrimarySourceIndex?: int & >=0 & <=1
	// A list of exactly two protocol configurations for the failover input sources. Both must use the same protocol type.
	ProtocolConfigurations: [...#FailoverRouterInputProtocolConfiguration]
	SourcePriorityMode: #FailoverInputSourcePriorityMode
}

#FlowTransitEncryption: {
	EncryptionKeyConfiguration: #FlowTransitEncryptionKeyConfiguration
	EncryptionKeyType?: #FlowTransitEncryptionKeyType
}

#FrozenFramesConfiguration: {
	State: #ContentQualityAnalysisState
	// The number of consecutive seconds of a frozen frame that MediaConnect must detect before it reports an issue.
	ThresholdSeconds: int & >=10 & <=60
}

#MediaConnectFlowRouterInputConfiguration: {
	// The ARN of the flow to connect to.
	FlowArn?: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:flow:[a-zA-Z0-9-]+:[a-zA-Z0-9_-]+$"
	// The ARN of the flow output to connect to this router input.
	FlowOutputArn?: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:output:[a-zA-Z0-9-]+:[a-zA-Z0-9_-]+$"
	SourceTransitDecryption: #FlowTransitEncryption
}

#MediaLiveChannelRouterInputConfiguration: {
	// The ARN of the MediaLive channel to connect to this router input.
	MediaLiveChannelArn?: string & =~"^arn:(aws[a-zA-Z-]*):medialive:[a-z0-9-]+:[0-9]{12}:channel:[a-zA-Z0-9]+$"
	// The name of the MediaLive channel output to connect to this router input.
	MediaLiveChannelOutputName?: string
	MediaLivePipelineId?: #MediaLiveChannelPipelineId
	SourceTransitDecryption: #MediaLiveTransitEncryption
}

#MediaLiveTransitEncryption: {
	EncryptionKeyConfiguration: #MediaLiveTransitEncryptionKeyConfiguration
	EncryptionKeyType?: #MediaLiveTransitEncryptionKeyType
}

#MergeRouterInputConfiguration: {
	// The time window in milliseconds for merging the two input sources.
	MergeRecoveryWindowMilliseconds: int
	// The ARN of the network interface to use for this merge router input.
	NetworkInterfaceArn: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:routerNetworkInterface:[a-z0-9]{12}$"
	// A list of exactly two protocol configurations for the merge input sources. Both must use the same protocol type.
	ProtocolConfigurations: [...#MergeRouterInputProtocolConfiguration]
}

#PreferredDayTimeMaintenanceConfiguration: {
	Day: #Day
	// The preferred time for maintenance operations.
	Time: string
}

#RistRouterInputConfiguration: {
	// The port number used for the RIST protocol in the router input configuration.
	Port: int & >=3000 & <=30000
	// The recovery latency in milliseconds for the RIST protocol in the router input configuration.
	RecoveryLatencyMilliseconds: int & >=10 & <=10000
}

#RouterInputTransitEncryption: {
	EncryptionKeyConfiguration: #RouterInputTransitEncryptionKeyConfiguration
	EncryptionKeyType?: #RouterInputTransitEncryptionKeyType
}

#RtpRouterInputConfiguration: {
	ForwardErrorCorrection?: #ForwardErrorCorrectionState
	// The port number used for the RTP protocol in the router input configuration.
	Port: int & >=3000 & <=30000
}

#SecretsManagerEncryptionKeyConfiguration: {
	// The ARN of the IAM role assumed by MediaConnect to access the Secrets Manager secret.
	RoleArn: string & =~"^arn:(aws[a-zA-Z-]*):iam::[0-9]{12}:role/[a-zA-Z0-9_+=,.@-]+$"
	// The ARN of the Secrets Manager secret used for transit encryption.
	SecretArn: string & =~"^arn:(aws[a-zA-Z-]*):secretsmanager:[a-z0-9-]+:[0-9]{12}:secret:[a-zA-Z0-9/_+=.@-]+$"
}

#SilentAudioConfiguration: {
	State: #ContentQualityAnalysisState
	// The number of consecutive seconds of silence that MediaConnect must detect before it reports an issue.
	ThresholdSeconds: int & >=10 & <=60
}

#SrtCallerRouterInputConfiguration: {
	DecryptionConfiguration?: #SrtDecryptionConfiguration
	// The minimum latency in milliseconds for the SRT protocol in caller mode.
	MinimumLatencyMilliseconds: int & >=10 & <=10000
	// The source IP address for the SRT protocol in caller mode.
	SourceAddress: string
	// The source port number for the SRT protocol in caller mode.
	SourcePort: int & >=1024 & <=65535
	// The stream ID for the SRT protocol in caller mode.
	StreamId?: string
}

#SrtDecryptionConfiguration: {
	EncryptionKey: #SecretsManagerEncryptionKeyConfiguration
}

#SrtListenerRouterInputConfiguration: {
	DecryptionConfiguration?: #SrtDecryptionConfiguration
	// The minimum latency in milliseconds for the SRT protocol in listener mode.
	MinimumLatencyMilliseconds: int & >=10 & <=10000
	// The port number for the SRT protocol in listener mode.
	Port: int & >=3000 & <=30000
}

#StandardRouterInputConfiguration: {
	// The Amazon Resource Name (ARN) of the network interface associated with the standard router input.
	NetworkInterfaceArn: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:routerNetworkInterface:[a-z0-9]{12}$"
	Protocol?: #RouterInputProtocol
	ProtocolConfiguration: #RouterInputProtocolConfiguration
}

#Tag: {
	Key: string
	Value: string
}
