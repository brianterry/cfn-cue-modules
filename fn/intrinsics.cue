// Package fn provides CUE definitions for CloudFormation intrinsic functions.
// Use these to get type-checking on Ref, GetAtt, Sub, etc.
package fn

// #Ref produces {"Ref": logicalName}
#Ref: {
	"Ref": string
}

// #GetAtt produces {"Fn::GetAtt": [logicalName, attribute]}
#GetAtt: {
	"Fn::GetAtt": [string, string]
}

// #Sub produces {"Fn::Sub": template}
#Sub: {
	"Fn::Sub": string
}

// #Join produces {"Fn::Join": [delimiter, values]}
#Join: {
	"Fn::Join": [string, [...]]
}

// #Select produces {"Fn::Select": [index, list]}
#Select: {
	"Fn::Select": [_, [...]]
}

// #Split produces {"Fn::Split": [delimiter, source]}
#Split: {
	"Fn::Split": [string, _]
}

// #If produces {"Fn::If": [condition, valueIfTrue, valueIfFalse]}
#If: {
	"Fn::If": [string, _, _]
}

// #Equals produces {"Fn::Equals": [a, b]}
#Equals: {
	"Fn::Equals": [_, _]
}

// #And produces {"Fn::And": conditions}
#And: {
	"Fn::And": [...]
}

// #Or produces {"Fn::Or": conditions}
#Or: {
	"Fn::Or": [...]
}

// #Not produces {"Fn::Not": [condition]}
#Not: {
	"Fn::Not": [_]
}

// #Base64 produces {"Fn::Base64": value}
#Base64: {
	"Fn::Base64": _
}

// #Cidr produces {"Fn::Cidr": [ipBlock, count, cidrBits]}
#Cidr: {
	"Fn::Cidr": [_, _, _]
}

// #FindInMap produces {"Fn::FindInMap": [mapName, firstKey, secondKey]}
#FindInMap: {
	"Fn::FindInMap": [string, _, _]
}

// #GetAZs produces {"Fn::GetAZs": region}
#GetAZs: {
	"Fn::GetAZs": string
}

// #ImportValue produces {"Fn::ImportValue": sharedValue}
#ImportValue: {
	"Fn::ImportValue": _
}
