package link

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::NetworkManager::Link type describes a link.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::Link"
	Properties: #Properties
}
