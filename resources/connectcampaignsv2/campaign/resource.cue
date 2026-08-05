package campaign

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::ConnectCampaignsV2::Campaign Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ConnectCampaignsV2::Campaign"
	Properties: #Properties
}
