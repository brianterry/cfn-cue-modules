package connector

import "strings"

#Properties: {
	CertificateAuthorityArn: string & =~"^arn:[\\w-]+:acm-pca:[\\w-]+:[0-9]+:certificate-authority\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$" & strings.MinRunes(5) & strings.MaxRunes(200)
	DirectoryId: string & =~"^d-[0-9a-f]{10}$"
	Tags?: #Tags
	VpcInformation: #VpcInformation
}

#VpcInformation: {
	IpAddressType?: "IPV4" | "DUALSTACK"
	SecurityGroupIds: [...string & =~"^(?:sg-[0-9a-f]{8}|sg-[0-9a-f]{17})$" & strings.MinRunes(11) & strings.MaxRunes(20)]
}
