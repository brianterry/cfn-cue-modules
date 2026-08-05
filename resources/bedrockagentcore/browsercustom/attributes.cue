package browsercustom

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The id of the browser.
	BrowserId: #BrowserId
	// The ARN of a Browser resource.
	BrowserArn: #BrowserArn
	// Status of browser.
	Status: #BrowserStatus
	// The reason for failure if the browser creation or operation failed.
	FailureReason: string
	// Timestamp when the browser was created.
	CreatedAt: string
	// Timestamp when the browser was last updated.
	LastUpdatedAt: string
}
