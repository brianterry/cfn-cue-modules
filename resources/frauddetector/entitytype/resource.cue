package entitytype

import "github.com/brianterry/cfn-cue-modules/cfn"

// An entity type for fraud detector.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FraudDetector::EntityType"
	Properties: #Properties
}
