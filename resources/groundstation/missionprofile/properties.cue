package missionprofile

#Properties: {
	// Post-pass time needed after the contact.
	ContactPostPassDurationSeconds?: int
	// Pre-pass time needed before the contact.
	ContactPrePassDurationSeconds?: int
	DataflowEdges: [...#DataflowEdge]
	// Visibilities with shorter duration than the specified minimum viable contact duration will be ignored when searching for available contacts.
	MinimumViableContactDurationSeconds: int
	// A name used to identify a mission profile.
	Name: string & =~"^[ a-zA-Z0-9_:-]{1,256}$"
	// The ARN of a KMS Key used for encrypting data during transmission from the source to destination locations.
	StreamsKmsKey?: #StreamsKmsKey
	// The ARN of the KMS Key or Alias Key role used to define permissions on KMS Key usage.
	StreamsKmsRole?: string
	Tags?: [...#Tag]
	// ARN of a Config resource of type TelemetrySinkConfig used for telemetry data sink configuration.
	TelemetrySinkConfigArn?: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
	TrackingConfigArn: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
}

#DataflowEdge: {
	Destination?: string
	Source?: string
}

#StreamsKmsKey: {
	KmsAliasArn?: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
	KmsAliasName?: string & =~"^alias/[a-zA-Z0-9:/_-]+$"
	KmsKeyArn?: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
}

#Tag: {
	Key: string & =~"^[ a-zA-Z0-9\\+\\-=._:/@]{1,128}$"
	Value: string & =~"^[ a-zA-Z0-9\\+\\-=._:/@]{1,256}$"
}
