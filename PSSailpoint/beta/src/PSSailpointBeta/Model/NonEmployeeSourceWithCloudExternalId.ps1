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

.PARAMETER Id
Non-Employee source id.
.PARAMETER SourceId
Source Id associated with this non-employee source.
.PARAMETER Name
Source name associated with this non-employee source.
.PARAMETER Description
Source description associated with this non-employee source.
.PARAMETER Approvers
List of approvers
.PARAMETER AccountManagers
List of account managers
.PARAMETER Modified
When the request was last modified.
.PARAMETER Created
When the request was created.
.PARAMETER NonEmployeeCount
The number of non-employee records on all sources that *requested-for* user manages.
.PARAMETER CloudExternalId
Legacy ID used for sources from the V1 API. This attribute will be removed from a future version of the API and will not be considered a breaking change. No clients should rely on this ID always being present.
.OUTPUTS

NonEmployeeSourceWithCloudExternalId<PSCustomObject>
#>

function Initialize-BetaNonEmployeeSourceWithCloudExternalId {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Approvers},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountManagers},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NonEmployeeCount},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CloudExternalId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaNonEmployeeSourceWithCloudExternalId' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "sourceId" = ${SourceId}
            "name" = ${Name}
            "description" = ${Description}
            "approvers" = ${Approvers}
            "accountManagers" = ${AccountManagers}
            "modified" = ${Modified}
            "created" = ${Created}
            "nonEmployeeCount" = ${NonEmployeeCount}
            "cloudExternalId" = ${CloudExternalId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeSourceWithCloudExternalId<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeSourceWithCloudExternalId<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeSourceWithCloudExternalId<PSCustomObject>
#>
function ConvertFrom-BetaJsonToNonEmployeeSourceWithCloudExternalId {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaNonEmployeeSourceWithCloudExternalId' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaNonEmployeeSourceWithCloudExternalId
        $AllProperties = ("id", "sourceId", "name", "description", "approvers", "accountManagers", "modified", "created", "nonEmployeeCount", "cloudExternalId")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvers"))) { #optional property not found
            $Approvers = $null
        } else {
            $Approvers = $JsonParameters.PSobject.Properties["approvers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountManagers"))) { #optional property not found
            $AccountManagers = $null
        } else {
            $AccountManagers = $JsonParameters.PSobject.Properties["accountManagers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nonEmployeeCount"))) { #optional property not found
            $NonEmployeeCount = $null
        } else {
            $NonEmployeeCount = $JsonParameters.PSobject.Properties["nonEmployeeCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cloudExternalId"))) { #optional property not found
            $CloudExternalId = $null
        } else {
            $CloudExternalId = $JsonParameters.PSobject.Properties["cloudExternalId"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "sourceId" = ${SourceId}
            "name" = ${Name}
            "description" = ${Description}
            "approvers" = ${Approvers}
            "accountManagers" = ${AccountManagers}
            "modified" = ${Modified}
            "created" = ${Created}
            "nonEmployeeCount" = ${NonEmployeeCount}
            "cloudExternalId" = ${CloudExternalId}
        }

        return $PSO
    }

}

