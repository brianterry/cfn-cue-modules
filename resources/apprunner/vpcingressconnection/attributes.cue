package vpcingressconnection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the VpcIngressConnection.
	VpcIngressConnectionArn: string & =~"arn:aws(-[\\w]+)*:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[0-9]{12}:(\\w|/|-){1,1011}" & strings.MinRunes(1) & strings.MaxRunes(1011)
	// The Domain name associated with the VPC Ingress Connection.
	DomainName: string & =~"[A-Za-z0-9*.-]{1,255}" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The current status of the VpcIngressConnection.
	Status: "AVAILABLE" | "PENDING_CREATION" | "PENDING_UPDATE" | "PENDING_DELETION" | "FAILED_CREATION" | "FAILED_UPDATE" | "FAILED_DELETION" | "DELETED"
}
