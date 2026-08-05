package provisioningtemplate

import "strings"

#Properties: {
	Description?: string & strings.MaxRunes(500)
	Enabled?: bool
	PreProvisioningHook?: #ProvisioningHook
	ProvisioningRoleArn: string
	Tags?: [...#Tag]
	TemplateBody: string
	TemplateName?: string & =~"^[0-9A-Za-z_-]+$" & strings.MinRunes(1) & strings.MaxRunes(36)
	TemplateType?: "FLEET_PROVISIONING" | "JITP"
}

#ProvisioningHook: {
	PayloadVersion?: string
	TargetArn?: string
}

#Tag: {
	Key: string
	Value: string
}
