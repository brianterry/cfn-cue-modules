// Example 3: Compliance Enforcement
//
// Demonstrates how CUE compliance constraints catch violations at authoring time.
//
// The S3 bucket below is unified with compliance.#NIST800_53Rev5 which requires:
// - Server-side encryption (SSEAlgorithm must be "aws:kms" or "AES256")
// - Public access blocked
//
// Try these experiments:
//
// 1. Run as-is (should pass):
//      cue vet ./...
//
// 2. Change SSEAlgorithm to "NONE" (should fail):
//      → "conflicting values" error at the exact field
//
// 3. Remove PublicAccessBlockConfiguration (should fail with incomplete value):
//      → When exported, the compliance constraint adds the required structure
//
// 4. Export the valid template:
//      cue export . -e stack --out yaml
package compliant

import (
	"github.com/brianterry/cfn-cue-modules/cfn"
	"github.com/brianterry/cfn-cue-modules/resources/s3/bucket"
	"github.com/brianterry/cfn-cue-modules/resources/s3/bucket/compliance"
)

stack: cfn.#Stack & {
	AWSTemplateFormatVersion: "2010-09-09"
	Description:              "NIST 800-53 compliant S3 bucket"

	Resources: {
		// This bucket MUST satisfy all NIST 800-53 controls.
		// If encryption or public access settings are wrong,
		// CUE will reject the template immediately.
		SecureBucket: bucket.#Resource & compliance.#NIST800_53Rev5 & {
			Properties: {
				BucketName: "my-secure-bucket"

				// Required by NIST SC-28 (encryption at rest)
				BucketEncryption: ServerSideEncryptionConfiguration: [{
					ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms"
				}]

				// Required by NIST AC-4 (public access blocked)
				PublicAccessBlockConfiguration: {
					BlockPublicAcls:       true
					BlockPublicPolicy:     true
					IgnorePublicAcls:      true
					RestrictPublicBuckets: true
				}

				VersioningConfiguration: Status: "Enabled"
			}
		}
	}
}
