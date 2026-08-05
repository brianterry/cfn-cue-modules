package authpolicy

import "strings"

#Properties: {
	Policy: {...}
	ResourceIdentifier: string & =~"^((((sn)|(svc))-[0-9a-z]{17})|(arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:((servicenetwork/sn)|(service/svc))-[0-9a-z]{17}))$" & strings.MinRunes(17) & strings.MaxRunes(200)
}
