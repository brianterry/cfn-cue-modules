package transitvirtualinterface

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DirectConnect::TransitVirtualInterface
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DirectConnect::TransitVirtualInterface"
	Properties: #Properties
}
