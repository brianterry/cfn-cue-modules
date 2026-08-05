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

#BackupVaultNamePattern: string & =~"^[a-zA-Z0-9\\-\\_]{2,50}$"

#NotificationObjectType: {
	BackupVaultEvents: [...string]
	SNSTopicArn: string
}
