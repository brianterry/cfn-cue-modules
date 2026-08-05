package hostedzoneassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53GlobalResolver::HostedZoneAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53GlobalResolver::HostedZoneAssociation"
	Properties: #Properties
}
