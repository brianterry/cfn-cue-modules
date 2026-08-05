package recordsetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Route53::RecordSetGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53::RecordSetGroup"
	Properties: #Properties
}
