package anomalysubscription

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	SubscriptionArn: #Arn
	// The accountId
	AccountId: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// A list of subscriber
	Subscribers: [...#Subscriber]
}
