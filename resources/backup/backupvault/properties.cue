package backupvault

#Properties: {
	AccessPolicy?: {...}
	BackupVaultName: #BackupVaultNamePattern
	BackupVaultTags?: {...}
	EncryptionKeyArn?: string
	LockConfiguration?: #LockConfigurationType
	Notifications?: #NotificationObjectType
}

#BackupVaultNamePattern: string & =~"^[a-zA-Z0-9\\-\\_]{2,50}$"

#LockConfigurationType: {
	ChangeableForDays?: int
	MaxRetentionDays?: int
	MinRetentionDays: int
}

#NotificationObjectType: {
	BackupVaultEvents: [...string]
	SNSTopicArn: string
}
