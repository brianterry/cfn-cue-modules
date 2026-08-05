package campaign

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::ConnectCampaigns::Campaign Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ConnectCampaigns::Campaign"
	Properties: #Properties
}
