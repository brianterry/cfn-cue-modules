package s3accesspointattachment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The S3 access point configuration of the S3 access point attachment.
	S3AccessPoint: #S3AccessPoint
	// The lifecycle status of the S3 access point attachment.
	Lifecycle: "AVAILABLE" | "CREATING" | "DELETING" | "FAILED" | "MISCONFIGURED" | "UPDATING"
}
