package slackchannelconfiguration

import "strings"

#Properties: {
	// The channel ID in Slack, which identifies a channel within a workspace.
	ChannelId: string & =~"^\\S+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The channel name in Slack.
	ChannelName?: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The Amazon Resource Name (ARN) of an IAM role that grants the AWS Support App access to perform operations for AWS services.
	ChannelRoleArn: string & =~"^arn:aws[-a-z0-9]*:iam::[0-9]{12}:role\\/(.+)$" & strings.MinRunes(31) & strings.MaxRunes(2048)
	// Whether to notify when a correspondence is added to a case.
	NotifyOnAddCorrespondenceToCase?: bool
	// The severity level of a support case that a customer wants to get notified for.
	NotifyOnCaseSeverity: "none" | "all" | "high"
	// Whether to notify when a case is created or reopened.
	NotifyOnCreateOrReopenCase?: bool
	// Whether to notify when a case is resolved.
	NotifyOnResolveCase?: bool
	// The team ID in Slack, which uniquely identifies a workspace.
	TeamId: string & =~"^\\S+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
