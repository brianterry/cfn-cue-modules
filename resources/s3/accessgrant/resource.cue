package accessgrant

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::S3::AccessGrant resource is an Amazon S3 resource type representing permissions to a specific S3 bucket or prefix hosted in an S3 Access Grants instance. 
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3::AccessGrant"
	Properties: #Properties
}
