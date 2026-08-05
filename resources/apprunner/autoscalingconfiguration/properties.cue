package autoscalingconfiguration

import "strings"

#Properties: {
	// The customer-provided auto scaling configuration name.  When you use it for the first time in an AWS Region, App Runner creates revision number 1 of this name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration. The auto scaling configuration name can be used in multiple revisions of a configuration.
	AutoScalingConfigurationName?: string & =~"[A-Za-z0-9][A-Za-z0-9\\-_]{3,31}" & strings.MinRunes(4) & strings.MaxRunes(32)
	// The maximum number of concurrent requests that an instance processes. If the number of concurrent requests exceeds this limit, App Runner scales the service up to use more instances to process the requests.
	MaxConcurrency?: int
	// The maximum number of instances that an App Runner service scales up to. At most MaxSize instances actively serve traffic for your service.
	MaxSize?: int
	// The minimum number of instances that App Runner provisions for a service. The service always has at least MinSize provisioned instances. Some of them actively serve traffic. The rest of them (provisioned and inactive instances) are a cost-effective compute capacity reserve and are ready to be quickly activated. You pay for memory usage of all the provisioned instances. You pay for CPU usage of only the active subset.
	MinSize?: int
	// A list of metadata items that you can associate with your auto scaling configuration resource. A tag is a key-value pair.
	Tags?: [...#Tag]
}

#Tag: {
	Key?: string
	Value?: string
}
