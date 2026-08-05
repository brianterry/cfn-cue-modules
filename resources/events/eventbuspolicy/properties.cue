package eventbuspolicy

import "strings"

#Properties: {
	// The action that you are enabling the other account to perform.
	Action?: string & =~"events:[a-zA-Z]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	Condition?: #Condition
	// The name of the event bus associated with the rule. If you omit this, the default event bus is used.
	EventBusName?: string & =~"[\\.\\-_A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify "*" to permit any account to put events to your default event bus.
	Principal?: string & =~"(\\d{12}|\\*)" & strings.MinRunes(1) & strings.MaxRunes(12)
	// A JSON string that describes the permission policy statement. You can include a Policy parameter in the request instead of using the StatementId, Action, Principal, or Condition parameters.
	Statement?: {...}
	// An identifier string for the external account that you are granting permissions to
	StatementId: string & =~"[a-zA-Z0-9-_]+" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#Condition: {
	// Specifies the value for the key. Currently, this must be the ID of the organization.
	Key?: string
	// Specifies the type of condition. Currently the only supported value is StringEquals.
	Type?: string
	// Specifies the key for the condition. Currently the only supported key is aws:PrincipalOrgID.
	Value?: string
}
