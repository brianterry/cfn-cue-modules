package hub

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::SecurityHub::Hub resource represents the implementation of the AWS Security Hub service in your account. One hub resource is created for each Region in which you enable Security Hub.


#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::Hub"
	Properties: #Properties
}
