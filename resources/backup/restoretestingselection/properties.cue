package restoretestingselection

#Properties: {
	IamRoleArn: string
	ProtectedResourceArns?: [...string]
	ProtectedResourceConditions?: #ProtectedResourceConditions
	ProtectedResourceType: string
	RestoreMetadataOverrides?: #SensitiveStringMap
	RestoreTestingPlanName: string
	RestoreTestingSelectionName: string
	ValidationWindowHours?: int
}

#KeyValue: {
	Key: string
	Value: string
}

#ProtectedResourceConditions: {
	StringEquals?: [...#KeyValue]
	StringNotEquals?: [...#KeyValue]
}
