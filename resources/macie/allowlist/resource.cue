package allowlist

import "github.com/brianterry/cfn-cue-modules/cfn"

// Macie AllowList resource schema
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Macie::AllowList"
	Properties: #Properties
}
