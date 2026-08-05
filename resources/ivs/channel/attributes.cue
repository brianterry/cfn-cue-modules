package channel

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Channel ARN is automatically generated on creation and assigned as the unique identifier.
	Arn: string & =~"^arn:aws:ivs:[a-z0-9-]+:[0-9]+:channel/[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Channel Playback URL.
	PlaybackUrl: string
	// Channel ingest endpoint, part of the definition of an ingest server, used when you set up streaming software.
	IngestEndpoint: string
}
