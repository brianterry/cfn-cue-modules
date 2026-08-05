package resourcepolicy

import "strings"

#Properties: {
	// The IAM policy document defining access permissions for the guardrail and guardrail profile resources
	PolicyDocument: {...}
	// The ARN of the Bedrock Guardrail or Guardrail Profile resource
	ResourceArn: string & =~"^arn:aws(-[a-z]+)*:bedrock:[a-z0-9-]+:[0-9]{12}:(guardrail|guardrail-profile)/[a-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}
