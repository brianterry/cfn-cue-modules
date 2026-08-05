package licenseendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::LicenseEndpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::LicenseEndpoint"
	Properties: #Properties
}
