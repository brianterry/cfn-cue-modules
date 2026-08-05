package package

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a package and storage location in an Amazon S3 access point.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Panorama::Package"
	Properties: #Properties
}
