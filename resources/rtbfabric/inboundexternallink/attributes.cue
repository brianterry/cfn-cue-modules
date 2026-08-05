package inboundexternallink

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	LinkId: #LinkId
	Arn: #Arn
	DomainName: #DomainName
	LinkStatus: #LinkStatus
	CreatedTimestamp: #CreatedTimestamp
	UpdatedTimestamp: #UpdatedTimestamp
}
