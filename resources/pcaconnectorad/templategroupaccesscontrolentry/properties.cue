package templategroupaccesscontrolentry

import "strings"

#Properties: {
	AccessRights: #AccessRights
	GroupDisplayName: string & =~"^[\\x20-\\x7E]+$" & strings.MinRunes(0) & strings.MaxRunes(256)
	GroupSecurityIdentifier: string & =~"^S-[0-9]-([0-9]+-){1,14}[0-9]+$" & strings.MinRunes(7) & strings.MaxRunes(256)
	TemplateArn: string & =~"^arn:[\\w-]+:pca-connector-ad:[\\w-]+:[0-9]+:connector(\\/[\\w-]+)\\/template(\\/[\\w-]+)$" & strings.MinRunes(5) & strings.MaxRunes(200)
}

#AccessRights: {
	AutoEnroll?: #AccessRight
	Enroll?: #AccessRight
}
