package dashboard

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudWatch::Dashboard
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudWatch::Dashboard"
	Properties: #Properties
}
