package trackerconsumer

import "strings"

#Properties: {
	ConsumerArn: string & =~"^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:([^/].*)?$" & strings.MaxRunes(1600)
	TrackerName: string & =~"^[-._\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
}
