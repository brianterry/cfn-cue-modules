package accountcustomization

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for managing AWS account-level UX customization settings, including account color, visible services, and visible regions.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::UXC::AccountCustomization"
	Properties: #Properties
}
