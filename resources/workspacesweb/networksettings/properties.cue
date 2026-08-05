package networksettings

import "strings"

#Properties: {
	SecurityGroupIds: [...string & =~"^[\\w+\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)]
	SubnetIds: [...string & =~"^subnet-([0-9a-f]{8}|[0-9a-f]{17})$" & strings.MinRunes(1) & strings.MaxRunes(32)]
	Tags?: [...#Tag]
	VpcId: string & =~"^vpc-[0-9a-z]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
