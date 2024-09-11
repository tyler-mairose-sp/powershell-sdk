#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
No description available.
.PARAMETER Email
No description available.
.PARAMETER IsVerifiedByDomain
No description available.
.PARAMETER VerificationStatus
No description available.
.OUTPUTS

EmailStatusDto<PSCustomObject>
#>

function Initialize-BetaEmailStatusDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsVerifiedByDomain},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PENDING", "SUCCESS", "FAILED")]
        [String]
        ${VerificationStatus}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaEmailStatusDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "email" = ${Email}
            "isVerifiedByDomain" = ${IsVerifiedByDomain}
            "verificationStatus" = ${VerificationStatus}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailStatusDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailStatusDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailStatusDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToEmailStatusDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaEmailStatusDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaEmailStatusDto
        $AllProperties = ("id", "email", "isVerifiedByDomain", "verificationStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isVerifiedByDomain"))) { #optional property not found
            $IsVerifiedByDomain = $null
        } else {
            $IsVerifiedByDomain = $JsonParameters.PSobject.Properties["isVerifiedByDomain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "verificationStatus"))) { #optional property not found
            $VerificationStatus = $null
        } else {
            $VerificationStatus = $JsonParameters.PSobject.Properties["verificationStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "email" = ${Email}
            "isVerifiedByDomain" = ${IsVerifiedByDomain}
            "verificationStatus" = ${VerificationStatus}
        }

        return $PSO
    }

}

