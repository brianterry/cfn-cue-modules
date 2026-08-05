package domainname

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	AppSyncDomainName: string
	HostedZoneId: string
	// The Amazon Resource Name (ARN) for the Domain Name.
	DomainNameArn: string
}
