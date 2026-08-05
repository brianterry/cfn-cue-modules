package eventtype

import "github.com/brianterry/cfn-cue-modules/cfn"

// A resource schema for an EventType in Amazon Fraud Detector.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FraudDetector::EventType"
	Properties: #Properties
}
