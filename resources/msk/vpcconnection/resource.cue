package vpcconnection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MSK::VpcConnection
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MSK::VpcConnection"
	Properties: #Properties
}
