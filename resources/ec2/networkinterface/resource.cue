package networkinterface

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::NetworkInterface resource creates network interface
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NetworkInterface"
	Properties: #Properties
}
