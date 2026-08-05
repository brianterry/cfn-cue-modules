package paymentmanager

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the payment manager
	PaymentManagerArn: string & =~"^arn:aws[-a-z]{0,7}:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:payment-manager/([0-9a-z][-]?){1,48}-[a-z0-9]{10}$"
	// The unique identifier for the payment manager
	PaymentManagerId: string & =~"^([0-9a-z][-]?){1,100}-[0-9a-z]{10}$"
	// The timestamp when the payment manager was created
	CreatedAt: string
	// The timestamp when the payment manager was last updated
	LastUpdatedAt: string
	Status: #PaymentManagerStatus
	WorkloadIdentityDetails: #WorkloadIdentityDetails
}
