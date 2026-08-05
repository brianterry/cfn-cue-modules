package site

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the site.
	SiteId: string
	// The Amazon Resource Name (ARN) of the site.
	SiteArn: string
	// The state of the site.
	State: string
	// The date and time that the device was created.
	CreatedAt: string
}
