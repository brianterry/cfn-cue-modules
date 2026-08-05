package targetaccountconfiguration

#Properties: {
	AccountId: #TargetAccountId
	Description?: #TargetAccountConfigurationDescription
	ExperimentTemplateId: #TargetExperimentTemplateId
	RoleArn: #TargetAccountRoleArn
}

#TargetAccountConfigurationDescription: string & strings.MaxRunes(512)

#TargetAccountId: string & strings.MaxRunes(512)

#TargetAccountRoleArn: string & strings.MaxRunes(1224)

#TargetExperimentTemplateId: string
