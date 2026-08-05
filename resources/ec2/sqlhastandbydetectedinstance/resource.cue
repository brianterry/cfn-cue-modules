package sqlhastandbydetectedinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::SqlHaStandbyDetectedInstance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::SqlHaStandbyDetectedInstance"
	Properties: #Properties
}
