package keysigningkey

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a key signing key (KSK) associated with a hosted zone. You can only have two KSKs per hosted zone.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53::KeySigningKey"
	Properties: #Properties
}
