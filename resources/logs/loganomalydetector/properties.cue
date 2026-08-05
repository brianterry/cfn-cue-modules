package loganomalydetector

import "strings"

#Properties: {
	// Account ID for owner of detector
	AccountId?: string
	AnomalyVisibilityTime?: number
	// Name of detector
	DetectorName?: string
	// How often log group is evaluated
	EvaluationFrequency?: "FIVE_MIN" | "TEN_MIN" | "FIFTEEN_MIN" | "THIRTY_MIN" | "ONE_HOUR"
	FilterPattern?: string
	// The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.
	KmsKeyId?: string & strings.MaxRunes(256)
	// List of Arns for the given log group
	LogGroupArnList?: [...string & strings.MinRunes(20) & strings.MaxRunes(2048)]
}
