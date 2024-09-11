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

.PARAMETER Name
This must always be set to ""Cloud Services Deployment Utility""
.PARAMETER Operation
The operation to perform `getReferenceIdentityAttribute`
.PARAMETER Uid
This is the SailPoint User Name (uid) value of the identity whose attribute is desired  As a convenience feature, you can use the `manager` keyword to dynamically look up the user's manager and then get that manager's identity attribute. 
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.OUTPUTS

GetReferenceIdentityAttribute<PSCustomObject>
#>

function Initialize-BetaGetReferenceIdentityAttribute {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Operation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaGetReferenceIdentityAttribute' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Operation) {
            throw "invalid value for 'Operation', 'Operation' cannot be null."
        }

        if (!$Uid) {
            throw "invalid value for 'Uid', 'Uid' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "operation" = ${Operation}
            "uid" = ${Uid}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GetReferenceIdentityAttribute<PSCustomObject>

.DESCRIPTION

Convert from JSON to GetReferenceIdentityAttribute<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GetReferenceIdentityAttribute<PSCustomObject>
#>
function ConvertFrom-BetaJsonToGetReferenceIdentityAttribute {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaGetReferenceIdentityAttribute' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaGetReferenceIdentityAttribute
        $AllProperties = ("name", "operation", "uid", "requiresPeriodicRefresh")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) {
            throw "Error! JSON cannot be serialized due to the required property 'operation' missing."
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uid"))) {
            throw "Error! JSON cannot be serialized due to the required property 'uid' missing."
        } else {
            $Uid = $JsonParameters.PSobject.Properties["uid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "operation" = ${Operation}
            "uid" = ${Uid}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
        }

        return $PSO
    }

}

