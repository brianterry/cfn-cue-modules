package servicesetting

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SSM::ServiceSetting. ServiceSetting is an account-level setting for an AWS service that defines how a user interacts with or uses a service or feature.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSM::ServiceSetting"
	Properties: #Properties
}
