// Example 2: Serverless API
//
// A Lambda function + IAM role + S3 bucket demonstrating:
// - Multiple typed resources
// - Intrinsic functions (Fn::GetAtt, Ref)
// - Parameterized values with CUE variables
// - Outputs with cross-resource references
//
// Run:
//   cue vet ./...
//   cue export . -e stack --out yaml
package api

import (
	"github.com/brianterry/cfn-cue-modules/cfn"
	"github.com/brianterry/cfn-cue-modules/fn"
	"github.com/brianterry/cfn-cue-modules/resources/s3/bucket"
	"github.com/brianterry/cfn-cue-modules/resources/lambda/function"
)

// Configuration — change these to customize the stack
_config: {
	appName: "order-api"
	env:     "production"
	runtime: "python3.12"
}

stack: cfn.#Stack & {
	AWSTemplateFormatVersion: "2010-09-09"
	Description:              "\(_config.appName) - \(_config.env)"

	Resources: {
		// S3 bucket for application data
		DataBucket: bucket.#Resource & {
			Properties: {
				BucketName: "\(_config.appName)-data-\(_config.env)"
				BucketEncryption: ServerSideEncryptionConfiguration: [{
					ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms"
				}]
				VersioningConfiguration: Status: "Enabled"
			}
		}

		// IAM Role for the Lambda function
		ProcessorRole: {
			Type: "AWS::IAM::Role"
			Properties: {
				RoleName: "\(_config.appName)-role"
				AssumeRolePolicyDocument: {
					Version: "2012-10-17"
					Statement: [{
						Effect:    "Allow"
						Principal: Service: "lambda.amazonaws.com"
						Action: "sts:AssumeRole"
					}]
				}
				ManagedPolicyArns: [
					"arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
				]
			}
		}

		// Lambda function — typed with runtime enum validation
		Processor: function.#Resource & {
			Properties: {
				FunctionName: "\(_config.appName)-processor"
				Runtime:      _config.runtime
				Handler:      "index.handler"
				MemorySize:   256
				Timeout:      60
				Role: fn.#GetAtt & {"Fn::GetAtt": ["ProcessorRole", "Arn"]}
			}
		}
	}

	Outputs: {
		BucketArn: {
			Description: "Data bucket ARN"
			Value: fn.#GetAtt & {"Fn::GetAtt": ["DataBucket", "Arn"]}
		}
		FunctionArn: {
			Description: "Processor function ARN"
			Value: fn.#GetAtt & {"Fn::GetAtt": ["Processor", "Arn"]}
		}
	}
}
