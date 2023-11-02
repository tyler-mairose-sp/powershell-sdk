#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Status
Status of a SOD policy violation report.
.OUTPUTS

ReportResultReferenceAllOf<PSCustomObject>
#>

function Initialize-ReportResultReferenceAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "WARNING", "ERROR", "TERMINATED", "TEMP_ERROR", "PENDING")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ReportResultReferenceAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "status" = ${Status}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReportResultReferenceAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReportResultReferenceAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReportResultReferenceAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToReportResultReferenceAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ReportResultReferenceAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ReportResultReferenceAllOf
        $AllProperties = ("status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "status" = ${Status}
        }

        return $PSO
    }

}

