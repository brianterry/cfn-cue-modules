package backupselection

#Properties: {
	BackupPlanId: string
	BackupSelection: #BackupSelectionResourceType
}

#BackupSelectionResourceType: {
	Conditions?: {
		StringEquals?: [...#ConditionParameter]
		StringLike?: [...#ConditionParameter]
		StringNotEquals?: [...#ConditionParameter]
		StringNotLike?: [...#ConditionParameter]
	}
	IamRoleArn: string
	ListOfTags?: [...#ConditionResourceType]
	NotResources?: [...string]
	Resources?: [...string]
	SelectionName: string
}

#ConditionParameter: {
	ConditionKey?: string
	ConditionValue?: string
}

#ConditionResourceType: {
	ConditionKey: string
	ConditionType: string
	ConditionValue: string
}
