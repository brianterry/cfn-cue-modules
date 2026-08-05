package linkassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::NetworkManager::LinkAssociation type associates a link to a device. The device and link must be in the same global network and the same site.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::LinkAssociation"
	Properties: #Properties
}
