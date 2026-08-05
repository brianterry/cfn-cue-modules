package eventsubscription

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The AWS account associated with the Amazon Redshift event notification subscription.
	CustomerAwsId: string
	// The name of the Amazon Redshift event notification subscription.
	CustSubscriptionId: string
	// The status of the Amazon Redshift event notification subscription.
	Status: "active" | "no-permission" | "topic-not-exist"
	// The date and time the Amazon Redshift event notification subscription was created.
	SubscriptionCreationTime: string
	// A list of the sources that publish events to the Amazon Redshift event notification subscription.
	SourceIdsList: [...string]
	// The list of Amazon Redshift event categories specified in the event notification subscription.
	EventCategoriesList: [...string]
}
