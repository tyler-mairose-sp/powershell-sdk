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

.PARAMETER Id
ID of the form
.PARAMETER Name
Name of the form
.PARAMETER Title
The form title
.PARAMETER Subtitle
The form subtitle.
.PARAMETER TargetUser
The name of the user that should be shown this form
.PARAMETER Sections
Sections of the form
.OUTPUTS

FormDetails<PSCustomObject>
#>

function Initialize-V2024FormDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subtitle},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TargetUser},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Sections}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024FormDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "title" = ${Title}
            "subtitle" = ${Subtitle}
            "targetUser" = ${TargetUser}
            "sections" = ${Sections}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormDetails<PSCustomObject>
#>
function ConvertFrom-V2024JsonToFormDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024FormDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024FormDetails
        $AllProperties = ("id", "name", "title", "subtitle", "targetUser", "sections")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) { #optional property not found
            $Title = $null
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subtitle"))) { #optional property not found
            $Subtitle = $null
        } else {
            $Subtitle = $JsonParameters.PSobject.Properties["subtitle"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "targetUser"))) { #optional property not found
            $TargetUser = $null
        } else {
            $TargetUser = $JsonParameters.PSobject.Properties["targetUser"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sections"))) { #optional property not found
            $Sections = $null
        } else {
            $Sections = $JsonParameters.PSobject.Properties["sections"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "title" = ${Title}
            "subtitle" = ${Subtitle}
            "targetUser" = ${TargetUser}
            "sections" = ${Sections}
        }

        return $PSO
    }

}

