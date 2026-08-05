package grant

import "github.com/brianterry/cfn-cue-modules/cfn"

// An example resource schema demonstrating some basic constructs and validation rules.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LicenseManager::Grant"
	Properties: #Properties
}
