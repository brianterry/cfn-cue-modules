package userpoolriskconfigurationattachment

#Properties: {
	AccountTakeoverRiskConfiguration?: #AccountTakeoverRiskConfigurationType
	ClientId: string
	CompromisedCredentialsRiskConfiguration?: #CompromisedCredentialsRiskConfigurationType
	RiskExceptionConfiguration?: #RiskExceptionConfigurationType
	UserPoolId: string
}

#AccountTakeoverActionType: {
	EventAction: string
	Notify: bool
}

#AccountTakeoverActionsType: {
	HighAction?: #AccountTakeoverActionType
	LowAction?: #AccountTakeoverActionType
	MediumAction?: #AccountTakeoverActionType
}

#AccountTakeoverRiskConfigurationType: {
	Actions: #AccountTakeoverActionsType
	NotifyConfiguration?: #NotifyConfigurationType
}

#CompromisedCredentialsActionsType: {
	EventAction: string
}

#CompromisedCredentialsRiskConfigurationType: {
	Actions: #CompromisedCredentialsActionsType
	EventFilter?: [...string]
}

#NotifyConfigurationType: {
	BlockEmail?: #NotifyEmailType
	From?: string
	MfaEmail?: #NotifyEmailType
	NoActionEmail?: #NotifyEmailType
	ReplyTo?: string
	SourceArn: string
}

#NotifyEmailType: {
	HtmlBody?: string
	Subject: string
	TextBody?: string
}

#RiskExceptionConfigurationType: {
	BlockedIPRangeList?: [...string]
	SkippedIPRangeList?: [...string]
}
