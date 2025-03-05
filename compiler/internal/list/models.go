package list

// {
//     "cgood": {
//         "versions" : [{
//             "c": "1.3",
//             "go": ["v0.1.0", "v0.1.1"]
//         },
//         {
//             "c": "1.3.1",
//             "go": ["v1.1.0"]
//         }]
//     }
// }

type Store struct {
	Packages map[string]*Package
}

type Package struct {
	Name     string
	Versions []VersionMapping
}

type VersionMapping struct {
	CVersion   string
	GoVersions []string
}

type LLPkgInfo struct {
	Upstream struct {
		Installer struct {
			Name   string
			Config map[string]string
		}
		Package struct {
			Name    string
			Version string
		}
	}
}
