package accesspoint

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the bucket you want to associate this AccessPoint with.
	Bucket: string & =~"^arn:[^:]+:s3-outposts:[a-zA-Z0-9\\-]+:\\d{12}:outpost\\/[^:]+\\/bucket\\/[^:]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// A name for the AccessPoint.
	Name: string & =~"^[a-z0-9]([a-z0-9\\\\-]*[a-z0-9])?$" & strings.MinRunes(3) & strings.MaxRunes(50)
	// The access point policy associated with this access point.
	Policy?: {...}
	// Virtual Private Cloud (VPC) from which requests can be made to the AccessPoint.
	VpcConfiguration: #VpcConfiguration
}

#VpcConfiguration: {
	// Virtual Private Cloud (VPC) Id from which AccessPoint will allow requests.
	VpcId?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}
