package internal

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

type ASN1_BOOLEAN c.Int

type asn1_string_st struct {
	Length c.Int
	Typ    c.Int
	Data   *byte
	/*
	 * The value of the following field depends on the type being held.  It
	 * is mostly being used for BIT_STRING so if the input data has a
	 * non-zero 'unused bits' value, it will be handled correctly
	 */
	Flags c.Long
}

type asn1_object_st struct {
	Sn, Ln *c.Char
	Nid    c.Int
	Length c.Int
	Data   *byte /* data remains const after init */
	Flags  c.Int /* Should we free this one */
}

type ASN1_VALUE_st struct {
}

type ASN1_STRING asn1_string_st
type ASN1_INTEGER asn1_string_st
type ASN1_ENUMERATED asn1_string_st
type ASN1_BIT_STRING asn1_string_st
type ASN1_OCTET_STRING asn1_string_st
type ASN1_PRINTABLESTRING asn1_string_st
type ASN1_T61STRING asn1_string_st
type ASN1_IA5STRING asn1_string_st
type ASN1_GENERALSTRING asn1_string_st
type ASN1_BMPSTRING asn1_string_st
type ASN1_OBJECT asn1_object_st
type ASN1_UNIVERSALSTRING asn1_string_st
type ASN1_UTCTIME asn1_string_st
type ASN1_GENERALIZEDTIME asn1_string_st
type ASN1_VISIBLESTRING asn1_string_st
type ASN1_UTF8STRING asn1_string_st
type ASN1_VALUE ASN1_VALUE_st

type asn1_type_st struct {
	Type  c.Int
	Value unsafe.Pointer
}

type ASN1_TYPE asn1_type_st
