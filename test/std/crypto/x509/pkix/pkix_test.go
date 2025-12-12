package pkix_test

import (
	"crypto/x509/pkix"
	"encoding/asn1"
	"math/big"
	"testing"
	"time"
)

func TestAlgorithmIdentifier(t *testing.T) {
	oid := asn1.ObjectIdentifier{1, 2, 840, 113549, 1, 1, 5}
	ai := pkix.AlgorithmIdentifier{
		Algorithm: oid,
	}
	if len(ai.Algorithm) != len(oid) {
		t.Errorf("Algorithm OID length = %d, want %d", len(ai.Algorithm), len(oid))
	}
	for i, v := range oid {
		if ai.Algorithm[i] != v {
			t.Errorf("Algorithm OID[%d] = %d, want %d", i, ai.Algorithm[i], v)
		}
	}
}

func TestAttributeTypeAndValue(t *testing.T) {
	oid := asn1.ObjectIdentifier{2, 5, 4, 3}
	value := "example.com"
	atv := pkix.AttributeTypeAndValue{
		Type:  oid,
		Value: value,
	}
	if len(atv.Type) != len(oid) {
		t.Errorf("Type OID length = %d, want %d", len(atv.Type), len(oid))
	}
	if atv.Value != value {
		t.Errorf("Value = %v, want %v", atv.Value, value)
	}
}

func TestAttributeTypeAndValueSET(t *testing.T) {
	atv1 := pkix.AttributeTypeAndValue{
		Type:  asn1.ObjectIdentifier{2, 5, 4, 3},
		Value: "test1",
	}
	atv2 := pkix.AttributeTypeAndValue{
		Type:  asn1.ObjectIdentifier{2, 5, 4, 6},
		Value: "test2",
	}
	set := pkix.AttributeTypeAndValueSET{
		Type:  asn1.ObjectIdentifier{2, 5, 4, 10},
		Value: [][]pkix.AttributeTypeAndValue{{atv1}, {atv2}},
	}
	if len(set.Value) != 2 {
		t.Errorf("SET Value length = %d, want 2", len(set.Value))
	}
	if len(set.Type) == 0 {
		t.Error("SET Type is empty")
	}
}

func TestCertificateList(t *testing.T) {
	tbs := pkix.TBSCertificateList{
		Version: 2,
		Signature: pkix.AlgorithmIdentifier{
			Algorithm: asn1.ObjectIdentifier{1, 2, 840, 113549, 1, 1, 5},
		},
		Issuer:     pkix.RDNSequence{},
		ThisUpdate: time.Date(2023, 1, 1, 0, 0, 0, 0, time.UTC),
		NextUpdate: time.Date(2024, 1, 1, 0, 0, 0, 0, time.UTC),
	}
	cl := pkix.CertificateList{
		TBSCertList: tbs,
		SignatureAlgorithm: pkix.AlgorithmIdentifier{
			Algorithm: asn1.ObjectIdentifier{1, 2, 840, 113549, 1, 1, 5},
		},
		SignatureValue: asn1.BitString{Bytes: []byte{0x01, 0x02, 0x03}},
	}
	if cl.TBSCertList.Version != 2 {
		t.Errorf("Version = %d, want 2", cl.TBSCertList.Version)
	}
	if !cl.TBSCertList.ThisUpdate.Equal(time.Date(2023, 1, 1, 0, 0, 0, 0, time.UTC)) {
		t.Errorf("ThisUpdate mismatch")
	}
}

func TestCertificateListHasExpired(t *testing.T) {
	pastTime := time.Date(2020, 1, 1, 0, 0, 0, 0, time.UTC)
	futureTime := time.Date(2030, 1, 1, 0, 0, 0, 0, time.UTC)

	expiredCL := pkix.CertificateList{
		TBSCertList: pkix.TBSCertificateList{
			NextUpdate: pastTime,
		},
	}
	if !expiredCL.HasExpired(time.Now()) {
		t.Error("HasExpired(time.Now()) = false for expired CRL, want true")
	}

	validCL := pkix.CertificateList{
		TBSCertList: pkix.TBSCertificateList{
			NextUpdate: futureTime,
		},
	}
	if validCL.HasExpired(time.Now()) {
		t.Error("HasExpired(time.Now()) = true for valid CRL, want false")
	}

	if !validCL.HasExpired(futureTime.Add(time.Hour)) {
		t.Error("HasExpired(after NextUpdate) = false, want true")
	}
}

