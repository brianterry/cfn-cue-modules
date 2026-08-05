package resourcepolicy

import "strings"

#Properties: {
	Policy: {...}
	ResourceArn: string & =~"^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:((servicenetwork/sn)|(service/svc)|(resourceconfiguration/rcfg))-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(200)
}
