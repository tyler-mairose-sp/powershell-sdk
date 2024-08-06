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

.PARAMETER Success
The status of the result
.PARAMETER Task
No description available.
.OUTPUTS

LoadUncorrelatedAccountsTask<PSCustomObject>
#>

function Initialize-V2024LoadUncorrelatedAccountsTask {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Success} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Task}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024LoadUncorrelatedAccountsTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "success" = ${Success}
            "task" = ${Task}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LoadUncorrelatedAccountsTask<PSCustomObject>

.DESCRIPTION

Convert from JSON to LoadUncorrelatedAccountsTask<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LoadUncorrelatedAccountsTask<PSCustomObject>
#>
function ConvertFrom-V2024JsonToLoadUncorrelatedAccountsTask {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024LoadUncorrelatedAccountsTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024LoadUncorrelatedAccountsTask
        $AllProperties = ("success", "task")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "success"))) { #optional property not found
            $Success = $null
        } else {
            $Success = $JsonParameters.PSobject.Properties["success"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "task"))) { #optional property not found
            $Task = $null
        } else {
            $Task = $JsonParameters.PSobject.Properties["task"].value
        }

        $PSO = [PSCustomObject]@{
            "success" = ${Success}
            "task" = ${Task}
        }

        return $PSO
    }

}

