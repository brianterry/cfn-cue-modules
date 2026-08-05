package policystatement

#Properties: {
	Action?: #StatementActionList
	Arn: #VeniceGlobalArn
	Condition?: #StatementCondition
	Effect?: #StatementEffect
	Principal?: #StatementPrincipalList
	StatementId: #StatementId
}

#StatementAction: string & =~"^(entityresolution:[a-zA-Z0-9]+)$" & strings.MinRunes(3) & strings.MaxRunes(64)

#StatementActionList: [...#StatementAction]

#StatementCondition: string & strings.MinRunes(1) & strings.MaxRunes(40960)

#StatementEffect: "Allow" | "Deny"

#StatementId: string & =~"^[0-9A-Za-z]+$" & strings.MinRunes(1) & strings.MaxRunes(64)

#StatementPrincipal: string & =~"^(\\\\d{12})|([a-z0-9\\\\.]+)$" & strings.MinRunes(12) & strings.MaxRunes(64)

#StatementPrincipalList: [...#StatementPrincipal]

#VeniceGlobalArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):entityresolution:[a-z]{2}-[a-z]{1,10}-[0-9]:[0-9]{12}:((schemamapping|matchingworkflow|idmappingworkflow|idnamespace)/[a-zA-Z_0-9-]{1,255})$"
