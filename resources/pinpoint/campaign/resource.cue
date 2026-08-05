package campaign

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::Campaign
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::Campaign"
	Properties: #Properties
}
