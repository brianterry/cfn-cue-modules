package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::KinesisAnalytics::Application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KinesisAnalytics::Application"
	Properties: #Properties
}
