package discoverer

#Properties: {
	// Defines whether event schemas from other accounts are discovered. Default is True.
	CrossAccount?: bool
	// A description for the discoverer.
	Description?: string
	// The ARN of the event bus.
	SourceArn: string
	// Tags associated with the resource.
	Tags?: [...#TagsEntry]
}

#TagsEntry: {
	Key: string
	Value: string
}
