package logicallyairgappedbackupvault

#Properties: {
	AccessPolicy?: {...}
	BackupVaultName: #BackupVaultNamePattern
	BackupVaultTags?: {...}
	EncryptionKeyArn?: string
	MaxRetentionDays: int
	MinRetentionDays: int
	MpaApprovalTeamArn?: string
	Notifications?: #NotificationObjectType
}

#NotificationObjectType: {
	BackupVaultEvents: [...string]
	SNSTopicArn: string
}
