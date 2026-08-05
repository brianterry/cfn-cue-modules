package backupvault

#Properties: {
	AccessPolicy?: {...}
	BackupVaultName: #BackupVaultNamePattern
	BackupVaultTags?: {...}
	EncryptionKeyArn?: string
	LockConfiguration?: #LockConfigurationType
	Notifications?: #NotificationObjectType
}

#LockConfigurationType: {
	ChangeableForDays?: int
	MaxRetentionDays?: int
	MinRetentionDays: int
}

#NotificationObjectType: {
	BackupVaultEvents: [...string]
	SNSTopicArn: string
}
