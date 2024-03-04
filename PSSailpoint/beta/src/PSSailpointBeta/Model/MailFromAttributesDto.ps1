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

MAIL FROM attributes for a domain / identity

.PARAMETER Identity
The identity or domain address
.PARAMETER MailFromDomain
The new MAIL FROM domain of the identity. Must be a subdomain of the identity.
.OUTPUTS

MailFromAttributesDto<PSCustomObject>
#>

function Initialize-BetaMailFromAttributesDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Identity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MailFromDomain}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaMailFromAttributesDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "mailFromDomain" = ${MailFromDomain}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MailFromAttributesDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to MailFromAttributesDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MailFromAttributesDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToMailFromAttributesDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaMailFromAttributesDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaMailFromAttributesDto
        $AllProperties = ("identity", "mailFromDomain")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identity"))) { #optional property not found
            $Identity = $null
        } else {
            $Identity = $JsonParameters.PSobject.Properties["identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mailFromDomain"))) { #optional property not found
            $MailFromDomain = $null
        } else {
            $MailFromDomain = $JsonParameters.PSobject.Properties["mailFromDomain"].value
        }

        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "mailFromDomain" = ${MailFromDomain}
        }

        return $PSO
    }

}

