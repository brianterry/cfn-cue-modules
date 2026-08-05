package configurationrecorder

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Config::ConfigurationRecorder
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Config::ConfigurationRecorder"
	Properties: #Properties
}
