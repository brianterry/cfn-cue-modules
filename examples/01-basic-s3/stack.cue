// Example 1: Basic S3 Bucket
//
// A simple typed S3 bucket demonstrating:
// - Resource type checking
// - Enum validation (SSEAlgorithm, VersioningStatus)
// - Exporting to CloudFormation YAML
//
// Run:
//   cue vet ./...
//   cue export . -e stack --out yaml
package basic

import (
	"github.com/brianterry/cfn-cue-modules/cfn"
	"github.com/brianterry/cfn-cue-modules/resources/s3/bucket"
)

stack: cfn.#Stack & {
	AWSTemplateFormatVersion: "2010-09-09"
	Description:              "Basic S3 bucket with encryption and versioning"

	Resources: {
		AppBucket: bucket.#Resource & {
			Properties: {
				BucketName: "my-app-data"
				BucketEncryption: ServerSideEncryptionConfiguration: [{
					ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms"
				}]
				VersioningConfiguration: Status: "Enabled"
				Tags: [
					{Key: "Project", Value: "my-app"},
					{Key: "Environment", Value: "production"},
				]
			}
		}
	}
}
