package multiregionaccesspointpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// The policy to be attached to a Multi Region Access Point
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3::MultiRegionAccessPointPolicy"
	Properties: #Properties
}
