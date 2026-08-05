package identitysource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MPA::IdentitySource.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MPA::IdentitySource"
	Properties: #Properties
}
