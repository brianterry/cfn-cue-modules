package signingconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::ECR::SigningConfiguration resource creates or updates the signing configuration for an Amazon ECR registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECR::SigningConfiguration"
	Properties: #Properties
}
