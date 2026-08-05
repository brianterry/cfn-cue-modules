package userpoolgroup

import "strings"

#Properties: {
	Description?: string & strings.MaxRunes(2048)
	GroupName?: string
	Precedence?: int & >=0
	RoleArn?: string
	UserPoolId: string
}
