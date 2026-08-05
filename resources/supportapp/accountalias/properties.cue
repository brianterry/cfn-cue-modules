package accountalias

import "strings"

#Properties: {
	// An account alias associated with a customer's account.
	AccountAlias: string & =~"^[\\w\\- ]+$" & strings.MinRunes(1) & strings.MaxRunes(30)
}
