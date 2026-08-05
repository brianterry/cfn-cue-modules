package resourceset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates an AWS Firewall Manager resource set.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FMS::ResourceSet"
	Properties: #Properties
}
