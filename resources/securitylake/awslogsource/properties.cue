package awslogsource

import "strings"

#Properties: {
	// AWS account where you want to collect logs from.
	Accounts?: [...string & =~"^[0-9]{12}$"]
	// The ARN for the data lake.
	DataLakeArn: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name for a AWS source. This must be a Regionally unique value.
	SourceName: string
	// The version for a AWS source. This must be a Regionally unique value.
	SourceVersion: string & =~"^(latest|[0-9]\\.[0-9])$"
}
