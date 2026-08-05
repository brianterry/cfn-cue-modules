package tagsynctask

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the TagSyncTask resource
	TaskArn: string & =~"arn:aws(-[a-z]+)*:resource-groups(-(test|beta|gamma))?:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}/tag-sync-task/[a-z0-9]{26}" & strings.MinRunes(12) & strings.MaxRunes(1600)
	// The status of the TagSyncTask
	Status: "ACTIVE" | "ERROR"
	// The Name of the application group for which the TagSyncTask is created
	GroupName: string & =~"[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}" & strings.MinRunes(1) & strings.MaxRunes(300)
	// The Amazon resource name (ARN) of the ApplicationGroup for which the TagSyncTask is created
	GroupArn: string & =~"arn:aws(-[a-z]+)*:resource-groups(-(test|beta|gamma))?:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}" & strings.MinRunes(12) & strings.MaxRunes(1600)
}
