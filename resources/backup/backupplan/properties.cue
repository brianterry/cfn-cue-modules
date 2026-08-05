package backupplan

#Properties: {
	BackupPlan: #BackupPlanResourceType
	BackupPlanTags?: {...}
}

#AdvancedBackupSettingResourceType: {
	BackupOptions: {...}
	ResourceType: string
}

#BackupPlanResourceType: {
	AdvancedBackupSettings?: [...#AdvancedBackupSettingResourceType]
	BackupPlanName: string
	BackupPlanRule: [...#BackupRuleResourceType]
	ScanSettings?: [...#ScanSettingResourceType]
}

#BackupRuleResourceType: {
	CompletionWindowMinutes?: number
	CopyActions?: [...#CopyActionResourceType]
	EnableContinuousBackup?: bool
	IndexActions?: [...#IndexActionsResourceType]
	Lifecycle?: #LifecycleResourceType
	RecoveryPointTags?: {...}
	RuleName: string
	ScanActions?: [...#ScanActionResourceType]
	ScheduleExpression?: string
	ScheduleExpressionTimezone?: string
	StartWindowMinutes?: number
	TargetBackupVault: string
	TargetLogicallyAirGappedBackupVaultArn?: string
}

#CopyActionResourceType: {
	DestinationBackupVaultArn: string
	Lifecycle?: #LifecycleResourceType
}

#IndexActionsResourceType: {
	ResourceTypes?: #ResourceTypes
}

#LifecycleResourceType: {
	DeleteAfterDays?: number
	MoveToColdStorageAfterDays?: number
	OptInToArchiveForSupportedResources?: bool
}

#MalwareScanner: "GUARDDUTY"

#ResourceType: string

#ResourceTypes: [...#ResourceType]

#ScanActionResourceType: {
	MalwareScanner?: #MalwareScanner
	ScanMode?: #ScanMode
}

#ScanMode: "FULL_SCAN" | "INCREMENTAL_SCAN"

#ScanSettingResourceType: {
	MalwareScanner?: #MalwareScanner
	ResourceTypes?: #ResourceTypes
	ScannerRoleArn?: string
}
