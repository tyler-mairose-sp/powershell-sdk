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

.PARAMETER Name
the provisioning policy name
.PARAMETER Description
the description of the provisioning policy
.PARAMETER UsageType
No description available.
.PARAMETER Fields
No description available.
.OUTPUTS

ProvisioningPolicy<PSCustomObject>
#>

function Initialize-ProvisioningPolicy {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CREATE", "UPDATE", "ENABLE", "DISABLE", "DELETE", "ASSIGN", "UNASSIGN", "CREATE_GROUP", "UPDATE_GROUP", "DELETE_GROUP", "REGISTER", "CREATE_IDENTITY", "UPDATE_IDENTITY", "EDIT_GROUP", "UNLOCK", "CHANGE_PASSWORD")]
        [PSCustomObject]
        ${UsageType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Fields}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ProvisioningPolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "usageType" = ${UsageType}
            "fields" = ${Fields}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProvisioningPolicy<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProvisioningPolicy<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProvisioningPolicy<PSCustomObject>
#>
function ConvertFrom-JsonToProvisioningPolicy {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ProvisioningPolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProvisioningPolicy
        $AllProperties = ("name", "description", "usageType", "fields")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usageType"))) { #optional property not found
            $UsageType = $null
        } else {
            $UsageType = $JsonParameters.PSobject.Properties["usageType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "usageType" = ${UsageType}
            "fields" = ${Fields}
        }

        return $PSO
    }

}

