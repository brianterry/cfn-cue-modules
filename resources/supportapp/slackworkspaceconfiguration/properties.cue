package slackworkspaceconfiguration

import "strings"

#Properties: {
	// The team ID in Slack, which uniquely identifies a workspace.
	TeamId: string & =~"^\\S+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// An identifier used to update an existing Slack workspace configuration in AWS CloudFormation.
	VersionId?: string & =~"^[0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
