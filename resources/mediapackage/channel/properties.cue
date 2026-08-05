package channel

import "strings"

#Properties: {
	// A short text description of the Channel.
	Description?: string
	// The configuration parameters for egress access logging.
	EgressAccessLogs?: #LogConfiguration
	// The ID of the Channel.
	Id: string & =~"\\A[0-9a-zA-Z-_]+\\Z" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The configuration parameters for egress access logging.
	IngressAccessLogs?: #LogConfiguration
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#HlsIngest: {
	// A list of endpoints to which the source stream should be sent.
	ingestEndpoints?: [...#IngestEndpoint]
}

#IngestEndpoint: {
	// The system generated unique identifier for the IngestEndpoint
	Id?: string
	// The system generated password for ingest authentication.
	Password?: string
	// The ingest URL to which the source stream should be sent.
	Url?: string
	// The system generated username for ingest authentication.
	Username?: string
}

#LogConfiguration: {
	// Sets a custom AWS CloudWatch log group name for access logs. If a log group name isn't specified, the defaults are used: /aws/MediaPackage/EgressAccessLogs for egress access logs and /aws/MediaPackage/IngressAccessLogs for ingress access logs.
	LogGroupName?: string & =~"\\A^(\\/aws\\/MediaPackage\\/)[a-zA-Z0-9_-]+\\Z" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Tag: {
	Key: string
	Value: string
}
