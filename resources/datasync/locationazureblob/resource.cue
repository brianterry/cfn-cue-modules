package locationazureblob

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DataSync::LocationAzureBlob.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::LocationAzureBlob"
	Properties: #Properties
}
