package license

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::LicenseManager::License
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LicenseManager::License"
	Properties: #Properties
}
