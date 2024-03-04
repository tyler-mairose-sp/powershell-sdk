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
name of branding item
.PARAMETER ProductName
product name
.PARAMETER ActionButtonColor
hex value of color for action button
.PARAMETER ActiveLinkColor
hex value of color for link
.PARAMETER NavigationColor
hex value of color for navigation bar
.PARAMETER EmailFromAddress
email from address
.PARAMETER LoginInformationalMessage
login information message
.PARAMETER FileStandard
png file with logo
.OUTPUTS

BrandingItemCreate<PSCustomObject>
#>

function Initialize-BrandingItemCreate {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ActionButtonColor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ActiveLinkColor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NavigationColor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailFromAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LoginInformationalMessage},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${FileStandard}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => BrandingItemCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "productName" = ${ProductName}
            "actionButtonColor" = ${ActionButtonColor}
            "activeLinkColor" = ${ActiveLinkColor}
            "navigationColor" = ${NavigationColor}
            "emailFromAddress" = ${EmailFromAddress}
            "loginInformationalMessage" = ${LoginInformationalMessage}
            "fileStandard" = ${FileStandard}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BrandingItemCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to BrandingItemCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BrandingItemCreate<PSCustomObject>
#>
function ConvertFrom-JsonToBrandingItemCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => BrandingItemCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BrandingItemCreate
        $AllProperties = ("name", "productName", "actionButtonColor", "activeLinkColor", "navigationColor", "emailFromAddress", "loginInformationalMessage", "fileStandard")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "productName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'productName' missing."
        } else {
            $ProductName = $JsonParameters.PSobject.Properties["productName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actionButtonColor"))) { #optional property not found
            $ActionButtonColor = $null
        } else {
            $ActionButtonColor = $JsonParameters.PSobject.Properties["actionButtonColor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "activeLinkColor"))) { #optional property not found
            $ActiveLinkColor = $null
        } else {
            $ActiveLinkColor = $JsonParameters.PSobject.Properties["activeLinkColor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "navigationColor"))) { #optional property not found
            $NavigationColor = $null
        } else {
            $NavigationColor = $JsonParameters.PSobject.Properties["navigationColor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailFromAddress"))) { #optional property not found
            $EmailFromAddress = $null
        } else {
            $EmailFromAddress = $JsonParameters.PSobject.Properties["emailFromAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "loginInformationalMessage"))) { #optional property not found
            $LoginInformationalMessage = $null
        } else {
            $LoginInformationalMessage = $JsonParameters.PSobject.Properties["loginInformationalMessage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fileStandard"))) { #optional property not found
            $FileStandard = $null
        } else {
            $FileStandard = $JsonParameters.PSobject.Properties["fileStandard"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "productName" = ${ProductName}
            "actionButtonColor" = ${ActionButtonColor}
            "activeLinkColor" = ${ActiveLinkColor}
            "navigationColor" = ${NavigationColor}
            "emailFromAddress" = ${EmailFromAddress}
            "loginInformationalMessage" = ${LoginInformationalMessage}
            "fileStandard" = ${FileStandard}
        }

        return $PSO
    }

}

