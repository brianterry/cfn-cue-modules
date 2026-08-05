package gatewaytarget

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreatedAt: string
	GatewayArn: string & =~"^arn:aws(|-cn|-us-gov):bedrock-agentcore:[a-z0-9-]{1,20}:[0-9]{12}:gateway/([0-9a-z][-]?){1,100}-[a-z0-9]{10}$"
	LastSynchronizedAt: string
	Status: #TargetStatus
	StatusReasons: [...string & strings.MaxRunes(2048)]
	TargetId: string & =~"^[0-9a-zA-Z]{10}$"
	PrivateEndpointManagedResources: [...#ManagedResourceDetails]
	UpdatedAt: string
	AuthorizationData: #AuthorizationData
	ProtocolType: #TargetProtocolType
}
