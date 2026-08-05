package bucket

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: #Arn
	DomainName: string
	DualStackDomainName: string
	RegionalDomainName: string
	// The metadata table configuration of an S3 general purpose bucket.
	MetadataTableConfiguration: #MetadataTableConfiguration
	// The S3 Metadata configuration for a general purpose bucket.
	MetadataConfiguration: #MetadataConfiguration
	WebsiteURL: string
}
