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

.PARAMETER RoleName
Name of the new role being created
.PARAMETER RoleDescription
Short description of the new role being created
.PARAMETER OwnerId
ID of the identity that will own this role
.OUTPUTS

RoleMiningPotentialRoleProvisionRequest<PSCustomObject>
#>

function Initialize-BetaRoleMiningPotentialRoleProvisionRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RoleName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RoleDescription},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OwnerId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleMiningPotentialRoleProvisionRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "roleName" = ${RoleName}
            "roleDescription" = ${RoleDescription}
            "ownerId" = ${OwnerId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningPotentialRoleProvisionRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningPotentialRoleProvisionRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningPotentialRoleProvisionRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMiningPotentialRoleProvisionRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleMiningPotentialRoleProvisionRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMiningPotentialRoleProvisionRequest
        $AllProperties = ("roleName", "roleDescription", "ownerId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "roleName"))) { #optional property not found
            $RoleName = $null
        } else {
            $RoleName = $JsonParameters.PSobject.Properties["roleName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "roleDescription"))) { #optional property not found
            $RoleDescription = $null
        } else {
            $RoleDescription = $JsonParameters.PSobject.Properties["roleDescription"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerId"))) { #optional property not found
            $OwnerId = $null
        } else {
            $OwnerId = $JsonParameters.PSobject.Properties["ownerId"].value
        }

        $PSO = [PSCustomObject]@{
            "roleName" = ${RoleName}
            "roleDescription" = ${RoleDescription}
            "ownerId" = ${OwnerId}
        }

        return $PSO
    }

}

