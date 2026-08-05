package globalnetwork

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::NetworkManager::GlobalNetwork type specifies a global network of the user's account
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::GlobalNetwork"
	Properties: #Properties
}
