package pub

import "github.com/goplus/llgo/c"

const (
	SN_undef                               = "UNDEF"
	LN_undef                               = "undefined"
	NID_undef                              = 0
	OBJ_undef                       c.Long = 0
	SN_itu_t                               = "ITU-T"
	LN_itu_t                               = "itu-t"
	NID_itu_t                              = 645
	OBJ_itu_t                       c.Long = 0
	NID_ccitt                              = 404
	OBJ_ccitt                              = OBJ_itu_t
	SN_iso                                 = "ISO"
	LN_iso                                 = "iso"
	NID_iso                                = 181
	OBJ_iso                         c.Long = 1
	SN_joint_iso_itu_t                     = "JOINT-ISO-ITU-T"
	LN_joint_iso_itu_t                     = "joint-iso-itu-t"
	NID_joint_iso_itu_t                    = 646
	OBJ_joint_iso_itu_t             c.Long = 2
	NID_joint_iso_ccitt                    = 393
	OBJ_joint_iso_ccitt                    = OBJ_joint_iso_itu_t
	SN_member_body                         = "member-body"
	LN_member_body                         = "ISO Member Body"
	NID_member_body                        = 182
	SN_identified_organization             = "identified-organization"
	NID_identified_organization            = 676
	SN_gmac                                = "GMAC"
	LN_gmac                                = "gmac"
	NID_gmac                               = 1195
	SN_hmac_md5                            = "HMAC-MD5"
	LN_hmac_md5                            = "hmac-md5"
	NID_hmac_md5                           = 780
	SN_hmac_sha1                           = "HMAC-SHA1"
	LN_hmac_sha1                           = "hmac-sha1"
	NID_hmac_sha1                          = 781
	SN_x509ExtAdmission                    = "x509ExtAdmission"
	LN_x509ExtAdmission                    = "Professional Information or basis for Admission"
	NID_x509ExtAdmission                   = 1093
	SN_certicom_arc                        = "certicom-arc"
	NID_certicom_arc                       = 677
	SN_ieee                                = "ieee"
	NID_ieee                               = 1170
	SN_ieee_siswg                          = "ieee-siswg"
	LN_ieee_siswg                          = "IEEE Security in Storage Working Group"
	NID_ieee_siswg                         = 1171
	SN_international_organizations         = "international-organizations"
	LN_international_organizations         = "International Organizations"
	NID_international_organizations        = 647
	SN_wap                                 = "wap"
	NID_wap                                = 678
	SN_wap_wsg                             = "wap-wsg"
	NID_wap_wsg                            = 679
	// todo ..........
)

const (
	NID_rsaEncryption        = 6
	NID_rsa                  = 19
	NID_rsassaPss            = 912
	NID_dsa                  = 116
	NID_dsa_2                = 67
	NID_dsaWithSHA           = 66
	NID_dsaWithSHA1          = 113
	NID_dsaWithSHA1_2        = 70
	NID_dhKeyAgreement       = 28
	NID_dhpublicnumber       = 920
	NID_X9_62_id_ecPublicKey = 408
	NID_sm2                  = 1172
	NID_hmac                 = 855
	NID_cmac                 = 894
	NID_id_scrypt            = 973
	NID_tls1_prf             = 1021
	NID_hkdf                 = 1036
	NID_poly1305             = 1061
	NID_siphash              = 1062
	NID_X25519               = 1034
	NID_ED25519              = 1087
	NID_X448                 = 1035
	NID_ED448                = 1088
)

const (
	NID_sha1                    = 64
	NID_sha1WithRSAEncryption   = 65
	NID_sha256                  = 672
	NID_sha256WithRSAEncryption = 668
)

func OBJ_member_body() (c.Long, c.Long) {
	return OBJ_iso, 2
}

func OBJ_identified_organization() (c.Long, c.Long) {
	return OBJ_iso, 3
}

func OBJ_gmac() (c.Long, c.Long, c.Long, c.Long, c.Long) {
	return OBJ_iso, 0, 9797, 3, 4
}

func OBJ_hmac_md5() (c.Long, c.Long, c.Long, c.Long, c.Long, c.Long, c.Long, c.Long, c.Long) {
	return OBJ_iso, 3, 6, 1, 5, 5, 8, 1, 1
}

func OBJ_hmac_sha1() (c.Long, c.Long, c.Long, c.Long, c.Long, c.Long, c.Long, c.Long, c.Long) {
	return OBJ_iso, 3, 6, 1, 5, 5, 8, 1, 2
}

func OBJ_x509ExtAdmission() (c.Long, c.Long, c.Long, c.Long, c.Long, c.Long) {
	return OBJ_iso, 3, 36, 8, 3, 3
}

func OBJ_certicom_arc() (c.Long, c.Long, c.Long) {
	return OBJ_iso, 3, 132
}

func OBJ_ieee() (c.Long, c.Long, c.Long) {
	return OBJ_iso, 3, 111
}

func OBJ_ieee_siswg() (c.Long, c.Long, c.Long, c.Long, c.Long) {
	return OBJ_iso, 3, 111, 2, 1619
}

func OBJ_international_organizations() (c.Long, c.Long) {
	return OBJ_joint_iso_itu_t, 23
}

func OBJ_wap() (c.Long, c.Long, c.Long) {
	return OBJ_joint_iso_itu_t, 23, 43
}

// todo ................
