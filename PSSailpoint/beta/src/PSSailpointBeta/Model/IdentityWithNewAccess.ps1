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

An identity with a set of access to be added

.PARAMETER IdentityId
Identity id to be checked.
.PARAMETER AccessRefs
The list of entitlements to consider for possible violations in a preventive check.
.OUTPUTS

IdentityWithNewAccess<PSCustomObject>
#>

function Initialize-BetaIdentityWithNewAccess {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccessRefs}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaIdentityWithNewAccess' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$IdentityId) {
            throw "invalid value for 'IdentityId', 'IdentityId' cannot be null."
        }

        if (!$AccessRefs) {
            throw "invalid value for 'AccessRefs', 'AccessRefs' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "accessRefs" = ${AccessRefs}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityWithNewAccess<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityWithNewAccess<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityWithNewAccess<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityWithNewAccess {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaIdentityWithNewAccess' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaIdentityWithNewAccess
        $AllProperties = ("identityId", "accessRefs")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'identityId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'identityId' missing."
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessRefs"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accessRefs' missing."
        } else {
            $AccessRefs = $JsonParameters.PSobject.Properties["accessRefs"].value
        }

        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "accessRefs" = ${AccessRefs}
        }

        return $PSO
    }

}

