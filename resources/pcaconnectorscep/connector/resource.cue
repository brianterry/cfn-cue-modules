package connector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a Connector that allows certificate issuance through Simple Certificate Enrollment Protocol (SCEP)
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PCAConnectorSCEP::Connector"
	Properties: #Properties
}
