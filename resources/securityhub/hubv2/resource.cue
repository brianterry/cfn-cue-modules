package hubv2

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::SecurityHub::HubV2 resource represents the implementation of the AWS Security Hub V2 service in your account. Only one hubv2 resource can created in each region in which you enable Security Hub V2.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::HubV2"
	Properties: #Properties
}
