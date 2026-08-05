package baiduchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::BaiduChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::BaiduChannel"
	Properties: #Properties
}
