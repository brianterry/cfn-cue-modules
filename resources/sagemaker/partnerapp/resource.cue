package partnerapp

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::PartnerApp
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::PartnerApp"
	Properties: #Properties
}
