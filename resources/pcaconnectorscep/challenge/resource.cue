package challenge

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a SCEP Challenge that is used for certificate enrollment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PCAConnectorSCEP::Challenge"
	Properties: #Properties
}
