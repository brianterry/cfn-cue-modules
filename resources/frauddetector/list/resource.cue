package list

import "github.com/brianterry/cfn-cue-modules/cfn"

// A resource schema for a List in Amazon Fraud Detector.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FraudDetector::List"
	Properties: #Properties
}
