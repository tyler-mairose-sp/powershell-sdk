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

.PARAMETER CriteriaList
List of exception criteria. There is a min of 1 and max of 50 items in the list.
.OUTPUTS

ExceptionCriteria<PSCustomObject>
#>

function Initialize-ExceptionCriteria {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${CriteriaList}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ExceptionCriteria' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "criteriaList" = ${CriteriaList}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ExceptionCriteria<PSCustomObject>

.DESCRIPTION

Convert from JSON to ExceptionCriteria<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ExceptionCriteria<PSCustomObject>
#>
function ConvertFrom-JsonToExceptionCriteria {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ExceptionCriteria' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ExceptionCriteria
        $AllProperties = ("criteriaList")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "criteriaList"))) { #optional property not found
            $CriteriaList = $null
        } else {
            $CriteriaList = $JsonParameters.PSobject.Properties["criteriaList"].value
        }

        $PSO = [PSCustomObject]@{
            "criteriaList" = ${CriteriaList}
        }

        return $PSO
    }

}

