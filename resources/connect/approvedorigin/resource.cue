package approvedorigin

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::ApprovedOrigin
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::ApprovedOrigin"
	Properties: #Properties
}
