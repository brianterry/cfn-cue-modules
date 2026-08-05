package label

import "github.com/brianterry/cfn-cue-modules/cfn"

// An label for fraud detector.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FraudDetector::Label"
	Properties: #Properties
}
