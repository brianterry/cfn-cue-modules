package link

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RTBFabric::Link Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RTBFabric::Link"
	Properties: #Properties
}
