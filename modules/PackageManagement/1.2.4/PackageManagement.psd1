###
# ==++==
#
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
###
@{
    GUID = "4ae9fd46-338a-459c-8186-07f910774cb8"
    Author = "Microsoft Corporation"
    CompanyName = "Microsoft Corporation"
    Copyright = "(C) Microsoft Corporation. All rights reserved."
    HelpInfoUri = "https://go.microsoft.com/fwlink/?linkid=855962"
    ModuleVersion = "1.2.4"
    PowerShellVersion = "3.0"
    ClrVersion = "4.0"
    RootModule = "PackageManagement.psm1"
	Description = 'PackageManagement (a.k.a. OneGet) is a new way to discover and install software packages from around the web.
 It is a manager or multiplexor of existing package managers (also called package providers) that unifies Windows package management with a single Windows PowerShell interface. With PackageManagement, you can do the following.
  - Manage a list of software repositories in which packages can be searched, acquired and installed
  - Discover software packages
  - Seamlessly install, uninstall, and inventory packages from one or more software repositories'

    CmdletsToExport = @(
        'Find-Package',
        'Get-Package',
        'Get-PackageProvider',
        'Get-PackageSource',
        'Install-Package',
        'Import-PackageProvider'
        'Find-PackageProvider'
        'Install-PackageProvider'
        'Register-PackageSource',
        'Set-PackageSource',
        'Unregister-PackageSource',
        'Uninstall-Package'
        'Save-Package'
	)

	FormatsToProcess  = @('PackageManagement.format.ps1xml')

	PrivateData = @{
        PSData = @{
            Tags = @('PackageManagement', 'PSEdition_Core', 'PSEdition_Desktop', 'Linux', 'Mac')
            ProjectUri = 'https://oneget.org'
        }
    }
}

