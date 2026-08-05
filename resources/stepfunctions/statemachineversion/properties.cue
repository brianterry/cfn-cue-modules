package statemachineversion

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	StateMachineArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	StateMachineRevisionId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}
