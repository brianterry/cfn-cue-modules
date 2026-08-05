package spendinglimit

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) that uniquely identifies the spending limit.
	SpendingLimitArn: string & =~"^arn:aws[a-z\\-]*:braket:[a-z0-9\\-]+:[0-9]{12}:spending-limit/.*$" & strings.MinRunes(0) & strings.MaxRunes(256)
	// The amount currently queued for spending on the device, in USD.
	QueuedSpend: string
	// The total amount spent on the device so far during the current time period, in USD.
	TotalSpend: string
	// The date and time when the spending limit was created, in ISO 8601 format.
	CreatedAt: string
	// The date and time when the spending limit was last modified, in ISO 8601 format.
	UpdatedAt: string
}
