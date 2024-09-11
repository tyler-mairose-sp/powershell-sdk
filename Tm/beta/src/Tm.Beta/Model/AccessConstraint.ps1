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

.PARAMETER Type
Type of Access
.PARAMETER Ids
Must be set only if operator is SELECTED.
.PARAMETER Operator
Used to determine whether the scope of the campaign should be reduced for selected ids or all.
.OUTPUTS

AccessConstraint<PSCustomObject>
#>

function Initialize-BetaAccessConstraint {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ENTITLEMENT", "ACCESS_PROFILE", "ROLE")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Ids},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ALL", "SELECTED")]
        [String]
        ${Operator}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaAccessConstraint' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Operator) {
            throw "invalid value for 'Operator', 'Operator' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "ids" = ${Ids}
            "operator" = ${Operator}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessConstraint<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessConstraint<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessConstraint<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessConstraint {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaAccessConstraint' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessConstraint
        $AllProperties = ("type", "ids", "operator")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operator"))) {
            throw "Error! JSON cannot be serialized due to the required property 'operator' missing."
        } else {
            $Operator = $JsonParameters.PSobject.Properties["operator"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ids"))) { #optional property not found
            $Ids = $null
        } else {
            $Ids = $JsonParameters.PSobject.Properties["ids"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "ids" = ${Ids}
            "operator" = ${Operator}
        }

        return $PSO
    }

}

