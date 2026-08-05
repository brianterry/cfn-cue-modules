package outboundexternallink

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RTBFabric::OutboundExternalLink Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RTBFabric::OutboundExternalLink"
	Properties: #Properties
}
