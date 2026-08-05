package playbackrestrictionpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IVS::PlaybackRestrictionPolicy.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVS::PlaybackRestrictionPolicy"
	Properties: #Properties
}
