package config

#Properties: {
	ConfigData: #ConfigData
	Name: string & =~"^[ a-zA-Z0-9_:-]{1,256}$"
	Tags?: [...#Tag]
}

#AntennaDownlinkConfig: {
	SpectrumConfig?: #SpectrumConfig
}

#AntennaDownlinkDemodDecodeConfig: {
	DecodeConfig?: #DecodeConfig
	DemodulationConfig?: #DemodulationConfig
	SpectrumConfig?: #SpectrumConfig
}

#AntennaUplinkConfig: {
	SpectrumConfig?: #UplinkSpectrumConfig
	TargetEirp?: #Eirp
	TransmitDisabled?: bool
}

#ConfigData: {
	AntennaDownlinkConfig?: #AntennaDownlinkConfig
	AntennaDownlinkDemodDecodeConfig?: #AntennaDownlinkDemodDecodeConfig
	AntennaUplinkConfig?: #AntennaUplinkConfig
	DataflowEndpointConfig?: #DataflowEndpointConfig
	S3RecordingConfig?: #S3RecordingConfig
	TelemetrySinkConfig?: #TelemetrySinkConfig
	TrackingConfig?: #TrackingConfig
	UplinkEchoConfig?: #UplinkEchoConfig
}

#DataflowEndpointConfig: {
	DataflowEndpointName?: string
	DataflowEndpointRegion?: string
}

#DecodeConfig: {
	UnvalidatedJSON?: #JsonString
}

#DemodulationConfig: {
	UnvalidatedJSON?: #JsonString
}

#Eirp: {
	Units?: #EirpUnits
	Value?: number
}

#Frequency: {
	Units?: #FrequencyUnits
	Value?: number
}

#FrequencyBandwidth: {
	Units?: #BandwidthUnits
	Value?: number
}

#KinesisDataStreamData: {
	KinesisDataStreamArn: #KinesisDataStreamArn
	KinesisRoleArn: #RoleArn
}

#S3RecordingConfig: {
	BucketArn?: #BucketArn
	Prefix?: #S3KeyPrefix
	RoleArn?: #RoleArn
}

#SpectrumConfig: {
	Bandwidth?: #FrequencyBandwidth
	CenterFrequency?: #Frequency
	Polarization?: #Polarization
}

#Tag: {
	Key?: string & =~"^[ a-zA-Z0-9\\+\\-=._:/@]{1,128}$"
	Value?: string & =~"^[ a-zA-Z0-9\\+\\-=._:/@]{1,256}$"
}

#TelemetrySinkConfig: {
	TelemetrySinkData: #TelemetrySinkData
	TelemetrySinkType: #TelemetrySinkType
}

#TelemetrySinkData: {
	KinesisDataStreamData?: #KinesisDataStreamData
}

#TrackingConfig: {
	Autotrack?: "REQUIRED" | "PREFERRED" | "REMOVED"
}

#UplinkEchoConfig: {
	AntennaUplinkConfigArn?: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
	Enabled?: bool
}

#UplinkSpectrumConfig: {
	CenterFrequency?: #Frequency
	Polarization?: #Polarization
}
