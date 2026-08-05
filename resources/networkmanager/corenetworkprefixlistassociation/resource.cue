package corenetworkprefixlistassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::NetworkManager::CoreNetworkPrefixListAssociation which associates a prefix list with a core network.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::CoreNetworkPrefixListAssociation"
	Properties: #Properties
}
