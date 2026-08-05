package connector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::KafkaConnect::Connector
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KafkaConnect::Connector"
	Properties: #Properties
}
