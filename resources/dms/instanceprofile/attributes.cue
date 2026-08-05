package instanceprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The property describes an ARN of the instance profile.
	InstanceProfileArn: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes a creating time of the instance profile.
	InstanceProfileCreationTime: string & strings.MinRunes(1) & strings.MaxRunes(40)
}
