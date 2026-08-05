package dbproxytargetgroup

import "strings"

#Properties: {
	ConnectionPoolConfigurationInfo?: #ConnectionPoolConfigurationInfoFormat
	DBClusterIdentifiers?: [...string]
	DBInstanceIdentifiers?: [...string]
	// The identifier for the proxy.
	DBProxyName: string & =~"[A-z][0-z]*" & strings.MaxRunes(64)
	// The identifier for the DBProxyTargetGroup
	TargetGroupName: "default"
}

#ConnectionPoolConfigurationInfoFormat: {
	// The number of seconds for a proxy to wait for a connection to become available in the connection pool.
	ConnectionBorrowTimeout?: int
	// One or more SQL statements for the proxy to run when opening each new database connection.
	InitQuery?: string
	// The maximum size of the connection pool for each target in a target group.
	MaxConnectionsPercent?: int & >=0 & <=100
	// Controls how actively the proxy closes idle database connections in the connection pool.
	MaxIdleConnectionsPercent?: int & >=0 & <=100
	// Each item in the list represents a class of SQL operations that normally cause all later statements in a session using a proxy to be pinned to the same underlying database connection.
	SessionPinningFilters?: [...string]
}
