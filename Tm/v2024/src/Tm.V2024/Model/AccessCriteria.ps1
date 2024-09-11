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

.PARAMETER Name
Business name for the access construct list
.PARAMETER CriteriaList
List of criteria. There is a min of 1 and max of 50 items in the list.
.OUTPUTS

AccessCriteria<PSCustomObject>
#>

function Initialize-V2024AccessCriteria {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${CriteriaList}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024AccessCriteria' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$CriteriaList -and $CriteriaList.length -gt 50) {
            throw "invalid value for 'CriteriaList', number of items must be less than or equal to 50."
        }

        if (!$CriteriaList -and $CriteriaList.length -lt 1) {
            throw "invalid value for 'CriteriaList', number of items must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "criteriaList" = ${CriteriaList}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessCriteria<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessCriteria<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessCriteria<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessCriteria {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024AccessCriteria' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessCriteria
        $AllProperties = ("name", "criteriaList")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "criteriaList"))) { #optional property not found
            $CriteriaList = $null
        } else {
            $CriteriaList = $JsonParameters.PSobject.Properties["criteriaList"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "criteriaList" = ${CriteriaList}
        }

        return $PSO
    }

}

