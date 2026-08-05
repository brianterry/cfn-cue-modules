package challenge

import "strings"

#Properties: {
	ConnectorArn: string & =~"^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$" & strings.MinRunes(5) & strings.MaxRunes(200)
	Tags?: #Tags
}

#Tags: {...}

#Unit: {...}
