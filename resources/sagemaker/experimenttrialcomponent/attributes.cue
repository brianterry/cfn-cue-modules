package experimenttrialcomponent

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the trial component.
	Arn: string & =~"^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:experiment-trial-component/" & strings.MaxRunes(256)
	// When the component was created.
	CreationTime: string
	// When the component was last modified.
	LastModifiedTime: string
	// The Amazon Resource Name (ARN) of the lineage group.
	LineageGroupArn: string & =~"^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:lineage-group/" & strings.MaxRunes(256)
}
