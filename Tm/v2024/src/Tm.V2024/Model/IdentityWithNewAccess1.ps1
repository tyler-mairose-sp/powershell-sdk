#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

An identity with a set of access to be added

.PARAMETER IdentityId
Set of identity IDs to be checked.
.PARAMETER AccessRefs
The bundle of access profiles to be added to the identities specified. All references must be ENTITLEMENT type.
.PARAMETER ClientMetadata
Arbitrary key-value pairs. They will never be processed by the IdentityNow system but will be returned on completion of the violation check.
.OUTPUTS

IdentityWithNewAccess1<PSCustomObject>
#>

function Initialize-V2024IdentityWithNewAccess1 {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccessRefs},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ClientMetadata}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024IdentityWithNewAccess1' | Write-Debug
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
            "clientMetadata" = ${ClientMetadata}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityWithNewAccess1<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityWithNewAccess1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityWithNewAccess1<PSCustomObject>
#>
function ConvertFrom-V2024JsonToIdentityWithNewAccess1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024IdentityWithNewAccess1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024IdentityWithNewAccess1
        $AllProperties = ("identityId", "accessRefs", "clientMetadata")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientMetadata"))) { #optional property not found
            $ClientMetadata = $null
        } else {
            $ClientMetadata = $JsonParameters.PSobject.Properties["clientMetadata"].value
        }

        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "accessRefs" = ${AccessRefs}
            "clientMetadata" = ${ClientMetadata}
        }

        return $PSO
    }

}

