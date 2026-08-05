package ingestconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// IngestConfiguration ARN is automatically generated on creation and assigned as the unique identifier.
	Arn: string & =~"^arn:aws:ivs:[a-z0-9-]+:[0-9]+:ingest-configuration/[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Participant Id is automatically generated on creation and assigned.
	ParticipantId: string & =~"^[a-zA-Z0-9-_]*$" & strings.MinRunes(0) & strings.MaxRunes(64)
	// Stream-key value.
	StreamKey: string
	// State of IngestConfiguration which determines whether IngestConfiguration is in use or not.
	State: "ACTIVE" | "INACTIVE"
}
