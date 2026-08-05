package sink

import "strings"

#Properties: {
	// The name of the ObservabilityAccessManager Sink.
	Name: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The policy of this ObservabilityAccessManager Sink.
	Policy?: {...}
	// Tags to apply to the sink
	Tags?: {...}
}
