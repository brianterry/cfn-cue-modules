package vpcattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::NetworkManager::VpcAttachment Resoruce Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::VpcAttachment"
	Properties: #Properties
}