# SIG # Begin signature block
# MIIkaQYJKoZIhvcNAQcCoIIkWjCCJFYCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBsHTXgoyqCcIAf
# Ye6GOHUUQNjtoN91TkHRZz2EqhCHwKCCDYEwggX/MIID56ADAgECAhMzAAABA14l
# HJkfox64AAAAAAEDMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMTgwNzEyMjAwODQ4WhcNMTkwNzI2MjAwODQ4WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDRlHY25oarNv5p+UZ8i4hQy5Bwf7BVqSQdfjnnBZ8PrHuXss5zCvvUmyRcFrU5
# 3Rt+M2wR/Dsm85iqXVNrqsPsE7jS789Xf8xly69NLjKxVitONAeJ/mkhvT5E+94S
# nYW/fHaGfXKxdpth5opkTEbOttU6jHeTd2chnLZaBl5HhvU80QnKDT3NsumhUHjR
# hIjiATwi/K+WCMxdmcDt66VamJL1yEBOanOv3uN0etNfRpe84mcod5mswQ4xFo8A
# DwH+S15UD8rEZT8K46NG2/YsAzoZvmgFFpzmfzS/p4eNZTkmyWPU78XdvSX+/Sj0
# NIZ5rCrVXzCRO+QUauuxygQjAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUR77Ay+GmP/1l1jjyA123r3f3QP8w
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDM3OTY1MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAn/XJ
# Uw0/DSbsokTYDdGfY5YGSz8eXMUzo6TDbK8fwAG662XsnjMQD6esW9S9kGEX5zHn
# wya0rPUn00iThoj+EjWRZCLRay07qCwVlCnSN5bmNf8MzsgGFhaeJLHiOfluDnjY
# DBu2KWAndjQkm925l3XLATutghIWIoCJFYS7mFAgsBcmhkmvzn1FFUM0ls+BXBgs
# 1JPyZ6vic8g9o838Mh5gHOmwGzD7LLsHLpaEk0UoVFzNlv2g24HYtjDKQ7HzSMCy
# RhxdXnYqWJ/U7vL0+khMtWGLsIxB6aq4nZD0/2pCD7k+6Q7slPyNgLt44yOneFuy
# bR/5WcF9ttE5yXnggxxgCto9sNHtNr9FB+kbNm7lPTsFA6fUpyUSj+Z2oxOzRVpD
# MYLa2ISuubAfdfX2HX1RETcn6LU1hHH3V6qu+olxyZjSnlpkdr6Mw30VapHxFPTy
# 2TUxuNty+rR1yIibar+YRcdmstf/zpKQdeTr5obSyBvbJ8BblW9Jb1hdaSreU0v4
# 6Mp79mwV+QMZDxGFqk+av6pX3WDG9XEg9FGomsrp0es0Rz11+iLsVT9qGTlrEOla
# P470I3gwsvKmOMs1jaqYWSRAuDpnpAdfoP7YO0kT+wzh7Qttg1DO8H8+4NkI6Iwh
# SkHC3uuOW+4Dwx1ubuZUNWZncnwa6lL2IsRyP64wggd6MIIFYqADAgECAgphDpDS
# AAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMTAeFw0xMTA3MDgyMDU5MDlaFw0yNjA3MDgyMTA5MDla
# MH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMT
# H01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCr8PpyEBwurdhuqoIQTTS68rZYIZ9CGypr6VpQqrgG
# OBoESbp/wwwe3TdrxhLYC/A4wpkGsMg51QEUMULTiQ15ZId+lGAkbK+eSZzpaF7S
# 35tTsgosw6/ZqSuuegmv15ZZymAaBelmdugyUiYSL+erCFDPs0S3XdjELgN1q2jz
# y23zOlyhFvRGuuA4ZKxuZDV4pqBjDy3TQJP4494HDdVceaVJKecNvqATd76UPe/7
# 4ytaEB9NViiienLgEjq3SV7Y7e1DkYPZe7J7hhvZPrGMXeiJT4Qa8qEvWeSQOy2u
# M1jFtz7+MtOzAz2xsq+SOH7SnYAs9U5WkSE1JcM5bmR/U7qcD60ZI4TL9LoDho33
# X/DQUr+MlIe8wCF0JV8YKLbMJyg4JZg5SjbPfLGSrhwjp6lm7GEfauEoSZ1fiOIl
# XdMhSz5SxLVXPyQD8NF6Wy/VI+NwXQ9RRnez+ADhvKwCgl/bwBWzvRvUVUvnOaEP
# 6SNJvBi4RHxF5MHDcnrgcuck379GmcXvwhxX24ON7E1JMKerjt/sW5+v/N2wZuLB
# l4F77dbtS+dJKacTKKanfWeA5opieF+yL4TXV5xcv3coKPHtbcMojyyPQDdPweGF
# RInECUzF1KVDL3SV9274eCBYLBNdYJWaPk8zhNqwiBfenk70lrC8RqBsmNLg1oiM
# CwIDAQABo4IB7TCCAekwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFEhuZOVQ
# BdOCqhc3NyK1bajKdQKVMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1Ud
# DwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFHItOgIxkEO5FAVO
# 4eqnxzHRI4k0MFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcmwwXgYIKwYBBQUHAQEEUjBQME4GCCsGAQUFBzAChkJodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcnQwgZ8GA1UdIASBlzCBlDCBkQYJKwYBBAGCNy4DMIGDMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2RvY3MvcHJpbWFyeWNw
# cy5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AcABvAGwAaQBjAHkA
# XwBzAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAGfyhqWY
# 4FR5Gi7T2HRnIpsLlhHhY5KZQpZ90nkMkMFlXy4sPvjDctFtg/6+P+gKyju/R6mj
# 82nbY78iNaWXXWWEkH2LRlBV2AySfNIaSxzzPEKLUtCw/WvjPgcuKZvmPRul1LUd
# d5Q54ulkyUQ9eHoj8xN9ppB0g430yyYCRirCihC7pKkFDJvtaPpoLpWgKj8qa1hJ
# Yx8JaW5amJbkg/TAj/NGK978O9C9Ne9uJa7lryft0N3zDq+ZKJeYTQ49C/IIidYf
# wzIY4vDFLc5bnrRJOQrGCsLGra7lstnbFYhRRVg4MnEnGn+x9Cf43iw6IGmYslmJ
# aG5vp7d0w0AFBqYBKig+gj8TTWYLwLNN9eGPfxxvFX1Fp3blQCplo8NdUmKGwx1j
# NpeG39rz+PIWoZon4c2ll9DuXWNB41sHnIc+BncG0QaxdR8UvmFhtfDcxhsEvt9B
# xw4o7t5lL+yX9qFcltgA1qFGvVnzl6UJS0gQmYAf0AApxbGbpT9Fdx41xtKiop96
# eiL6SJUfq/tHI4D1nvi/a7dLl+LrdXga7Oo3mXkYS//WsyNodeav+vyL6wuA6mk7
# r/ww7QRMjt/fdW1jkT3RnVZOT7+AVyKheBEyIXrvQQqxP/uozKRdwaGIm1dxVk5I
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIWPjCCFjoCAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAQNeJRyZH6MeuAAAAAABAzAN
# BglghkgBZQMEAgEFAKCBvDAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg3GSb6HED
# dkHeOJdWWtE13naJgc8Q7rrGmUgy4DZXUQQwUAYKKwYBBAGCNwIBDDFCMECgFoAU
# AFAAbwB3AGUAcgBTAGgAZQBsAGyhJoAkaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L1Bvd2VyU2hlbGwgMA0GCSqGSIb3DQEBAQUABIIBAGi57SB93WbaJKijAL38mXrz
# VxuMX29zCv5yhyYcPUbkMShngN6kttBil89nFNhTgEH9FJdXhKBpLpfLig2xOLnu
# UGmTL3C5h/irRzwlAx3pceAFMc/wBVHQkq9ijQfxJx2JOTaYj2zwrZbMLd6ZiP/5
# tTnSDOHwMloZOLeNKqXkFoDSCGsyjjyV9iXYkc/duTTRhVizin+L7eayNPQv0Q0M
# nQy4aByRT9oWbmBI9VedCc52C/U+qDL4knFrtLJCfh4fuVqJC+WFSsQ2GiisXD4y
# BOw2lqABnA3EYWmfrBBV9X24xGTr+PhX9XLG95HYlFaogVNBUDqjmlqGXGihs5Wh
# ghO6MIITtgYKKwYBBAGCNwMDATGCE6YwghOiBgkqhkiG9w0BBwKgghOTMIITjwIB
# AzEPMA0GCWCGSAFlAwQCAQUAMIIBWAYLKoZIhvcNAQkQAQSgggFHBIIBQzCCAT8C
# AQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQg5rd1twN67hI0BRnE6oZl
# 42vT5k1CZ9VOeP0shX/sAbICBlv9dsm59hgTMjAxODEyMDEwMDE4MzguNzE0WjAH
# AgEBgAIB9KCB1KSB0TCBzjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEpMCcGA1UECxMgTWljcm9zb2Z0IE9wZXJhdGlvbnMgUHVlcnRvIFJpY28x
# JjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjU4NDctRjc2MS00RjcwMSUwIwYDVQQD
# ExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloIIPIjCCBPUwggPdoAMCAQIC
# EzMAAADUTxnD2ITLRWMAAAAAANQwDQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTAwHhcNMTgwODIzMjAyNjQwWhcNMTkxMTIzMjAyNjQw
# WjCBzjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcT
# B1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEpMCcGA1UE
# CxMgTWljcm9zb2Z0IE9wZXJhdGlvbnMgUHVlcnRvIFJpY28xJjAkBgNVBAsTHVRo
# YWxlcyBUU1MgRVNOOjU4NDctRjc2MS00RjcwMSUwIwYDVQQDExxNaWNyb3NvZnQg
# VGltZS1TdGFtcCBTZXJ2aWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
# AQEAv0i7sMQTtT74OGpouWATfTY+WnmWenhQyL9pJAFK/a7LZOF32Fmgf00gimwj
# JckiYY72FBQx0UqDb3aTsusoplv47VDf27/0klDF49EJ8gBIwhEWLYTHtFNRg98M
# 5wOTzVKfuhjWXK1nzPsW5/Qx6NGoQjfKDhPjMEsRpEzYPH8v0ef742MSvrRI4ydN
# swRZRX0mcdrx2hRFmIRoKu4m4jadyHxkwdYBWE4mA4V1vZfS0MxFHcjbCPaW1Ufu
# Hw4NnbHsDwRv8L0QOESupwbQA7wledA0Xj+fQchPb69P0lk17eyRGKneUgB+fHAL
# 0JNbY+qqMuwGh1R0Uda3yQEbJQIDAQABo4IBGzCCARcwHQYDVR0OBBYEFP5k/7/E
# zmU2uNamuNJbShVglJcHMB8GA1UdIwQYMBaAFNVjOlyKMZDzQ3t8RhvFM2hahW1V
# MFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kv
# Y3JsL3Byb2R1Y3RzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNybDBaBggrBgEF
# BQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9w
# a2kvY2VydHMvTWljVGltU3RhUENBXzIwMTAtMDctMDEuY3J0MAwGA1UdEwEB/wQC
# MAAwEwYDVR0lBAwwCgYIKwYBBQUHAwgwDQYJKoZIhvcNAQELBQADggEBAEnI5BKJ
# f8YlLqfOo0xeUA8dkzKYWUUpF1roTtBH5fmvsXLsVQx84IT8WKvAcqU2/2dnrMP/
# YFtz3qSrucNPZXIdjhEOWME9ELHrBKEWzHRmfm/DZuqorEPnQfaNboPXbJuyfxWc
# 6tJn3h18adwiTJW7AIdeGf2e+D1v2qehOcrAtOC2l+rNRzCULRvKRgTS6o77geVG
# 4V97yLKxLMF5ZdI89jN+q+8EHIsIB+ggteUYAGOX+WXZxR4/Ib/odk3ze9AD2FR+
# X1WlF1EzMrg9QUm4Aszmkld5wiR9HCbn7ji5EsAA8H6Irp8csHrRmXUl2WeVvysX
# xNjakP23cgQvEn8wggZxMIIEWaADAgECAgphCYEqAAAAAAACMA0GCSqGSIb3DQEB
# CwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYD
# VQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAe
# Fw0xMDA3MDEyMTM2NTVaFw0yNTA3MDEyMTQ2NTVaMHwxCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0
# YW1wIFBDQSAyMDEwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqR0N
# vHcRijog7PwTl/X6f2mUa3RUENWlCgCChfvtfGhLLF/Fw+Vhwna3PmYrW/AVUycE
# MR9BGxqVHc4JE458YTBZsTBED/FgiIRUQwzXTbg4CLNC3ZOs1nMwVyaCo0UN0Or1
# R4HNvyRgMlhgRvJYR4YyhB50YWeRX4FUsc+TTJLBxKZd0WETbijGGvmGgLvfYfxG
# wScdJGcSchohiq9LZIlQYrFd/XcfPfBXday9ikJNQFHRD5wGPmd/9WbAA5ZEfu/Q
# S/1u5ZrKsajyeioKMfDaTgaRtogINeh4HLDpmc085y9Euqf03GS9pAHBIAmTeM38
# vMDJRF1eFpwBBU8iTQIDAQABo4IB5jCCAeIwEAYJKwYBBAGCNxUBBAMCAQAwHQYD
# VR0OBBYEFNVjOlyKMZDzQ3t8RhvFM2hahW1VMBkGCSsGAQQBgjcUAgQMHgoAUwB1
# AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaA
# FNX2VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9j
# cmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dF8y
# MDEwLTA2LTIzLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6
# Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0XzIwMTAt
# MDYtMjMuY3J0MIGgBgNVHSABAf8EgZUwgZIwgY8GCSsGAQQBgjcuAzCBgTA9Bggr
# BgEFBQcCARYxaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL1BLSS9kb2NzL0NQUy9k
# ZWZhdWx0Lmh0bTBABggrBgEFBQcCAjA0HjIgHQBMAGUAZwBhAGwAXwBQAG8AbABp
# AGMAeQBfAFMAdABhAHQAZQBtAGUAbgB0AC4gHTANBgkqhkiG9w0BAQsFAAOCAgEA
# B+aIUQ3ixuCYP4FxAz2do6Ehb7Prpsz1Mb7PBeKp/vpXbRkws8LFZslq3/Xn8Hi9
# x6ieJeP5vO1rVFcIK1GCRBL7uVOMzPRgEop2zEBAQZvcXBf/XPleFzWYJFZLdO9C
# EMivv3/Gf/I3fVo/HPKZeUqRUgCvOA8X9S95gWXZqbVr5MfO9sp6AG9LMEQkIjzP
# 7QOllo9ZKby2/QThcJ8ySif9Va8v/rbljjO7Yl+a21dA6fHOmWaQjP9qYn/dxUoL
# kSbiOewZSnFjnXshbcOco6I8+n99lmqQeKZt0uGc+R38ONiU9MalCpaGpL2eGq4E
# QoO4tYCbIjggtSXlZOz39L9+Y1klD3ouOVd2onGqBooPiRa6YacRy5rYDkeagMXQ
# zafQ732D8OE7cQnfXXSYIghh2rBQHm+98eEA3+cxB6STOvdlR3jo+KhIq/fecn5h
# a293qYHLpwmsObvsxsvYgrRyzR30uIUBHoD7G4kqVDmyW9rIDVWZeodzOwjmmC3q
# jeAzLhIp9cAvVCch98isTtoouLGp25ayp0Kiyc8ZQU3ghvkqmqMRZjDTu3QyS99j
# e/WZii8bxyGvWbWu3EQ8l1Bx16HSxVXjad5XwdHeMMD9zOZN+w2/XU/pnR4ZOC+8
# z1gFLu8NoFA12u8JJxzVs341Hgi62jbb01+P3nSISRKhggOwMIICmAIBATCB/qGB
# 1KSB0TCBzjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNV
# BAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEpMCcG
# A1UECxMgTWljcm9zb2Z0IE9wZXJhdGlvbnMgUHVlcnRvIFJpY28xJjAkBgNVBAsT
# HVRoYWxlcyBUU1MgRVNOOjU4NDctRjc2MS00RjcwMSUwIwYDVQQDExxNaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBTZXJ2aWNloiUKAQEwCQYFKw4DAhoFAAMVAO0ICv9f7xxm
# gMPCjIj5XADfKo9DoIHeMIHbpIHYMIHVMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSkwJwYDVQQLEyBNaWNyb3NvZnQgT3BlcmF0aW9ucyBQdWVy
# dG8gUmljbzEnMCUGA1UECxMebkNpcGhlciBOVFMgRVNOOjU3RjYtQzFFMC01NTRD
# MSswKQYDVQQDEyJNaWNyb3NvZnQgVGltZSBTb3VyY2UgTWFzdGVyIENsb2NrMA0G
# CSqGSIb3DQEBBQUAAgUA36vqVjAiGA8yMDE4MTIwMTAwNTY1NFoYDzIwMTgxMjAy
# MDA1NjU0WjB3MD0GCisGAQQBhFkKBAExLzAtMAoCBQDfq+pWAgEAMAoCAQACAhqJ
# AgH/MAcCAQACAhdzMAoCBQDfrTvWAgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisG
# AQQBhFkKAwGgCjAIAgEAAgMW42ChCjAIAgEAAgMHoSAwDQYJKoZIhvcNAQEFBQAD
# ggEBAI3IYa3c7G6eXvkLqpvu5z29VfkcWd2mx8hQsAK1JUSqpMwQIvmg4hKWRMdm
# Ur8lV4rl5jXSY03THMNJA/4wHiykI03ZJVfaBQFLwYtb8Ju/f2IeVScHr8f/eMAl
# HSn8jwku9Zd9quGAy+VOTLzjHPY9/wNU10CUIdVOfjR8mZwqdJTd5SjdGsMMmvpF
# seo7iJT7kKHQphbhENkzwyZgrM7lsZ9H5Qpob4yqP947BwCoqlu+zHhAUY5oqvtt
# TGRGFGex9HtOeRW3ek07y2mTVb6cHGmeEvdZpEQ79IkWYxEpzqJ8PDSMKs5cy8Qh
# yJPaB8+RYfynJ27Zy3Ym/nhWBwAxggL1MIIC8QIBATCBkzB8MQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGlt
# ZS1TdGFtcCBQQ0EgMjAxMAITMwAAANRPGcPYhMtFYwAAAAAA1DANBglghkgBZQME
# AgEFAKCCATIwGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJ
# BDEiBCBBvhspS1mPVXTHknTyXWlqeUMMbkHr2uDoCEDGX9PKejCB4gYLKoZIhvcN
# AQkQAgwxgdIwgc8wgcwwgbEEFO0ICv9f7xxmgMPCjIj5XADfKo9DMIGYMIGApH4w
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAADUTxnD2ITLRWMAAAAA
# ANQwFgQUZUrE2Nup1XmqsYp1rk10hNgHeMowDQYJKoZIhvcNAQELBQAEggEAG15y
# SI2qurmhqklVI3YqkGhRcae0IoiclKcJgFDiHYuS2CsF5urPF68hcuNGsL+67RoM
# 4t4365/zuP2AaF93PZrK7aN5T/I1PMyyCcBQBZCQU/cvu7EdnMNXPUzSPPwst1vT
# HjUlFDy4/C0Alcs26ok/Fip/FPR2U9iZ807qllRTsqswqylMGMsUfOKXgxaZQqi7
# 5DYj2zzSvPsCXo8EVJMn9AcDLfZbvEkq1fKdWCMVWabUy46rVp+vSGNiohI7UH7R
# 2EvsI6eIVD5kno+gV6MznzJkEJbBPRujmK7KcSdrMC2gLGJnTRuLuKgx89g9S/9S
# a+EhTMFERsk4x9toiA==
# SIG # End signature block
