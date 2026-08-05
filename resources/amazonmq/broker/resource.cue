package broker

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::AmazonMQ::Broker
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AmazonMQ::Broker"
	Properties: #Properties
}
