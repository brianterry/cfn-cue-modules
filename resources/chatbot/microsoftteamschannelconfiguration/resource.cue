package microsoftteamschannelconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Chatbot::MicrosoftTeamsChannelConfiguration.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Chatbot::MicrosoftTeamsChannelConfiguration"
	Properties: #Properties
}
