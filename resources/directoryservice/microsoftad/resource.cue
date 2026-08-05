package microsoftad

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DirectoryService::MicrosoftAD
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DirectoryService::MicrosoftAD"
	Properties: #Properties
}
