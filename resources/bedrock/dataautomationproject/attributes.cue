package dataautomationproject

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Time Stamp
	CreationTime: string
	// Time Stamp
	LastModifiedTime: string
	// ARN of a DataAutomationProject
	ProjectArn: string & =~"^arn:aws(|-cn|-us-gov|-iso|-iso-[a-z]):bedrock:[a-zA-Z0-9-]*:(aws|[0-9]{12}):data-automation-project/[a-zA-Z0-9-]{12,36}$" & strings.MaxRunes(128)
	ProjectStage: #DataAutomationProjectStage
	Status: #DataAutomationProjectStatus
}
