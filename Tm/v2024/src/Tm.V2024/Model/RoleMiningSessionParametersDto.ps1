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

No description available.

.PARAMETER Id
The ID of the role mining session
.PARAMETER Name
The session's saved name
.PARAMETER MinNumIdentitiesInPotentialRole
Minimum number of identities in a potential role
.PARAMETER PruneThreshold
The prune threshold to be used or null to calculate prescribedPruneThreshold
.PARAMETER Saved
The session's saved status
.PARAMETER Scope
No description available.
.PARAMETER Type
No description available.
.PARAMETER State
No description available.
.PARAMETER ScopingMethod
No description available.
.OUTPUTS

RoleMiningSessionParametersDto<PSCustomObject>
#>

function Initialize-V2024RoleMiningSessionParametersDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MinNumIdentitiesInPotentialRole},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PruneThreshold},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Saved} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Scope},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SPECIALIZED", "COMMON")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CREATED", "UPDATED", "IDENTITIES_OBTAINED", "PRUNE_THRESHOLD_OBTAINED", "POTENTIAL_ROLES_PROCESSING", "POTENTIAL_ROLES_CREATED")]
        [PSCustomObject]
        ${State},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("MANUAL", "AUTO_RM")]
        [PSCustomObject]
        ${ScopingMethod}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024RoleMiningSessionParametersDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "minNumIdentitiesInPotentialRole" = ${MinNumIdentitiesInPotentialRole}
            "pruneThreshold" = ${PruneThreshold}
            "saved" = ${Saved}
            "scope" = ${Scope}
            "type" = ${Type}
            "state" = ${State}
            "scopingMethod" = ${ScopingMethod}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningSessionParametersDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningSessionParametersDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningSessionParametersDto<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRoleMiningSessionParametersDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024RoleMiningSessionParametersDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024RoleMiningSessionParametersDto
        $AllProperties = ("id", "name", "minNumIdentitiesInPotentialRole", "pruneThreshold", "saved", "scope", "type", "state", "scopingMethod")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minNumIdentitiesInPotentialRole"))) { #optional property not found
            $MinNumIdentitiesInPotentialRole = $null
        } else {
            $MinNumIdentitiesInPotentialRole = $JsonParameters.PSobject.Properties["minNumIdentitiesInPotentialRole"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pruneThreshold"))) { #optional property not found
            $PruneThreshold = $null
        } else {
            $PruneThreshold = $JsonParameters.PSobject.Properties["pruneThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "saved"))) { #optional property not found
            $Saved = $null
        } else {
            $Saved = $JsonParameters.PSobject.Properties["saved"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) { #optional property not found
            $Scope = $null
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scopingMethod"))) { #optional property not found
            $ScopingMethod = $null
        } else {
            $ScopingMethod = $JsonParameters.PSobject.Properties["scopingMethod"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "minNumIdentitiesInPotentialRole" = ${MinNumIdentitiesInPotentialRole}
            "pruneThreshold" = ${PruneThreshold}
            "saved" = ${Saved}
            "scope" = ${Scope}
            "type" = ${Type}
            "state" = ${State}
            "scopingMethod" = ${ScopingMethod}
        }

        return $PSO
    }

}

