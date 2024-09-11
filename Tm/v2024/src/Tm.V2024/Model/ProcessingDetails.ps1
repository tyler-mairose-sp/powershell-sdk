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

.PARAMETER Date
A date-time in ISO-8601 format
.PARAMETER Stage
No description available.
.PARAMETER RetryCount
No description available.
.PARAMETER VarStackTrace
No description available.
.PARAMETER Message
No description available.
.OUTPUTS

ProcessingDetails<PSCustomObject>
#>

function Initialize-V2024ProcessingDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Date},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Stage},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${RetryCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarStackTrace},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ProcessingDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "date" = ${Date}
            "stage" = ${Stage}
            "retryCount" = ${RetryCount}
            "stackTrace" = ${VarStackTrace}
            "message" = ${Message}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProcessingDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProcessingDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProcessingDetails<PSCustomObject>
#>
function ConvertFrom-V2024JsonToProcessingDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ProcessingDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ProcessingDetails
        $AllProperties = ("date", "stage", "retryCount", "stackTrace", "message")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "date"))) { #optional property not found
            $Date = $null
        } else {
            $Date = $JsonParameters.PSobject.Properties["date"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stage"))) { #optional property not found
            $Stage = $null
        } else {
            $Stage = $JsonParameters.PSobject.Properties["stage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "retryCount"))) { #optional property not found
            $RetryCount = $null
        } else {
            $RetryCount = $JsonParameters.PSobject.Properties["retryCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stackTrace"))) { #optional property not found
            $VarStackTrace = $null
        } else {
            $VarStackTrace = $JsonParameters.PSobject.Properties["stackTrace"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        $PSO = [PSCustomObject]@{
            "date" = ${Date}
            "stage" = ${Stage}
            "retryCount" = ${RetryCount}
            "stackTrace" = ${VarStackTrace}
            "message" = ${Message}
        }

        return $PSO
    }

}

