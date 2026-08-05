package signingprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// A signing profile is a signing template that can be used to carry out a pre-defined signing job.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Signer::SigningProfile"
	Properties: #Properties
}
