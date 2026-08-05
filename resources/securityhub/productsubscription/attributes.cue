package productsubscription

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the product subscription for the account
	ProductSubscriptionArn: string & =~"arn:aws\\S*:securityhub:\\S*"
}
