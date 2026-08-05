package intelligentpromptrouter

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Time Stamp
	CreatedAt: string
	// Arn of the Prompt Router.
	PromptRouterArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:(default-)?prompt-router/[a-zA-Z0-9-:.]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Status: #PromptRouterStatus
	Type: #PromptRouterType
	// Time Stamp
	UpdatedAt: string
}
