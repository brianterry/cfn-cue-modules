package directoryregistration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::PCAConnectorAD::DirectoryRegistration Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PCAConnectorAD::DirectoryRegistration"
	Properties: #Properties
}