func TestExtension(t *testing.T) {
	oid := asn1.ObjectIdentifier{2, 5, 29, 19}
	value := []byte{0x30, 0x00}
	ext := pkix.Extension{
		Id:       oid,
		Critical: true,
		Value:    value,
	}
	if len(ext.Id) != len(oid) {
		t.Errorf("Extension OID length = %d, want %d", len(ext.Id), len(oid))
	}
	if !ext.Critical {
		t.Error("Extension.Critical = false, want true")
	}
	if len(ext.Value) != len(value) {
		t.Errorf("Extension.Value length = %d, want %d", len(ext.Value), len(value))
	}
}

func TestName(t *testing.T) {
	name := pkix.Name{
		Country:            []string{"US"},
		Organization:       []string{"Example Org"},
		OrganizationalUnit: []string{"IT"},
		Locality:           []string{"San Francisco"},
		Province:           []string{"CA"},
		StreetAddress:      []string{"123 Main St"},
		PostalCode:         []string{"94102"},
		SerialNumber:       "12345",
		CommonName:         "example.com",
	}

	if len(name.Country) != 1 || name.Country[0] != "US" {
		t.Errorf("Country = %v, want [US]", name.Country)
	}
	if len(name.Organization) != 1 || name.Organization[0] != "Example Org" {
		t.Errorf("Organization = %v, want [Example Org]", name.Organization)
	}
	if name.CommonName != "example.com" {
		t.Errorf("CommonName = %s, want example.com", name.CommonName)
	}
}

func TestNameString(t *testing.T) {
	name := pkix.Name{
		CommonName: "example.com",
		Country:    []string{"US"},
	}
	str := name.String()
	if len(str) == 0 {
		t.Error("Name.String() returned empty string")
	}
}

func TestNameFillFromRDNSequence(t *testing.T) {
	rdns := pkix.RDNSequence{
		pkix.RelativeDistinguishedNameSET{
			pkix.AttributeTypeAndValue{
				Type:  asn1.ObjectIdentifier{2, 5, 4, 3},
				Value: "example.com",
			},
		},
	}
	name := pkix.Name{}
	name.FillFromRDNSequence(&rdns)
	if name.CommonName != "example.com" {
		t.Errorf("CommonName after FillFromRDNSequence = %s, want example.com", name.CommonName)
	}
}

func TestNameToRDNSequence(t *testing.T) {
	name := pkix.Name{
		CommonName:   "example.com",
		Organization: []string{"Test Org"},
		Country:      []string{"US"},
	}
	rdns := name.ToRDNSequence()
	if len(rdns) == 0 {
		t.Error("ToRDNSequence returned empty sequence")
	}
}

func TestRDNSequence(t *testing.T) {
	rdns := pkix.RDNSequence{
		pkix.RelativeDistinguishedNameSET{
			pkix.AttributeTypeAndValue{
				Type:  asn1.ObjectIdentifier{2, 5, 4, 3},
				Value: "example.com",
			},
		},
		pkix.RelativeDistinguishedNameSET{
			pkix.AttributeTypeAndValue{
				Type:  asn1.ObjectIdentifier{2, 5, 4, 10},
				Value: "Test Org",
			},
		},
	}
	if len(rdns) != 2 {
		t.Errorf("RDNSequence length = %d, want 2", len(rdns))
	}
}

func TestRDNSequenceString(t *testing.T) {
	rdns := pkix.RDNSequence{
		pkix.RelativeDistinguishedNameSET{
			pkix.AttributeTypeAndValue{
				Type:  asn1.ObjectIdentifier{2, 5, 4, 3},
				Value: "example.com",
			},
		},
	}
	str := rdns.String()
	if len(str) == 0 {
		t.Error("RDNSequence.String() returned empty string")
	}
}

func TestRelativeDistinguishedNameSET(t *testing.T) {
	set := pkix.RelativeDistinguishedNameSET{
		pkix.AttributeTypeAndValue{
			Type:  asn1.ObjectIdentifier{2, 5, 4, 3},
			Value: "example.com",
		},
		pkix.AttributeTypeAndValue{
			Type:  asn1.ObjectIdentifier{2, 5, 4, 6},
			Value: "US",
		},
	}
	if len(set) != 2 {
		t.Errorf("RelativeDistinguishedNameSET length = %d, want 2", len(set))
	}
}

