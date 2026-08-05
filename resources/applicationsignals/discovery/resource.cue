package discovery

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ApplicationSignals::Discovery
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApplicationSignals::Discovery"
	Properties: #Properties
}
