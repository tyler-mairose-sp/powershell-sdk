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
The unique ID of the source.
.PARAMETER Name
Human friendly name of the source.
.PARAMETER Type
The connection type.
.PARAMETER Deleted
The date and time the source was deleted.
.PARAMETER Connector
The connector type used to connect to the source.
.PARAMETER Actor
No description available.
.OUTPUTS

SourceDeleted<PSCustomObject>
#>

function Initialize-BetaSourceDeleted {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Deleted},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Connector},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Actor}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSourceDeleted' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Deleted) {
            throw "invalid value for 'Deleted', 'Deleted' cannot be null."
        }

        if (!$Connector) {
            throw "invalid value for 'Connector', 'Connector' cannot be null."
        }

        if (!$Actor) {
            throw "invalid value for 'Actor', 'Actor' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "deleted" = ${Deleted}
            "connector" = ${Connector}
            "actor" = ${Actor}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceDeleted<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceDeleted<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceDeleted<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSourceDeleted {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSourceDeleted' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSourceDeleted
        $AllProperties = ("id", "name", "type", "deleted", "connector", "actor")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deleted"))) {
            throw "Error! JSON cannot be serialized due to the required property 'deleted' missing."
        } else {
            $Deleted = $JsonParameters.PSobject.Properties["deleted"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connector"))) {
            throw "Error! JSON cannot be serialized due to the required property 'connector' missing."
        } else {
            $Connector = $JsonParameters.PSobject.Properties["connector"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actor"))) {
            throw "Error! JSON cannot be serialized due to the required property 'actor' missing."
        } else {
            $Actor = $JsonParameters.PSobject.Properties["actor"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "deleted" = ${Deleted}
            "connector" = ${Connector}
            "actor" = ${Actor}
        }

        return $PSO
    }

}

