package requestergateway

import "strings"

#Properties: {
	Description?: #Description
	SecurityGroupIds: #SecurityGroupIds
	SubnetIds: #SubnetIds
	Tags?: #Tags
	VpcId: #VpcId
}

#ActiveLinksCount: int

#Arn: string & =~"^arn:aws:rtbfabric:[a-zA-Z0-9_-]+:[0-9]{12}:gateway/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)

#CreatedTimestamp: string

#Description: string & =~"^[A-Za-z0-9 ]+$"

#DomainName: string & =~"^(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?)(?:\\.(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?))+$"

#GatewayId: string & =~"^(rtbapp-[a-z0-9-]{1,25}|rtb-gw-[a-z0-9-]{1,25})$"

#RequesterGatewayStatus: "PENDING_CREATION" | "ACTIVE" | "PENDING_DELETION" | "DELETED" | "ERROR" | "PENDING_UPDATE" | "ISOLATED" | "PENDING_ISOLATION" | "PENDING_RESTORATION"

#SecurityGroupIds: [...string | string]

#SubnetIds: [...string]

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(resourceArn|internalId|[a-zA-Z0-9+\\-=._:/@]+)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(1600)
}

#Tags: [...#Tag]

#TotalLinksCount: int

#UpdatedTimestamp: string

#VpcId: string & strings.MinRunes(5) & strings.MaxRunes(50)
