package identitycenterconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Glue IAM identity center application arn
	ApplicationArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// The identifier for the specified AWS account.
	AccountId: string
}
