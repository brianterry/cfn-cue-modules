package policy

import "strings"

#Properties: {
	// The Policy text content. For AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it.
	Content: {...}
	// Human readable description of the policy
	Description?: string & =~"[\\s\\S]*" & strings.MaxRunes(512)
	// Name of the Policy
	Name: string & =~"[\\s\\S]*" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A list of tags that you want to attach to the newly created policy. For each tag in the list, you must specify both a tag key and a value. You can set the value to an empty string, but you can't set it to null.
	Tags?: [...#Tag]
	// List of unique identifiers (IDs) of the root, OU, or account that you want to attach the policy to
	TargetIds?: [...string & =~"^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"]
	// The type of policy to create. You can specify one of the following values: AISERVICES_OPT_OUT_POLICY, BACKUP_POLICY, BEDROCK_POLICY, CHATBOT_POLICY, DECLARATIVE_POLICY_EC2, INSPECTOR_POLICY, NETWORK_SECURITY_DIRECTOR_POLICY, RESOURCE_CONTROL_POLICY, S3_POLICY, SECURITYHUB_POLICY, SERVICE_CONTROL_POLICY, TAG_POLICY, UPGRADE_ROLLOUT_POLICY
	Type: "AISERVICES_OPT_OUT_POLICY" | "BACKUP_POLICY" | "BEDROCK_POLICY" | "CHATBOT_POLICY" | "DECLARATIVE_POLICY_EC2" | "INSPECTOR_POLICY" | "NETWORK_SECURITY_DIRECTOR_POLICY" | "RESOURCE_CONTROL_POLICY" | "S3_POLICY" | "SECURITYHUB_POLICY" | "SERVICE_CONTROL_POLICY" | "TAG_POLICY" | "UPGRADE_ROLLOUT_POLICY"
}

#Tag: {
	// The key identifier, or name, of the tag.
	Key: string & =~"[\\s\\S]*" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The string value that's associated with the key of the tag. You can set the value of a tag to an empty string, but you can't set the value of a tag to null.
	Value: string & =~"[\\s\\S]*" & strings.MinRunes(0) & strings.MaxRunes(256)
}
