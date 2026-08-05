package hostedconfigurationversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppConfig::HostedConfigurationVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppConfig::HostedConfigurationVersion"
	Properties: #Properties
}
