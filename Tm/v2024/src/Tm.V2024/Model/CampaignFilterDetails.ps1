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

Campaign Filter Details

.PARAMETER Name
Campaign filter name.
.PARAMETER Description
Campaign filter description.
.PARAMETER Owner
Owner of the filter. This field automatically populates at creation time with the current user.
.PARAMETER Mode
Mode/type of filter, either the INCLUSION or EXCLUSION type. The INCLUSION type includes the data in generated campaigns  as per specified in the criteria, whereas the EXCLUSION type excludes the data in generated campaigns as per specified in criteria.
.PARAMETER CriteriaList
List of criteria.
.OUTPUTS

CampaignFilterDetails<PSCustomObject>
#>

function Initialize-V2024CampaignFilterDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("INCLUSION", "EXCLUSION")]
        [PSCustomObject]
        ${Mode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${CriteriaList}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024CampaignFilterDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Mode) {
            throw "invalid value for 'Mode', 'Mode' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "mode" = ${Mode}
            "criteriaList" = ${CriteriaList}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignFilterDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignFilterDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignFilterDetails<PSCustomObject>
#>
function ConvertFrom-V2024JsonToCampaignFilterDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024CampaignFilterDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024CampaignFilterDetails
        $AllProperties = ("name", "description", "owner", "mode", "criteriaList")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mode"))) {
            throw "Error! JSON cannot be serialized due to the required property 'mode' missing."
        } else {
            $Mode = $JsonParameters.PSobject.Properties["mode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "criteriaList"))) { #optional property not found
            $CriteriaList = $null
        } else {
            $CriteriaList = $JsonParameters.PSobject.Properties["criteriaList"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "mode" = ${Mode}
            "criteriaList" = ${CriteriaList}
        }

        return $PSO
    }

}

