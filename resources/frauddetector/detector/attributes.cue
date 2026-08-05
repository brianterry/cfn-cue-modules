package detector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the detector.
	Arn: string
	// The active version ID of the detector
	DetectorVersionId: string
	// The time when the detector was created.
	CreatedTime: string
	// The time when the detector was last updated.
	LastUpdatedTime: string
	Rules: [...#Rule]
	// The event type to associate this detector with.
	EventType: #EventType
	// The models to associate with this detector.
	AssociatedModels: [...#Model]
}
