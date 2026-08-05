package signingprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A name for the signing profile. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the signing profile name.
	ProfileName: #ProfileName
	// A version for the signing profile. AWS Signer generates a unique version for each profile of the same profile name.
	ProfileVersion: #ProfileVersion
	// The Amazon Resource Name (ARN) of the specified signing profile.
	Arn: #Arn
	// The Amazon Resource Name (ARN) of the specified signing profile version.
	ProfileVersionArn: #Arn
}
