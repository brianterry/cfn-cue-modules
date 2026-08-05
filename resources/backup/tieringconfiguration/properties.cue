package tieringconfiguration

#Properties: {
	BackupVaultName: string
	ResourceSelection: [...#ResourceSelection]
	TieringConfigurationName: string
	TieringConfigurationTags?: {...}
}

#ResourceSelection: {
	ResourceType: string
	Resources: [...string]
	TieringDownSettingsInDays: int
}
