package slackchannelconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// An AWS Support App resource that creates, updates, lists and deletes Slack channel configurations.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SupportApp::SlackChannelConfiguration"
	Properties: #Properties
}
