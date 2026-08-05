package input

#Properties: {
	Destinations?: [...#InputDestinationRequest]
	InputDevices?: [...#InputDeviceSettings]
	InputNetworkLocation?: string
	InputSecurityGroups?: [...string]
	MediaConnectFlows?: [...#MediaConnectFlowRequest]
	MulticastSettings?: #MulticastSettingsCreateRequest
	Name?: string
	RoleArn?: string
	RouterSettings?: #RouterSettings
	SdiSources?: [...string]
	Smpte2110ReceiverGroupSettings?: #Smpte2110ReceiverGroupSettings
	Sources?: [...#InputSourceRequest]
	SrtSettings?: #SrtSettingsRequest
	Tags?: {...}
	Type?: string
	Vpc?: #InputVpcRequest
}

#InputDestinationRequest: {
	Network?: string
	NetworkRoutes?: [...#InputRequestDestinationRoute]
	StaticIpAddress?: string
	StreamName?: string
}

#InputDeviceSettings: {
	Id?: string
}

#InputRequestDestinationRoute: {
	Cidr?: string
	Gateway?: string
}

#InputSdpLocation: {
	MediaIndex?: int
	SdpUrl?: string
}

#InputSourceRequest: {
	PasswordParam?: string
	Url?: string
	Username?: string
}

#InputVpcRequest: {
	SecurityGroupIds?: [...string]
	SubnetIds?: [...string]
}

#MediaConnectFlowRequest: {
	FlowArn?: string
}

#MulticastSettingsCreateRequest: {
	Sources?: [...#MulticastSourceCreateRequest]
}

#MulticastSourceCreateRequest: {
	SourceIp?: string
	Url?: string
}

#RouterDestinationSettings: {
	AvailabilityZoneName?: string
}

#RouterSettings: {
	Destinations?: [...#RouterDestinationSettings]
	EncryptionType?: string
	SecretArn?: string
}

#Smpte2110ReceiverGroup: {
	SdpSettings?: #Smpte2110ReceiverGroupSdpSettings
}

#Smpte2110ReceiverGroupSdpSettings: {
	AncillarySdps?: [...#InputSdpLocation]
	AudioSdps?: [...#InputSdpLocation]
	VideoSdp?: #InputSdpLocation
}

#Smpte2110ReceiverGroupSettings: {
	Smpte2110ReceiverGroups?: [...#Smpte2110ReceiverGroup]
}

#SrtCallerDecryptionRequest: {
	Algorithm?: string
	PassphraseSecretArn?: string
}

#SrtCallerSourceRequest: {
	Decryption?: #SrtCallerDecryptionRequest
	MinimumLatency?: int
	SrtListenerAddress?: string
	SrtListenerPort?: string
	StreamId?: string
}

#SrtListenerDecryptionRequest: {
	Algorithm?: string
	PassphraseSecretArn?: string
}

#SrtListenerSettingsRequest: {
	Decryption?: #SrtListenerDecryptionRequest
	MinimumLatency?: int
	StreamId?: string
}

#SrtSettingsRequest: {
	SrtCallerSources?: [...#SrtCallerSourceRequest]
	SrtListenerSettings?: #SrtListenerSettingsRequest
}
