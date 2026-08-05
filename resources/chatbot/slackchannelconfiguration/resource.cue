package slackchannelconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Chatbot::SlackChannelConfiguration.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Chatbot::SlackChannelConfiguration"
	Properties: #Properties
}
