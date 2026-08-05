package slackworkspaceconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// An AWS Support App resource that creates, updates, lists, and deletes Slack workspace configurations.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SupportApp::SlackWorkspaceConfiguration"
	Properties: #Properties
}
