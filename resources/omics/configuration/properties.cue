package configuration

import "strings"

#Properties: {
	// Optional description for the configuration.
	Description?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// User-friendly name for the configuration.
	Name: string & =~"^[A-Za-z0-9][A-Za-z0-9\\-\\._]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Required run-specific configurations.
	RunConfigurations: #RunConfigurations
	// Tags for the configuration.
	Tags?: #TagMap
}

#RunConfigurations: {
	VpcConfig?: #VpcConfig
}

#TagMap: {...}

#VpcConfig: {
	SecurityGroupIds?: [...string & =~"^sg-[0-9a-f]+$"]
	SubnetIds?: [...string & =~"^subnet-[0-9a-f]+$"]
}
