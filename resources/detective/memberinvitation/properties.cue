package memberinvitation

import "strings"

#Properties: {
	// When set to true, invitation emails are not sent to the member accounts. Member accounts must still accept the invitation before they are added to the behavior graph. Updating this field has no effect.
	DisableEmailNotification?: bool
	// The ARN of the graph to which the member account will be invited
	GraphArn: string & =~"arn:aws(-[\\w]+)*:detective:(([a-z]+-)+[0-9]+):[0-9]{12}:graph:[0-9a-f]{32}"
	// The root email address for the account to be invited, for validation. Updating this field has no effect.
	MemberEmailAddress: string & =~".*@.*"
	// The AWS account ID to be invited to join the graph as a member
	MemberId: string & =~"[0-9]{12}"
	// A message to be included in the email invitation sent to the invited account. Updating this field has no effect.
	Message?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
}
