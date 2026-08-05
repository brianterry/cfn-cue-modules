package blueprint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// ARN of a Blueprint
	BlueprintArn: string & =~"^arn:aws(|-cn|-us-gov|-iso|-iso-[a-z]):bedrock:[a-zA-Z0-9-]*:(aws|[0-9]{12}):blueprint/(bedrock-data-automation-public-[a-zA-Z0-9-_]{1,30}|[a-zA-Z0-9-]{12,36})$" & strings.MaxRunes(128)
	// Stage of the Blueprint
	BlueprintStage: "DEVELOPMENT" | "LIVE"
	// Creation timestamp
	CreationTime: string
	// Last modified timestamp
	LastModifiedTime: string
}
