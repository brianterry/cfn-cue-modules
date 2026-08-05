package customlineitem

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// ARN
	Arn: string & =~"(arn:aws(-cn)?:billingconductor::[0-9]{12}:customlineitem/)?[a-zA-Z0-9]{10}"
	// Creation timestamp in UNIX epoch time format
	CreationTime: int
	// Latest modified timestamp in UNIX epoch time format
	LastModifiedTime: int
	// Number of source values associated to this custom line item
	AssociationSize: int
	CurrencyCode: "USD" | "CNY"
	ProductCode: string & strings.MinRunes(1) & strings.MaxRunes(29)
}
