package guardhook

#Properties: {
	// The typename alias for the hook.
	Alias: string & =~"^(?!(?i)aws)[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}$"
	// The execution role ARN assumed by hooks to read Guard rules from S3 and write Guard outputs to S3.
	ExecutionRole: #Role
	// Attribute to specify CloudFormation behavior on hook failure.
	FailureMode: "FAIL" | "WARN"
	// Attribute to specify which stacks this hook applies to or should get invoked for
	HookStatus: "ENABLED" | "DISABLED"
	// S3 Bucket where the guard validate report will be uploaded to
	LogBucket?: string
	Options?: {
		InputParams?: #S3Location | [...#S3Location]
	}
	RuleLocation: #S3Location
	// Filters to allow hooks to target specific stack attributes
	StackFilters?: {
		FilteringCriteria: "ALL" | "ANY"
		StackNames?: {
			Exclude?: [...#StackName]
			Include?: [...#StackName]
		}
		StackRoles?: {
			Exclude?: [...#StackRole]
			Include?: [...#StackRole]
		}
	}
	// Attribute to specify which targets should invoke the hook
	TargetFilters?: {
		Actions?: [...#Action]
		InvocationPoints?: [...#InvocationPoint]
		TargetNames?: [...#TargetName]
	} | {
		Targets: [...#HookTarget]
	}
	// Which operations should this Hook run against? Resource changes, stacks or change sets.
	TargetOperations: [...#TargetOperation]
}

#HookTarget: {
	Action: #Action
	InvocationPoint: #InvocationPoint
	TargetName: #TargetName
}

#S3Location: {
	// S3 uri of Guard files.
	Uri: string
	// S3 object version
	VersionId?: string
}
