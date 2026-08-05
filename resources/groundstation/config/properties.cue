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

#BandwidthUnits: "GHz" | "MHz" | "kHz"

#BucketArn: string & =~"^arn:aws[A-Za-z0-9-]{0,64}:s3:::[A-Za-z0-9-]{1,64}$"

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

#EirpUnits: "dBW"

#Frequency: {
	Units?: #FrequencyUnits
	Value?: number
}

#FrequencyBandwidth: {
	Units?: #BandwidthUnits
	Value?: number
}

#FrequencyUnits: "GHz" | "MHz" | "kHz"

#JsonString: string & =~"^[{}\\[\\]:.,\"0-9A-z\\-_\\s]{1,8192}$"

#KinesisDataStreamArn: string & =~"^arn:[a-z0-9-.]{1,63}:kinesis:[-a-z0-9]{1,50}:[0-9]{12}:stream/[a-zA-Z0-9_.-]{1,128}$"

#KinesisDataStreamData: {
	KinesisDataStreamArn: #KinesisDataStreamArn
	KinesisRoleArn: #RoleArn
}

#Polarization: "LEFT_HAND" | "RIGHT_HAND" | "NONE"

#RoleArn: string & =~"^arn:[^:\\n]+:iam::[^:\\n]+:role\\/.+$"

#S3KeyPrefix: string & =~"^([a-zA-Z0-9_\\-=/]|\\{satellite_id\\}|\\{config\\-name}|\\{s3\\-config-id}|\\{year\\}|\\{month\\}|\\{day\\}){1,900}$"

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

#TelemetrySinkType: "KINESIS_DATA_STREAM"

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
