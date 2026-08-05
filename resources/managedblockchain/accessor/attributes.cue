package accessor

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:.+:.+:.+:.+:.+$" & strings.MinRunes(1) & strings.MaxRunes(1011)
	Id: string & strings.MinRunes(1) & strings.MaxRunes(32)
	BillingToken: string & strings.MinRunes(42) & strings.MaxRunes(42)
	CreationDate: string
	Status: #AccessorStatus
}
