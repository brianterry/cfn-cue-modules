package partnership

import "strings"

#Properties: {
	Capabilities: [...string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)]
	CapabilityOptions?: #CapabilityOptions
	Email: string & =~"^[\\w\\.\\-]+@[\\w\\.\\-]+$" & strings.MinRunes(5) & strings.MaxRunes(254)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(254)
	Phone?: string & =~"^\\+?([0-9 \\t\\-()\\/]{7,})(?:\\s*(?:#|x\\.?|ext\\.?|extension) \\t*(\\d+))?$" & strings.MinRunes(7) & strings.MaxRunes(22)
	ProfileId: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Tags?: [...#Tag]
}

#CapabilityOptions: {
	InboundEdi?: #InboundEdiOptions
	OutboundEdi?: #OutboundEdiOptions
}

#InboundEdiOptions: {
	X12?: #X12InboundEdiOptions
}

#LineTerminator: "CRLF" | "LF" | "CR"

#OutboundEdiOptions: {
	X12: #X12Envelope
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WrapFormat: "SEGMENT" | "ONE_LINE" | "LINE_LENGTH"

#WrapOptions: {
	LineLength?: number & >=1
	LineTerminator?: #LineTerminator
	WrapBy?: #WrapFormat
}

#X12AcknowledgmentOptions: {
	FunctionalAcknowledgment: #X12FunctionalAcknowledgment
	TechnicalAcknowledgment: #X12TechnicalAcknowledgment
}

#X12ControlNumbers: {
	StartingFunctionalGroupControlNumber?: number & >=1 & <=9.99999999e+08
	StartingInterchangeControlNumber?: number & >=1 & <=9.99999999e+08
	StartingTransactionSetControlNumber?: number & >=1 & <=9.99999999e+08
}

#X12Delimiters: {
	ComponentSeparator?: string & =~"^[!&'()*+,\\-./:;?=%@\\[\\]_{}|<>~^`\"]$" & strings.MinRunes(1) & strings.MaxRunes(1)
	DataElementSeparator?: string & =~"^[!&'()*+,\\-./:;?=%@\\[\\]_{}|<>~^`\"]$" & strings.MinRunes(1) & strings.MaxRunes(1)
	SegmentTerminator?: string & =~"^[!&'()*+,\\-./:;?=%@\\[\\]_{}|<>~^`\"]$" & strings.MinRunes(1) & strings.MaxRunes(1)
}

#X12Envelope: {
	Common?: #X12OutboundEdiHeaders
	WrapOptions?: #WrapOptions
}

#X12FunctionalAcknowledgment: "DO_NOT_GENERATE" | "GENERATE_ALL_SEGMENTS" | "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP"

#X12FunctionalGroupHeaders: {
	ApplicationReceiverCode?: string & =~"^[a-zA-Z0-9 ]*$" & strings.MinRunes(2) & strings.MaxRunes(15)
	ApplicationSenderCode?: string & =~"^[a-zA-Z0-9 ]*$" & strings.MinRunes(2) & strings.MaxRunes(15)
	ResponsibleAgencyCode?: string & =~"^[a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(2)
}

#X12GS05TimeFormat: "HHMM" | "HHMMSS" | "HHMMSSDD"

#X12InboundEdiOptions: {
	AcknowledgmentOptions?: #X12AcknowledgmentOptions
}

#X12InterchangeControlHeaders: {
	AcknowledgmentRequestedCode?: string & =~"^[a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(1)
	ReceiverId?: string & =~"^[a-zA-Z0-9 ]*$" & strings.MinRunes(15) & strings.MaxRunes(15)
	ReceiverIdQualifier?: string & =~"^[a-zA-Z0-9]*$" & strings.MinRunes(2) & strings.MaxRunes(2)
	RepetitionSeparator?: string & strings.MinRunes(1) & strings.MaxRunes(1)
	SenderId?: string & =~"^[a-zA-Z0-9 ]*$" & strings.MinRunes(15) & strings.MaxRunes(15)
	SenderIdQualifier?: string & =~"^[a-zA-Z0-9]*$" & strings.MinRunes(2) & strings.MaxRunes(2)
	UsageIndicatorCode?: string & =~"^[a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(1)
}

#X12OutboundEdiHeaders: {
	ControlNumbers?: #X12ControlNumbers
	Delimiters?: #X12Delimiters
	FunctionalGroupHeaders?: #X12FunctionalGroupHeaders
	Gs05TimeFormat?: #X12GS05TimeFormat
	InterchangeControlHeaders?: #X12InterchangeControlHeaders
	ValidateEdi?: bool
}

#X12TechnicalAcknowledgment: "DO_NOT_GENERATE" | "GENERATE_ALL_SEGMENTS"
