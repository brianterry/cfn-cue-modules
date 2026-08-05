package locationfsxontap

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DataSync::LocationFSxONTAP.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationFSxONTAP"
	Properties: #Properties
}
