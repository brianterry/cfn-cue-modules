package connection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Interconnect::Connection. Creates a managed network connection between AWS and a partner cloud service provider.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Interconnect::Connection"
	Properties: #Properties
}
