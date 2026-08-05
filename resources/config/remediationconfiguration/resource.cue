package remediationconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Config::RemediationConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Config::RemediationConfiguration"
	Properties: #Properties
}
