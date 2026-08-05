package privatevirtualinterface

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DirectConnect::PrivateVirtualInterface
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DirectConnect::PrivateVirtualInterface"
	Properties: #Properties
}
