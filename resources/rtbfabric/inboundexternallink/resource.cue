package inboundexternallink

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RTBFabric::InboundExternalLink Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RTBFabric::InboundExternalLink"
	Properties: #Properties
}
