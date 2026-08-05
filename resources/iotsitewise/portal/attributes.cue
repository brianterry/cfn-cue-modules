package portal

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the portal, which has the following format.
	PortalArn: string
	// The AWS SSO application generated client ID (used with AWS SSO APIs).
	PortalClientId: string
	// The ID of the portal.
	PortalId: string
	// The public root URL for the AWS IoT AWS IoT SiteWise Monitor application portal.
	PortalStartUrl: string
}
