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
Number of non-employee records associated with this source.
.OUTPUTS

NonEmployeeSourceWithNECount<PSCustomObject>
#>

function Initialize-BetaNonEmployeeSourceWithNECount {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Approvers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountManagers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NonEmployeeCount}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaNonEmployeeSourceWithNECount' | Write-Debug
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
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeSourceWithNECount<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeSourceWithNECount<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeSourceWithNECount<PSCustomObject>
#>
function ConvertFrom-BetaJsonToNonEmployeeSourceWithNECount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaNonEmployeeSourceWithNECount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaNonEmployeeSourceWithNECount
        $AllProperties = ("id", "sourceId", "name", "description", "approvers", "accountManagers", "modified", "created", "nonEmployeeCount")
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
        }

        return $PSO
    }

}

