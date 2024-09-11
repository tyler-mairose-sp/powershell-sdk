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

.PARAMETER Source
No description available.
.PARAMETER Status
The overall status of the collection.
.PARAMETER Started
The date and time when the account collection started.
.PARAMETER Completed
The date and time when the account collection finished.
.PARAMETER Errors
A list of errors that occurred during the collection.
.PARAMETER Warnings
A list of warnings that occurred during the collection.
.PARAMETER Stats
No description available.
.OUTPUTS

AccountsCollectedForAggregation<PSCustomObject>
#>

function Initialize-BetaAccountsCollectedForAggregation {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Success", "Failed", "Terminated")]
        [PSCustomObject]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Started},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Completed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Errors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Warnings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Stats}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaAccountsCollectedForAggregation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Source) {
            throw "invalid value for 'Source', 'Source' cannot be null."
        }

        if (!$Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if (!$Started) {
            throw "invalid value for 'Started', 'Started' cannot be null."
        }

        if (!$Completed) {
            throw "invalid value for 'Completed', 'Completed' cannot be null."
        }

        if (!$Stats) {
            throw "invalid value for 'Stats', 'Stats' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "source" = ${Source}
            "status" = ${Status}
            "started" = ${Started}
            "completed" = ${Completed}
            "errors" = ${Errors}
            "warnings" = ${Warnings}
            "stats" = ${Stats}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountsCollectedForAggregation<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountsCollectedForAggregation<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountsCollectedForAggregation<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccountsCollectedForAggregation {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaAccountsCollectedForAggregation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccountsCollectedForAggregation
        $AllProperties = ("source", "status", "started", "completed", "errors", "warnings", "stats")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'source' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) {
            throw "Error! JSON cannot be serialized due to the required property 'source' missing."
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "started"))) {
            throw "Error! JSON cannot be serialized due to the required property 'started' missing."
        } else {
            $Started = $JsonParameters.PSobject.Properties["started"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) {
            throw "Error! JSON cannot be serialized due to the required property 'completed' missing."
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) {
            throw "Error! JSON cannot be serialized due to the required property 'errors' missing."
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "warnings"))) {
            throw "Error! JSON cannot be serialized due to the required property 'warnings' missing."
        } else {
            $Warnings = $JsonParameters.PSobject.Properties["warnings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stats"))) {
            throw "Error! JSON cannot be serialized due to the required property 'stats' missing."
        } else {
            $Stats = $JsonParameters.PSobject.Properties["stats"].value
        }

        $PSO = [PSCustomObject]@{
            "source" = ${Source}
            "status" = ${Status}
            "started" = ${Started}
            "completed" = ${Completed}
            "errors" = ${Errors}
            "warnings" = ${Warnings}
            "stats" = ${Stats}
        }

        return $PSO
    }

}

