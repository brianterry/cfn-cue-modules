package configurationassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AmazonMQ::ConfigurationAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AmazonMQ::ConfigurationAssociation"
	Properties: #Properties
}
