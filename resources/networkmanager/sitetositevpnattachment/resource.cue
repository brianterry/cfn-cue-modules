package sitetositevpnattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::NetworkManager::SiteToSiteVpnAttachment Resource Type definition.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::SiteToSiteVpnAttachment"
	Properties: #Properties
}
