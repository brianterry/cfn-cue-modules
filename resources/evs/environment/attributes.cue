package environment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	EnvironmentId: string & =~"^(env-[a-zA-Z0-9]{10})$"
	Checks: [...#Check]
	EnvironmentArn: string & =~"^arn:(aws|aws-cn|aws-us-gov):evs:[a-z]{2}-[a-z]+-[0-9]:[0-9]{12}:environment/[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(1011)
	Credentials: [...#Secret]
	EnvironmentState: #EnvironmentState
	StateDetails: string
	CreatedAt: #Timestamp
	ModifiedAt: #Timestamp
}
