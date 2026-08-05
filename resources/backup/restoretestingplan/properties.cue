package restoretestingplan

import "strings"

#Properties: {
	RecoveryPointSelection: #RestoreTestingRecoveryPointSelection
	RestoreTestingPlanName: string
	ScheduleExpression: string
	ScheduleExpressionTimezone?: string
	StartWindowHours?: int
	Tags?: [...#Tag]
}

#RestoreTestingRecoveryPointSelection: {
	Algorithm: #RestoreTestingRecoveryPointSelectionAlgorithm
	ExcludeVaults?: [...string]
	IncludeVaults: [...string]
	RecoveryPointTypes: [...#RestoreTestingRecoveryPointType]
	SelectionWindowDays?: int
}

#RestoreTestingRecoveryPointSelectionAlgorithm: "LATEST_WITHIN_WINDOW" | "RANDOM_WITHIN_WINDOW"

#RestoreTestingRecoveryPointType: "SNAPSHOT" | "CONTINUOUS"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
