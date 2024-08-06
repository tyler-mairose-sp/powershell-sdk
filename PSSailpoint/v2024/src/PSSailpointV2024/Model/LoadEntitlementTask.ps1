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
System-generated unique ID of the task this taskStatus represents
.PARAMETER Type
Type of task this task represents
.PARAMETER UniqueName
The name of the task
.PARAMETER Description
The description of the task
.PARAMETER Launcher
The user who initiated the task
.PARAMETER Created
The creation date of the task
.PARAMETER Returns
Return values from the task
.OUTPUTS

LoadEntitlementTask<PSCustomObject>
#>

function Initialize-V2024LoadEntitlementTask {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UniqueName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Launcher},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Returns}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024LoadEntitlementTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "uniqueName" = ${UniqueName}
            "description" = ${Description}
            "launcher" = ${Launcher}
            "created" = ${Created}
            "returns" = ${Returns}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LoadEntitlementTask<PSCustomObject>

.DESCRIPTION

Convert from JSON to LoadEntitlementTask<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LoadEntitlementTask<PSCustomObject>
#>
function ConvertFrom-V2024JsonToLoadEntitlementTask {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024LoadEntitlementTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024LoadEntitlementTask
        $AllProperties = ("id", "type", "uniqueName", "description", "launcher", "created", "returns")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uniqueName"))) { #optional property not found
            $UniqueName = $null
        } else {
            $UniqueName = $JsonParameters.PSobject.Properties["uniqueName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "launcher"))) { #optional property not found
            $Launcher = $null
        } else {
            $Launcher = $JsonParameters.PSobject.Properties["launcher"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "returns"))) { #optional property not found
            $Returns = $null
        } else {
            $Returns = $JsonParameters.PSobject.Properties["returns"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "uniqueName" = ${UniqueName}
            "description" = ${Description}
            "launcher" = ${Launcher}
            "created" = ${Created}
            "returns" = ${Returns}
        }

        return $PSO
    }

}

