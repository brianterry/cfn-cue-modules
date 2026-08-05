package configurationaggregator

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Config::ConfigurationAggregator
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Config::ConfigurationAggregator"
	Properties: #Properties
}
