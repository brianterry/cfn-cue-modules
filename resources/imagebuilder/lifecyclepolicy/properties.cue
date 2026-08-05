package lifecyclepolicy

#Properties: {
	// The description of the lifecycle policy.
	Description?: string
	// The execution role of the lifecycle policy.
	ExecutionRole: string
	// The name of the lifecycle policy.
	Name: string
	// The policy details of the lifecycle policy.
	PolicyDetails: [...#PolicyDetail]
	// The resource selection of the lifecycle policy.
	ResourceSelection: #ResourceSelection
	// The resource type of the lifecycle policy.
	ResourceType: "AMI_IMAGE" | "CONTAINER_IMAGE"
	// The status of the lifecycle policy.
	Status?: "DISABLED" | "ENABLED"
	// The tags associated with the lifecycle policy.
	Tags?: {...}
}

#Action: {
	IncludeResources?: #IncludeResources
	// The action type of the policy detail.
	Type: "DELETE" | "DEPRECATE" | "DISABLE"
}

#AmiExclusionRules: {
	// Use to apply lifecycle policy actions on whether the AMI is public.
	IsPublic?: bool
	// Use to apply lifecycle policy actions on AMIs launched before a certain time.
	LastLaunched?: #LastLaunched
	// Use to apply lifecycle policy actions on AMIs distributed to a set of regions.
	Regions?: [...string]
	// Use to apply lifecycle policy actions on AMIs shared with a set of regions.
	SharedAccounts?: [...string]
	// The AMIs to select by tag.
	TagMap?: {...}
}

#ExclusionRules: {
	Amis?: #AmiExclusionRules
	// The Image Builder tags to filter on.
	TagMap?: {...}
}

#Filter: {
	// The minimum number of Image Builder resources to retain.
	RetainAtLeast?: int
	// The filter type.
	Type: "AGE" | "COUNT"
	// The value's time unit.
	Unit?: #TimeUnit
	// The filter value.
	Value: int
}

#IncludeResources: {
	// Use to configure lifecycle actions on AMIs.
	Amis?: bool
	// Use to configure lifecycle actions on containers.
	Containers?: bool
	// Use to configure lifecycle actions on snapshots.
	Snapshots?: bool
}

#LastLaunched: {
	// The value's time unit.
	Unit: #TimeUnit
	// The last launched value.
	Value: int
}

#PolicyDetail: {
	Action: #Action
	ExclusionRules?: #ExclusionRules
	Filter: #Filter
}

#RecipeSelection: {
	// The recipe name.
	Name: string
	// The recipe version.
	SemanticVersion: string
}

#ResourceSelection: {
	// The recipes to select.
	Recipes?: [...#RecipeSelection]
	// The Image Builder resources to select by tag.
	TagMap?: {...}
}
