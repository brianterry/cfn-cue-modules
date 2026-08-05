package budgetsaction

#Properties: {
	ActionThreshold: #ActionThreshold
	ActionType: "APPLY_IAM_POLICY" | "APPLY_SCP_POLICY" | "RUN_SSM_DOCUMENTS"
	ApprovalModel?: "AUTOMATIC" | "MANUAL"
	BudgetName: string
	Definition: #Definition
	ExecutionRoleArn: string
	NotificationType: "ACTUAL" | "FORECASTED"
	ResourceTags?: [...#ResourceTag]
	Subscribers: [...#Subscriber]
}

#ActionThreshold: {
	Type: "PERCENTAGE" | "ABSOLUTE_VALUE"
	Value: number
}

#Definition: {
	IamActionDefinition?: #IamActionDefinition
	ScpActionDefinition?: #ScpActionDefinition
	SsmActionDefinition?: #SsmActionDefinition
}

#IamActionDefinition: {
	Groups?: [...string]
	PolicyArn: string
	Roles?: [...string]
	Users?: [...string]
}

#ResourceTag: {
	Key: string
	Value: string
}

#ScpActionDefinition: {
	PolicyId: string
	TargetIds: [...string]
}

#SsmActionDefinition: {
	InstanceIds: [...string]
	Region: string
	Subtype: "STOP_EC2_INSTANCES" | "STOP_RDS_INSTANCES"
}

#Subscriber: {
	Address: string
	Type: "SNS" | "EMAIL"
}
