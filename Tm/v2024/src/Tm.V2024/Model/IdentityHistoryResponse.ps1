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
the identity ID
.PARAMETER DisplayName
the display name of the identity
.PARAMETER Snapshot
the date when the identity record was created
.PARAMETER DeletedDate
the date when the identity was deleted
.PARAMETER AccessItemCount
A map containing the count of each access item
.PARAMETER Attributes
A map containing the identity attributes
.OUTPUTS

IdentityHistoryResponse<PSCustomObject>
#>

function Initialize-V2024IdentityHistoryResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Snapshot},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeletedDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${AccessItemCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024IdentityHistoryResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "snapshot" = ${Snapshot}
            "deletedDate" = ${DeletedDate}
            "accessItemCount" = ${AccessItemCount}
            "attributes" = ${Attributes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityHistoryResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityHistoryResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityHistoryResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToIdentityHistoryResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024IdentityHistoryResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024IdentityHistoryResponse
        $AllProperties = ("id", "displayName", "snapshot", "deletedDate", "accessItemCount", "attributes")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "snapshot"))) { #optional property not found
            $Snapshot = $null
        } else {
            $Snapshot = $JsonParameters.PSobject.Properties["snapshot"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deletedDate"))) { #optional property not found
            $DeletedDate = $null
        } else {
            $DeletedDate = $JsonParameters.PSobject.Properties["deletedDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessItemCount"))) { #optional property not found
            $AccessItemCount = $null
        } else {
            $AccessItemCount = $JsonParameters.PSobject.Properties["accessItemCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "snapshot" = ${Snapshot}
            "deletedDate" = ${DeletedDate}
            "accessItemCount" = ${AccessItemCount}
            "attributes" = ${Attributes}
        }

        return $PSO
    }

}

