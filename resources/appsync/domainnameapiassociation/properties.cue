package domainnameapiassociation

import "strings"

#Properties: {
	ApiId: string
	DomainName: string & =~"^(\\*[a-z\\d-]*\\.)?([a-z\\d-]+\\.)+[a-z\\d-]+$" & strings.MinRunes(1) & strings.MaxRunes(253)
}
