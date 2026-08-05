package variable

import "github.com/brianterry/cfn-cue-modules/cfn"

// A resource schema for a Variable in Amazon Fraud Detector.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FraudDetector::Variable"
	Properties: #Properties
}
