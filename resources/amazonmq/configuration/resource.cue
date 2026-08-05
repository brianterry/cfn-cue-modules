package configuration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AmazonMQ::Configuration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AmazonMQ::Configuration"
	Properties: #Properties
}
