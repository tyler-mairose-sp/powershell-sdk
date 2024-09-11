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

.PARAMETER FirstDate
No description available.
.PARAMETER SecondDate
No description available.
.PARAMETER Operator
This is the comparison to perform. | Operation | Description | | --------- | ------- | | LT        | Strictly less than: firstDate < secondDate | | LTE       | Less than or equal to: firstDate <= secondDate | | GT        | Strictly greater than: firstDate > secondDate | | GTE       | Greater than or equal to: firstDate >= secondDate | 
.PARAMETER PositiveCondition
The output of the transform if the expression evalutes to true
.PARAMETER NegativeCondition
The output of the transform if the expression evalutes to false
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.PARAMETER VarInput
This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI.
.OUTPUTS

DateCompare<PSCustomObject>
#>

function Initialize-BetaDateCompare {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FirstDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SecondDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("LT", "LTE", "GT", "GTE")]
        [String]
        ${Operator},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PositiveCondition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NegativeCondition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarInput}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaDateCompare' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$FirstDate) {
            throw "invalid value for 'FirstDate', 'FirstDate' cannot be null."
        }

        if (!$SecondDate) {
            throw "invalid value for 'SecondDate', 'SecondDate' cannot be null."
        }

        if (!$Operator) {
            throw "invalid value for 'Operator', 'Operator' cannot be null."
        }

        if (!$PositiveCondition) {
            throw "invalid value for 'PositiveCondition', 'PositiveCondition' cannot be null."
        }

        if (!$NegativeCondition) {
            throw "invalid value for 'NegativeCondition', 'NegativeCondition' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "firstDate" = ${FirstDate}
            "secondDate" = ${SecondDate}
            "operator" = ${Operator}
            "positiveCondition" = ${PositiveCondition}
            "negativeCondition" = ${NegativeCondition}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DateCompare<PSCustomObject>

.DESCRIPTION

Convert from JSON to DateCompare<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DateCompare<PSCustomObject>
#>
function ConvertFrom-BetaJsonToDateCompare {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaDateCompare' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaDateCompare
        $AllProperties = ("firstDate", "secondDate", "operator", "positiveCondition", "negativeCondition", "requiresPeriodicRefresh", "input")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'firstDate' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstDate"))) {
            throw "Error! JSON cannot be serialized due to the required property 'firstDate' missing."
        } else {
            $FirstDate = $JsonParameters.PSobject.Properties["firstDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secondDate"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secondDate' missing."
        } else {
            $SecondDate = $JsonParameters.PSobject.Properties["secondDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operator"))) {
            throw "Error! JSON cannot be serialized due to the required property 'operator' missing."
        } else {
            $Operator = $JsonParameters.PSobject.Properties["operator"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "positiveCondition"))) {
            throw "Error! JSON cannot be serialized due to the required property 'positiveCondition' missing."
        } else {
            $PositiveCondition = $JsonParameters.PSobject.Properties["positiveCondition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "negativeCondition"))) {
            throw "Error! JSON cannot be serialized due to the required property 'negativeCondition' missing."
        } else {
            $NegativeCondition = $JsonParameters.PSobject.Properties["negativeCondition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["input"].value
        }

        $PSO = [PSCustomObject]@{
            "firstDate" = ${FirstDate}
            "secondDate" = ${SecondDate}
            "operator" = ${Operator}
            "positiveCondition" = ${PositiveCondition}
            "negativeCondition" = ${NegativeCondition}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }

}

