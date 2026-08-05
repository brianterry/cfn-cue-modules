package templategroupaccesscontrolentry

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::PCAConnectorAD::TemplateGroupAccessControlEntry Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PCAConnectorAD::TemplateGroupAccessControlEntry"
	Properties: #Properties
}
