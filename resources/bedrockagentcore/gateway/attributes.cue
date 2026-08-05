package gateway

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreatedAt: string
	GatewayArn: string & =~"^arn:[a-z0-9-]{1,20}:bedrock-agentcore:[a-z0-9-]{1,20}:[0-9]{12}:gateway/([0-9a-z][-]?){1,100}-[a-z0-9]{10}$"
	GatewayIdentifier: string & =~"^([0-9a-z][-]?){1,100}-[0-9a-z]{10}$"
	GatewayUrl: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	Status: #GatewayStatus
	StatusReasons: [...string & strings.MaxRunes(2048)]
	UpdatedAt: string
	WorkloadIdentityDetails: #WorkloadIdentityDetails
}
