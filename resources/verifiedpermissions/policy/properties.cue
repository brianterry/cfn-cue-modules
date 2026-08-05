package policy

import "strings"

#Properties: {
	Definition: #PolicyDefinition
	Name?: string & =~"^[a-zA-Z0-9-/_]*$" & strings.MinRunes(0) & strings.MaxRunes(150)
	PolicyStoreId: string & =~"^[a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
}

#EntityIdentifier: {
	EntityId: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	EntityType: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(200)
}

#PolicyDefinition: {
	Static: #StaticPolicyDefinition
} | {
	TemplateLinked: #TemplateLinkedPolicyDefinition
}

#PolicyType: "STATIC" | "TEMPLATE_LINKED"

#StaticPolicyDefinition: {
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(150)
	Statement: string & strings.MinRunes(1) & strings.MaxRunes(10000)
}

#TemplateLinkedPolicyDefinition: {
	PolicyTemplateId: string & =~"^[a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	Principal?: #EntityIdentifier
	Resource?: #EntityIdentifier
}
