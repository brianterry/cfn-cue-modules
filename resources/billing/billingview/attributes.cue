package billingview

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: #Arn
	// The time when the billing view was created.
	CreatedAt: number
	// The time when the billing view was last updated.
	UpdatedAt: number
	OwnerAccountId: string & =~"[0-9]{12}"
	BillingViewType: #BillingViewType
}
