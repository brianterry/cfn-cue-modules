package slackchannelconfiguration

import "strings"

#Properties: {
	// The name of the configuration
	ConfigurationName: string & =~"^[A-Za-z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// ARNs of Custom Actions to associate with notifications in the provided chat channel.
	CustomizationResourceArns?: [...string & =~"^arn:aws:chatbot:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:custom-action/[a-zA-Z0-9_-]{1,64}$"]
	// The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed 'AdministratorAccess' policy is applied as a default if this is not set.
	GuardrailPolicies?: [...string & =~"^(^$|arn:aws:iam:[A-Za-z0-9_\\/.-]{0,63}:[A-Za-z0-9_\\/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_\\/+=,@.-]{0,1023})$"]
	// The ARN of the IAM role that defines the permissions for AWS Chatbot
	IamRoleArn: string & =~"^arn:(aws[a-zA-Z-]*)?:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"
	// Specifies the logging level for this configuration:ERROR,INFO or NONE. This property affects the log entries pushed to Amazon CloudWatch logs
	LoggingLevel?: string & =~"^(ERROR|INFO|NONE)$"
	// The id of the Slack channel
	SlackChannelId: string & =~"^[A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The id of the Slack workspace
	SlackWorkspaceId: string & =~"^[0-9A-Z]{1,255}$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// ARNs of SNS topics which delivers notifications to AWS Chatbot, for example CloudWatch alarm notifications.
	SnsTopicArns?: [...string & =~"^arn:(aws[a-zA-Z-]*)?:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"]
	// The tags to add to the configuration
	Tags?: [...#Tag]
	// Enables use of a user role requirement in your chat configuration
	UserRoleRequired?: bool
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
