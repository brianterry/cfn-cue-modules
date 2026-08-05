package bucketpolicy

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the specified bucket.
	Bucket: string & =~"^arn:[^:]+:s3-outposts:[a-zA-Z0-9\\-]+:\\d{12}:outpost\\/[^:]+\\/bucket\\/[^:]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// A policy document containing permissions to add to the specified bucket.
	PolicyDocument: {...}
}
