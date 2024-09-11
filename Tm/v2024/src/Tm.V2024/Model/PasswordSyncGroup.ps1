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
ID of the sync group
.PARAMETER Name
Name of the sync group
.PARAMETER PasswordPolicyId
ID of the password policy
.PARAMETER SourceIds
List of password managed sources IDs
.PARAMETER Created
The date and time this sync group was created
.PARAMETER Modified
The date and time this sync group was last modified
.OUTPUTS

PasswordSyncGroup<PSCustomObject>
#>

function Initialize-V2024PasswordSyncGroup {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PasswordPolicyId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SourceIds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024PasswordSyncGroup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "passwordPolicyId" = ${PasswordPolicyId}
            "sourceIds" = ${SourceIds}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordSyncGroup<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordSyncGroup<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordSyncGroup<PSCustomObject>
#>
function ConvertFrom-V2024JsonToPasswordSyncGroup {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024PasswordSyncGroup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024PasswordSyncGroup
        $AllProperties = ("id", "name", "passwordPolicyId", "sourceIds", "created", "modified")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passwordPolicyId"))) { #optional property not found
            $PasswordPolicyId = $null
        } else {
            $PasswordPolicyId = $JsonParameters.PSobject.Properties["passwordPolicyId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceIds"))) { #optional property not found
            $SourceIds = $null
        } else {
            $SourceIds = $JsonParameters.PSobject.Properties["sourceIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "passwordPolicyId" = ${PasswordPolicyId}
            "sourceIds" = ${SourceIds}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }

}

