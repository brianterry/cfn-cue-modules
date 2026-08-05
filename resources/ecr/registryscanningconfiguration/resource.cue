package registryscanningconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// The scanning configuration for a private registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECR::RegistryScanningConfiguration"
	Properties: #Properties
}
