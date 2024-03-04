#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER CertificationId
the id of the certification item
.PARAMETER CertificationName
the certification item name
.PARAMETER SignedDate
the date ceritification was signed
.PARAMETER Certifiers
this field is deprecated and may go away
.PARAMETER Reviewers
The list of identities who review this certification
.PARAMETER Signer
No description available.
.PARAMETER EventType
the event type
.PARAMETER Dt
the date of event
.OUTPUTS

IdentityCertified<PSCustomObject>
#>

function Initialize-BetaIdentityCertified {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CertificationId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CertificationName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SignedDate},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Certifiers},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Reviewers},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Signer},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EventType},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Dt}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaIdentityCertified' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "certificationId" = ${CertificationId}
            "certificationName" = ${CertificationName}
            "signedDate" = ${SignedDate}
            "certifiers" = ${Certifiers}
            "reviewers" = ${Reviewers}
            "signer" = ${Signer}
            "eventType" = ${EventType}
            "dt" = ${Dt}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityCertified<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityCertified<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityCertified<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityCertified {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaIdentityCertified' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaIdentityCertified
        $AllProperties = ("certificationId", "certificationName", "signedDate", "certifiers", "reviewers", "signer", "eventType", "dt")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "certificationId"))) { #optional property not found
            $CertificationId = $null
        } else {
            $CertificationId = $JsonParameters.PSobject.Properties["certificationId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "certificationName"))) { #optional property not found
            $CertificationName = $null
        } else {
            $CertificationName = $JsonParameters.PSobject.Properties["certificationName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signedDate"))) { #optional property not found
            $SignedDate = $null
        } else {
            $SignedDate = $JsonParameters.PSobject.Properties["signedDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "certifiers"))) { #optional property not found
            $Certifiers = $null
        } else {
            $Certifiers = $JsonParameters.PSobject.Properties["certifiers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewers"))) { #optional property not found
            $Reviewers = $null
        } else {
            $Reviewers = $JsonParameters.PSobject.Properties["reviewers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signer"))) { #optional property not found
            $Signer = $null
        } else {
            $Signer = $JsonParameters.PSobject.Properties["signer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventType"))) { #optional property not found
            $EventType = $null
        } else {
            $EventType = $JsonParameters.PSobject.Properties["eventType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dt"))) { #optional property not found
            $Dt = $null
        } else {
            $Dt = $JsonParameters.PSobject.Properties["dt"].value
        }

        $PSO = [PSCustomObject]@{
            "certificationId" = ${CertificationId}
            "certificationName" = ${CertificationName}
            "signedDate" = ${SignedDate}
            "certifiers" = ${Certifiers}
            "reviewers" = ${Reviewers}
            "signer" = ${Signer}
            "eventType" = ${EventType}
            "dt" = ${Dt}
        }

        return $PSO
    }

}

