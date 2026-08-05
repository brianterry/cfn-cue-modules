package decodermanifest

import "strings"

#Properties: {
	DefaultForUnmappedSignals?: #DefaultForUnmappedSignalsType
	Description?: string & =~"^[^\\u0000-\\u001F\\u007F]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ModelManifestArn: string
	Name: string & =~"^[a-zA-Z\\d\\-_:]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	NetworkInterfaces?: [...#CanNetworkInterface | #ObdNetworkInterface | #CustomDecodingNetworkInterface]
	SignalDecoders?: [...#CanSignalDecoder | #ObdSignalDecoder | #CustomDecodingSignalDecoder]
	Status?: #ManifestStatus
	Tags?: [...#Tag]
}

#CanInterface: {
	Name: string & strings.MinRunes(1) & strings.MaxRunes(100)
	ProtocolName?: string & strings.MinRunes(1) & strings.MaxRunes(50)
	ProtocolVersion?: string & strings.MinRunes(1) & strings.MaxRunes(50)
}

#CanNetworkInterface: {
	CanInterface: #CanInterface
	InterfaceId: string & strings.MinRunes(1) & strings.MaxRunes(50)
	Type: "CAN_INTERFACE"
}

#CanSignal: {
	Factor: number
	IsBigEndian: bool
	IsSigned: bool
	Length: int
	MessageId: int
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	Offset: number
	SignalValueType?: #SignalValueType
	StartBit: int
}

#CanSignalDecoder: {
	CanSignal: #CanSignal
	FullyQualifiedName: string & strings.MinRunes(1) & strings.MaxRunes(150)
	InterfaceId: string & strings.MinRunes(1) & strings.MaxRunes(50)
	Type: "CAN_SIGNAL"
}

#CustomDecodingInterface: {
	Name: string & =~"^[a-zA-Z\\d\\-_:]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
}

#CustomDecodingNetworkInterface: {
	CustomDecodingInterface: #CustomDecodingInterface
	InterfaceId: string & strings.MinRunes(1) & strings.MaxRunes(50)
	Type: "CUSTOM_DECODING_INTERFACE"
}

#CustomDecodingSignal: {
	Id: string & =~"^(?!.*\\.\\.)[a-zA-Z0-9_\\-#:.]+$" & strings.MinRunes(1) & strings.MaxRunes(150)
}

#CustomDecodingSignalDecoder: {
	CustomDecodingSignal: #CustomDecodingSignal
	FullyQualifiedName: string & strings.MinRunes(1) & strings.MaxRunes(150)
	InterfaceId: string & strings.MinRunes(1) & strings.MaxRunes(50)
	Type: "CUSTOM_DECODING_SIGNAL"
}

#ObdInterface: {
	DtcRequestIntervalSeconds?: int
	HasTransmissionEcu?: bool
	Name: string & strings.MinRunes(1) & strings.MaxRunes(100)
	ObdStandard?: string & strings.MinRunes(1) & strings.MaxRunes(50)
	PidRequestIntervalSeconds?: int
	RequestMessageId: int
	UseExtendedIds?: bool
}

#ObdNetworkInterface: {
	InterfaceId: string & strings.MinRunes(1) & strings.MaxRunes(50)
	ObdInterface: #ObdInterface
	Type: "OBD_INTERFACE"
}

#ObdSignal: {
	BitMaskLength?: int
	BitRightShift?: int
	ByteLength: int
	IsSigned?: bool
	Offset: number
	Pid: int
	PidResponseLength: int
	Scaling: number
	ServiceMode: int
	SignalValueType?: #SignalValueType
	StartByte: int
}

#ObdSignalDecoder: {
	FullyQualifiedName: string & strings.MinRunes(1) & strings.MaxRunes(150)
	InterfaceId: string & strings.MinRunes(1) & strings.MaxRunes(50)
	ObdSignal: #ObdSignal
	Type: "OBD_SIGNAL"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
