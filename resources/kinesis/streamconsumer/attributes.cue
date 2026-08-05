package streamconsumer

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN returned by Kinesis Data Streams when you registered the consumer. If you don't know the ARN of the consumer that you want to deregister, you can use the ListStreamConsumers operation to get a list of the descriptions of all the consumers that are currently registered with a given data stream. The description of a consumer contains its ARN.
	ConsumerARN: string
	// A consumer can't read data while in the CREATING or DELETING states. Valid Values: CREATING | DELETING | ACTIVE
	ConsumerStatus: string
	// Timestamp when the consumer was created.
	ConsumerCreationTimestamp: string
}
