package detector

import "github.com/brianterry/cfn-cue-modules/cfn"

// A resource schema for a Detector in Amazon Fraud Detector.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FraudDetector::Detector"
	Properties: #Properties
}
