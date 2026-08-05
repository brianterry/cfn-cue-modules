package publicvirtualinterface

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DirectConnect::PublicVirtualInterface
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DirectConnect::PublicVirtualInterface"
	Properties: #Properties
}
