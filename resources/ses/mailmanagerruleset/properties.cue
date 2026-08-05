package mailmanagerruleset

import "strings"

#Properties: {
	RuleSetName?: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Rules: [...#Rule]
	Tags?: [...#Tag]
}

#AddHeaderAction: {
	HeaderName: string & =~"^[xX]\\-[a-zA-Z0-9\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	HeaderValue: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Analysis: {
	Analyzer: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$"
	ResultField: string & =~"^(addon\\.)?[\\sa-zA-Z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#ArchiveAction: {
	ActionFailurePolicy?: #ActionFailurePolicy
	TargetArchive: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#BounceAction: {
	ActionFailurePolicy?: #ActionFailurePolicy
	DiagnosticMessage: string & =~"^[\\x20-\\x7e]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Message?: string & =~"^[\\r\\n\\x20-\\x7e]+$" & strings.MinRunes(1) & strings.MaxRunes(500)
	RoleArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Sender: string & =~"^[0-9A-Za-z@+.-]+$" & strings.MinRunes(0) & strings.MaxRunes(254)
	SmtpReplyCode: string & =~"^[45][0-9][0-9]$" & strings.MinRunes(3) & strings.MaxRunes(3)
	StatusCode: string & =~"^[45]\\.[0-9]{1,3}\\.[0-9]{1,3}$" & strings.MinRunes(5) & strings.MaxRunes(9)
}

#DeliverToMailboxAction: {
	ActionFailurePolicy?: #ActionFailurePolicy
	MailboxArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	RoleArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#DeliverToQBusinessAction: {
	ActionFailurePolicy?: #ActionFailurePolicy
	ApplicationId: string & =~"^[a-z0-9-]+$" & strings.MinRunes(36) & strings.MaxRunes(36)
	IndexId: string & =~"^[a-z0-9-]+$" & strings.MinRunes(36) & strings.MaxRunes(36)
	RoleArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#InvokeLambdaAction: {
	ActionFailurePolicy?: #ActionFailurePolicy
	FunctionArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	InvocationType: #LambdaInvocationType
	RetryTimeMinutes?: int & >=0 & <=2160
	RoleArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#RelayAction: {
	ActionFailurePolicy?: #ActionFailurePolicy
	MailFrom?: #MailFrom
	Relay: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#ReplaceRecipientAction: {
	ReplaceWith?: [...string & =~"^[0-9A-Za-z@+.-]+$" & strings.MinRunes(0) & strings.MaxRunes(254)]
}

#Rule: {
	Actions: [...#RuleAction]
	Conditions?: [...#RuleCondition]
	Name?: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(32)
	Unless?: [...#RuleCondition]
}

#RuleBooleanExpression: {
	Evaluate: #RuleBooleanToEvaluate
	Operator: #RuleBooleanOperator
}

#RuleDmarcExpression: {
	Operator: #RuleDmarcOperator
	Values: [...#RuleDmarcPolicy]
}

#RuleIpExpression: {
	Evaluate: #RuleIpToEvaluate
	Operator: #RuleIpOperator
	Values: [...string & =~"^(([0-9]|.|:|/)*)$" & strings.MinRunes(1) & strings.MaxRunes(43)]
}

#RuleIsInAddressList: {
	AddressLists: [...string]
	Attribute: #RuleAddressListEmailAttribute
}

#RuleNumberExpression: {
	Evaluate: #RuleNumberToEvaluate
	Operator: #RuleNumberOperator
	Value: number
}

#RuleStringExpression: {
	Evaluate: #RuleStringToEvaluate
	Operator: #RuleStringOperator
	Values: [...string & strings.MinRunes(1) & strings.MaxRunes(4096)]
}

#RuleVerdictExpression: {
	Evaluate: #RuleVerdictToEvaluate
	Operator: #RuleVerdictOperator
	Values: [...#RuleVerdict]
}

#S3Action: {
	ActionFailurePolicy?: #ActionFailurePolicy
	RoleArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	S3Bucket: string & =~"^[a-zA-Z0-9.-]+$" & strings.MinRunes(1) & strings.MaxRunes(62)
	S3Prefix?: string & =~"^[a-zA-Z0-9!_.*'()/-]+$" & strings.MinRunes(1) & strings.MaxRunes(62)
	S3SseKmsKeyId?: string & =~"^[a-zA-Z0-9-:/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#SendAction: {
	ActionFailurePolicy?: #ActionFailurePolicy
	RoleArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#SnsAction: {
	ActionFailurePolicy?: #ActionFailurePolicy
	Encoding?: #SnsNotificationEncoding
	PayloadType?: #SnsNotificationPayloadType
	RoleArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	TopicArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc):sns:[a-z]{2}-([a-z]+-)+\\d{1}:\\d{12}:[\\w\\-]{1,256}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
