package common

type CPPSymbol struct {
	Symbol string `json:"symbol"`
	Type   string `json:"type"`
	Name   string `json:"name"`
}

type ASTInformation struct {
	Namespace   string      `json:"namespace"`
	Class       string      `json:"class"`
	Name        string      `json:"name"`
	BaseClasses []string    `json:"baseClasses"`
	ReturnType  string      `json:"returnType"`
	Location    string      `json:"location"`
	Parameters  []Parameter `json:"parameters"`
	Symbol      string      `json:"symbol"`
}

type Parameter struct {
	Name string `json:"name"`
	Type string `json:"type"`
}

type SymbolInfo struct {
	Mangle string `json:"mangle"` // C++ Symbol
	CPP    string `json:"c++"`    // C++ function name
	Go     string `json:"go"`     // Go function name
}
