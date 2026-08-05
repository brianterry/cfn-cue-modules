package delivery

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique ID that identifies this delivery in your account.
	DeliveryId: string & =~"^[0-9A-Za-z]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The Amazon Resource Name (ARN) that uniquely identifies this delivery.
	Arn: #Arn
	// Displays whether the delivery destination associated with this delivery is CloudWatch Logs, Amazon S3, or Kinesis Data Firehose.
	DeliveryDestinationType: string & =~"^[0-9A-Za-z]+$" & strings.MinRunes(1) & strings.MaxRunes(12)
}
