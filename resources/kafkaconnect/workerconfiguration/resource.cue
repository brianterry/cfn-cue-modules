package workerconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// The configuration of the workers, which are the processes that run the connector logic.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KafkaConnect::WorkerConfiguration"
	Properties: #Properties
}
