package serviceprincipalname

import "strings"

#Properties: {
	ConnectorArn: string & =~"^arn:[\\w-]+:pca-connector-ad:[\\w-]+:[0-9]+:connector(\\/[\\w-]+)$" & strings.MinRunes(5) & strings.MaxRunes(200)
	DirectoryRegistrationArn: string & =~"^arn:[\\w-]+:pca-connector-ad:[\\w-]+:[0-9]+:directory-registration(\\/[\\w-]+)$" & strings.MinRunes(5) & strings.MaxRunes(200)
}
