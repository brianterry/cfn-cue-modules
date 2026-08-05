package microvmimage

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// ARN of the MicroVM image.
	ImageArn: string
	// Current state of the MicroVM image.
	State: #MicrovmImageState
	// The latest active version of the MicroVM image.
	LatestActiveImageVersion: string
	// The latest failed version of the MicroVM image.
	LatestFailedImageVersion: string
	// Timestamp when the MicroVM image was created.
	CreatedAt: string
	// Timestamp when the MicroVM image was updated.
	UpdatedAt: string
}
