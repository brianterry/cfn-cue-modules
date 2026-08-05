package recordset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Route53::RecordSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53::RecordSet"
	Properties: #Properties
}
