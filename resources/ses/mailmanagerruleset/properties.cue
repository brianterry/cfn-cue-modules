package mailmanagerruleset

import "strings"

#Properties: {
	RuleSetName?: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Rules: [...#Rule]
	Tags?: [...#Tag]
}

#ActionFailurePolicy: "CONTINUE" | "DROP"

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
	DiagnosticMessage: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Message?: string & strings.MinRunes(1) & strings.MaxRunes(500)
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

#DropAction: {...}

#InvokeLambdaAction: {
	ActionFailurePolicy?: #ActionFailurePolicy
	FunctionArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	InvocationType: #LambdaInvocationType
	RetryTimeMinutes?: int & >=0 & <=2160
	RoleArn: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#LambdaInvocationType: "EVENT" | "REQUEST_RESPONSE"

#MailFrom: "REPLACE" | "PRESERVE"

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

#RuleAction: {
	Drop: #DropAction
} | {
	Relay: #RelayAction
} | {
	Archive: #ArchiveAction
} | {
	WriteToS3: #S3Action
} | {
	Send: #SendAction
} | {
	AddHeader: #AddHeaderAction
} | {
	ReplaceRecipient: #ReplaceRecipientAction
} | {
	DeliverToMailbox: #DeliverToMailboxAction
} | {
	DeliverToQBusiness: #DeliverToQBusinessAction
} | {
	PublishToSns: #SnsAction
} | {
	Bounce: #BounceAction
} | {
	InvokeLambda: #InvokeLambdaAction
}

#RuleAddressListEmailAttribute: "RECIPIENT" | "MAIL_FROM" | "SENDER" | "FROM" | "TO" | "CC"

#RuleBooleanEmailAttribute: "READ_RECEIPT_REQUESTED" | "TLS" | "TLS_WRAPPED"

#RuleBooleanExpression: {
	Evaluate: #RuleBooleanToEvaluate
	Operator: #RuleBooleanOperator
}

#RuleBooleanOperator: "IS_TRUE" | "IS_FALSE"

#RuleBooleanToEvaluate: {
	Attribute: #RuleBooleanEmailAttribute
} | {
	Analysis: #Analysis
} | {
	IsInAddressList: #RuleIsInAddressList
}

#RuleClientCertificateAttribute: "CN" | "SAN_RFC822_NAME" | "SAN_DNS_NAME" | "SAN_DIRECTORY_NAME" | "SAN_UNIFORM_RESOURCE_IDENTIFIER" | "SAN_IP_ADDRESS" | "SAN_REGISTERED_ID" | "SERIAL_NUMBER"

#RuleCondition: {
	BooleanExpression: #RuleBooleanExpression
} | {
	StringExpression: #RuleStringExpression
} | {
	NumberExpression: #RuleNumberExpression
} | {
	IpExpression: #RuleIpExpression
} | {
	VerdictExpression: #RuleVerdictExpression
} | {
	DmarcExpression: #RuleDmarcExpression
}

#RuleDmarcExpression: {
	Operator: #RuleDmarcOperator
	Values: [...#RuleDmarcPolicy]
}

#RuleDmarcOperator: "EQUALS" | "NOT_EQUALS"

#RuleDmarcPolicy: "NONE" | "QUARANTINE" | "REJECT"

#RuleIpEmailAttribute: "SOURCE_IP"

#RuleIpExpression: {
	Evaluate: #RuleIpToEvaluate
	Operator: #RuleIpOperator
	Values: [...string & =~"^(([0-9]|.|:|/)*)$" & strings.MinRunes(1) & strings.MaxRunes(43)]
}

#RuleIpOperator: "CIDR_MATCHES" | "NOT_CIDR_MATCHES"

#RuleIpToEvaluate: {
	Attribute: #RuleIpEmailAttribute
}

#RuleIsInAddressList: {
	AddressLists: [...string]
	Attribute: #RuleAddressListEmailAttribute
}

#RuleNumberEmailAttribute: "MESSAGE_SIZE"

#RuleNumberExpression: {
	Evaluate: #RuleNumberToEvaluate
	Operator: #RuleNumberOperator
	Value: number
}

#RuleNumberOperator: "EQUALS" | "NOT_EQUALS" | "LESS_THAN" | "GREATER_THAN" | "LESS_THAN_OR_EQUAL" | "GREATER_THAN_OR_EQUAL"

#RuleNumberToEvaluate: {
	Attribute: #RuleNumberEmailAttribute
}

#RuleStringEmailAttribute: "MAIL_FROM" | "HELO" | "RECIPIENT" | "SENDER" | "FROM" | "SUBJECT" | "TO" | "CC"

#RuleStringExpression: {
	Evaluate: #RuleStringToEvaluate
	Operator: #RuleStringOperator
	Values: [...string & strings.MinRunes(1) & strings.MaxRunes(4096)]
}

#RuleStringOperator: "EQUALS" | "NOT_EQUALS" | "STARTS_WITH" | "ENDS_WITH" | "CONTAINS"

#RuleStringToEvaluate: {
	Attribute: #RuleStringEmailAttribute
} | {
	MimeHeaderAttribute: string & =~"^X-[a-zA-Z0-9-]{1,256}$"
} | {
	Analysis: #Analysis
} | {
	ClientCertificateAttribute: #RuleClientCertificateAttribute
}

#RuleVerdict: "PASS" | "FAIL" | "GRAY" | "PROCESSING_FAILED"

#RuleVerdictAttribute: "SPF" | "DKIM"

#RuleVerdictExpression: {
	Evaluate: #RuleVerdictToEvaluate
	Operator: #RuleVerdictOperator
	Values: [...#RuleVerdict]
}

#RuleVerdictOperator: "EQUALS" | "NOT_EQUALS"

#RuleVerdictToEvaluate: {
	Attribute: #RuleVerdictAttribute
} | {
	Analysis: #Analysis
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

#SnsNotificationEncoding: "UTF-8" | "BASE64"

#SnsNotificationPayloadType: "CONTENT" | "HEADERS"

#Tag: {
	Key: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
