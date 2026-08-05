package organizationconfigrule

#Properties: {
	ExcludedAccounts?: [...string]
	OrganizationConfigRuleName: string
	OrganizationCustomPolicyRuleMetadata?: #OrganizationCustomPolicyRuleMetadata
	OrganizationCustomRuleMetadata?: #OrganizationCustomRuleMetadata
	OrganizationManagedRuleMetadata?: #OrganizationManagedRuleMetadata
}

#OrganizationCustomPolicyRuleMetadata: {
	DebugLogDeliveryAccounts?: [...string]
	Description?: string
	InputParameters?: string
	MaximumExecutionFrequency?: string
	OrganizationConfigRuleTriggerTypes?: [...string]
	PolicyText: string
	ResourceIdScope?: string
	ResourceTypesScope?: [...string]
	Runtime: string
	TagKeyScope?: string
	TagValueScope?: string
}

#OrganizationCustomRuleMetadata: {
	Description?: string
	InputParameters?: string
	LambdaFunctionArn: string
	MaximumExecutionFrequency?: string
	OrganizationConfigRuleTriggerTypes: [...string]
	ResourceIdScope?: string
	ResourceTypesScope?: [...string]
	TagKeyScope?: string
	TagValueScope?: string
}

#OrganizationManagedRuleMetadata: {
	Description?: string
	InputParameters?: string
	MaximumExecutionFrequency?: string
	ResourceIdScope?: string
	ResourceTypesScope?: [...string]
	RuleIdentifier: string
	TagKeyScope?: string
	TagValueScope?: string
}