func TestRevokedCertificate(t *testing.T) {
	serialNumber := big.NewInt(12345)
	revocationTime := time.Date(2023, 6, 1, 0, 0, 0, 0, time.UTC)
	rc := pkix.RevokedCertificate{
		SerialNumber:   serialNumber,
		RevocationTime: revocationTime,
		Extensions: []pkix.Extension{
			{
				Id:    asn1.ObjectIdentifier{2, 5, 29, 21},
				Value: []byte{0x0A, 0x01, 0x01},
			},
		},
	}
	if rc.SerialNumber.Cmp(serialNumber) != 0 {
		t.Errorf("SerialNumber = %v, want %v", rc.SerialNumber, serialNumber)
	}
	if !rc.RevocationTime.Equal(revocationTime) {
		t.Errorf("RevocationTime mismatch")
	}
	if len(rc.Extensions) != 1 {
		t.Errorf("Extensions length = %d, want 1", len(rc.Extensions))
	}
}

func TestTBSCertificateList(t *testing.T) {
	thisUpdate := time.Date(2023, 1, 1, 0, 0, 0, 0, time.UTC)
	nextUpdate := time.Date(2024, 1, 1, 0, 0, 0, 0, time.UTC)
	tbs := pkix.TBSCertificateList{
		Version: 2,
		Signature: pkix.AlgorithmIdentifier{
			Algorithm: asn1.ObjectIdentifier{1, 2, 840, 113549, 1, 1, 5},
		},
		Issuer: pkix.RDNSequence{
			pkix.RelativeDistinguishedNameSET{
				pkix.AttributeTypeAndValue{
					Type:  asn1.ObjectIdentifier{2, 5, 4, 3},
					Value: "Test CA",
				},
			},
		},
		ThisUpdate: thisUpdate,
		NextUpdate: nextUpdate,
		RevokedCertificates: []pkix.RevokedCertificate{
			{
				SerialNumber:   big.NewInt(123),
				RevocationTime: time.Date(2023, 3, 1, 0, 0, 0, 0, time.UTC),
			},
		},
		Extensions: []pkix.Extension{
			{
				Id:    asn1.ObjectIdentifier{2, 5, 29, 20},
				Value: []byte{0x04, 0x02, 0x04, 0x00},
			},
		},
	}

	if tbs.Version != 2 {
		t.Errorf("Version = %d, want 2", tbs.Version)
	}
	if !tbs.ThisUpdate.Equal(thisUpdate) {
		t.Errorf("ThisUpdate mismatch")
	}
	if !tbs.NextUpdate.Equal(nextUpdate) {
		t.Errorf("NextUpdate mismatch")
	}
	if len(tbs.RevokedCertificates) != 1 {
		t.Errorf("RevokedCertificates length = %d, want 1", len(tbs.RevokedCertificates))
	}
	if len(tbs.Extensions) != 1 {
		t.Errorf("Extensions length = %d, want 1", len(tbs.Extensions))
	}
}

func TestNameExtraNames(t *testing.T) {
	name := pkix.Name{
		CommonName: "example.com",
		ExtraNames: []pkix.AttributeTypeAndValue{
			{
				Type:  asn1.ObjectIdentifier{1, 2, 3, 4},
				Value: "custom value",
			},
		},
	}
	if len(name.ExtraNames) != 1 {
		t.Errorf("ExtraNames length = %d, want 1", len(name.ExtraNames))
	}
	if name.ExtraNames[0].Value != "custom value" {
		t.Errorf("ExtraNames[0].Value = %v, want custom value", name.ExtraNames[0].Value)
	}
}

func TestNameNames(t *testing.T) {
	name := pkix.Name{
		CommonName: "example.com",
		Names: []pkix.AttributeTypeAndValue{
			{
				Type:  asn1.ObjectIdentifier{2, 5, 4, 3},
				Value: "example.com",
			},
		},
	}
	if len(name.Names) != 1 {
		t.Errorf("Names length = %d, want 1", len(name.Names))
	}
}
