package permission

import "strings"

#Properties: {
	Actions: [...string & =~"^qbusiness:[a-zA-Z]+$"]
	ApplicationId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	Conditions?: [...#Condition]
	Principal: string & =~"^arn:aws:iam::[0-9]{12}:role/[a-zA-Z0-9_/+=,.@-]+$" & strings.MinRunes(1) & strings.MaxRunes(1284)
	StatementId: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
}

#Condition: {
	ConditionKey: string & =~"^aws:PrincipalTag/qbusiness-dataaccessor:[a-zA-Z]+"
	ConditionOperator: "StringEquals"
	ConditionValues: [...string]
}
