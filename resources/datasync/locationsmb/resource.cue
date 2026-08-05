package locationsmb

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DataSync::LocationSMB.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationSMB"
	Properties: #Properties
}
