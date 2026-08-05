package site

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::NetworkManager::Site type describes a site.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::Site"
	Properties: #Properties
}
