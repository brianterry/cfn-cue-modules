package anomalydetector

#Properties: {
	Configuration?: #Configuration
	Dimensions?: [...#Dimension]
	MetricCharacteristics?: #MetricCharacteristics
	MetricMathAnomalyDetector?: #MetricMathAnomalyDetector
	MetricName?: string
	Namespace?: string
	SingleMetricAnomalyDetector?: #SingleMetricAnomalyDetector
	Stat?: string
}

#Configuration: {
	ExcludedTimeRanges?: [...#Range]
	MetricTimeZone?: string
}

#Dimension: {
	Name: string
	Value: string
}

#Metric: {
	Dimensions?: [...#Dimension]
	MetricName: string
	Namespace: string
}

#MetricCharacteristics: {
	PeriodicSpikes?: bool
}

#MetricDataQuery: {
	AccountId?: string
	Expression?: string
	Id: string
	Label?: string
	MetricStat?: #MetricStat
	Period?: int
	ReturnData?: bool
}

#MetricMathAnomalyDetector: {
	MetricDataQueries?: [...#MetricDataQuery]
}

#MetricStat: {
	Metric: #Metric
	Period: int
	Stat: string
	Unit?: string
}

#Range: {
	EndTime: string
	StartTime: string
}

#SingleMetricAnomalyDetector: {
	AccountId?: string
	Dimensions?: [...#Dimension]
	MetricName?: string
	Namespace?: string
	Stat?: string
}
