package channel

import "strings"

#Properties: {
	ChannelGroupName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	ChannelName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>Enter any descriptive text that helps you to identify the channel.</p>
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	InputSwitchConfiguration?: #InputSwitchConfiguration
	InputType?: #InputType
	OutputHeaderConfiguration?: #OutputHeaderConfiguration
	OutputLockingMode?: #OutputLockingMode
	Tags?: [...#Tag]
}

#IngestEndpoint: {
	// <p>The system-generated unique identifier for the IngestEndpoint.</p>
	Id?: string
	// <p>The ingest domain URL where the source stream should be sent.</p>
	Url?: string
}

#InputSwitchConfiguration: {
	// <p>When true, AWS Elemental MediaPackage performs input switching based on the MQCS. Default is false. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
	MQCSInputSwitching?: bool
	// <p>For CMAF inputs, indicates which input MediaPackage should prefer when both inputs have equal MQCS scores. Select <code>1</code> to prefer the first ingest endpoint, or <code>2</code> to prefer the second ingest endpoint. If you don't specify a preferred input, MediaPackage uses its default switching behavior when MQCS scores are equal.</p>
	PreferredInput?: int & >=1 & <=2
}

#InputType: "HLS" | "CMAF"

#OutputHeaderConfiguration: {
	// <p>When true, AWS Elemental MediaPackage includes the MQCS in responses to the CDN. This setting is valid only when <code>InputType</code> is <code>CMAF</code>.</p>
	PublishMQCS?: bool
}

#OutputLockingMode: "EPOCH_LOCKED" | "NON_EPOCH_LOCKED"

#Tag: {
	Key?: string
	Value?: string
}
