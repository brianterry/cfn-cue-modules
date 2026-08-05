package vpcconnector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of this VPC connector.
	VpcConnectorArn: string & =~"arn:aws(-[\\w]+)*:[a-z0-9-\\\\.]{0,63}:[a-z0-9-\\\\.]{0,63}:[0-9]{12}:(\\w|\\/|-){1,1011}" & strings.MinRunes(44) & strings.MaxRunes(1011)
	// The revision of this VPC connector. It's unique among all the active connectors ("Status": "ACTIVE") that share the same Name.
	VpcConnectorRevision: int
}
