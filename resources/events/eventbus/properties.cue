package eventbus

#Properties: {
	// Dead Letter Queue for the event bus.
	DeadLetterConfig?: {
		Arn?: string
	}
	// The description of the event bus.
	Description?: string
	// If you are creating a partner event bus, this specifies the partner event source that the new event bus will be matched with.
	EventSourceName?: string
	// Kms Key Identifier used to encrypt events at rest in the event bus.
	KmsKeyIdentifier?: string
	// The logging configuration settings for vended logs.
	LogConfig?: {
		IncludeDetail?: "FULL" | "NONE"
		Level?: "INFO" | "ERROR" | "TRACE" | "OFF"
	}
	// The name of the event bus.
	Name: string
	// A JSON string that describes the permission policy statement for the event bus.
	Policy?: {...}
	// Any tags assigned to the event bus.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
