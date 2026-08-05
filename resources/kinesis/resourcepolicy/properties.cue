package resourcepolicy

import "strings"

#Properties: {
	// The ARN of the AWS Kinesis resource to which the policy applies.
	ResourceArn: string | string
	// A policy document containing permissions to add to the specified resource. In IAM, you must provide policy documents in JSON format. However, in CloudFormation you can provide the policy in JSON or YAML format because CloudFormation converts YAML to JSON before submitting it to IAM.
	ResourcePolicy: {...}
}
