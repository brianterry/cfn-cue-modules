package mounttarget

import "strings"

#Properties: {
	FileSystemId: string & =~"^(arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}|fs-[0-9a-f]{17,40})$" & strings.MaxRunes(128)
	IpAddressType?: "IPV4_ONLY" | "IPV6_ONLY" | "DUAL_STACK"
	Ipv4Address?: string & =~"^[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}$" & strings.MinRunes(7) & strings.MaxRunes(15)
	Ipv6Address?: string & strings.MinRunes(3) & strings.MaxRunes(39)
	SecurityGroups?: [...string & =~"^(sg-[0-9a-f]{8,40})$" & strings.MinRunes(11) & strings.MaxRunes(43)]
	SubnetId: string & =~"^subnet-[0-9a-f]{8,40}$" & strings.MinRunes(15) & strings.MaxRunes(47)
}
