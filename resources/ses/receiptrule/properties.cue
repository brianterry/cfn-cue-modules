package receiptrule

#Properties: {
	After?: string
	Rule: #Rule
	RuleSetName: string
}

#Action: {
	AddHeaderAction?: #AddHeaderAction
	BounceAction?: #BounceAction
	ConnectAction?: #ConnectAction
	LambdaAction?: #LambdaAction
	S3Action?: #S3Action
	SNSAction?: #SNSAction
	StopAction?: #StopAction
	WorkmailAction?: #WorkmailAction
}

#AddHeaderAction: {
	HeaderName: string
	HeaderValue: string
}

#BounceAction: {
	Message: string
	Sender: string
	SmtpReplyCode: string
	StatusCode?: string
	TopicArn?: string
}

#ConnectAction: {
	IAMRoleARN: string
	InstanceARN: string
}

#LambdaAction: {
	FunctionArn: string
	InvocationType?: string
	TopicArn?: string
}

#Rule: {
	Actions?: [...#Action]
	Enabled?: bool
	Name?: string
	Recipients?: [...string]
	ScanEnabled?: bool
	TlsPolicy?: string
}

#S3Action: {
	BucketName: string
	IamRoleArn?: string
	KmsKeyArn?: string
	ObjectKeyPrefix?: string
	TopicArn?: string
}

#SNSAction: {
	Encoding?: string
	TopicArn?: string
}

#StopAction: {
	Scope: string
	TopicArn?: string
}

#WorkmailAction: {
	OrganizationArn: string
	TopicArn?: string
}
