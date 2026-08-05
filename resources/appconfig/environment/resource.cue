package environment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppConfig::Environment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppConfig::Environment"
	Properties: #Properties
}
