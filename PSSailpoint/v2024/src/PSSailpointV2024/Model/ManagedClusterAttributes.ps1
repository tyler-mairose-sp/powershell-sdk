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

Managed Cluster Attributes for Cluster Configuration. Supported Cluster Types [sqsCluster, spConnectCluster]

.PARAMETER Queue
No description available.
.PARAMETER Keystore
ManagedCluster keystore for spConnectCluster type
.OUTPUTS

ManagedClusterAttributes<PSCustomObject>
#>

function Initialize-V2024ManagedClusterAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Queue},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Keystore}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ManagedClusterAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "queue" = ${Queue}
            "keystore" = ${Keystore}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ManagedClusterAttributes<PSCustomObject>

.DESCRIPTION

Convert from JSON to ManagedClusterAttributes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ManagedClusterAttributes<PSCustomObject>
#>
function ConvertFrom-V2024JsonToManagedClusterAttributes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ManagedClusterAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ManagedClusterAttributes
        $AllProperties = ("queue", "keystore")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queue"))) { #optional property not found
            $Queue = $null
        } else {
            $Queue = $JsonParameters.PSobject.Properties["queue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "keystore"))) { #optional property not found
            $Keystore = $null
        } else {
            $Keystore = $JsonParameters.PSobject.Properties["keystore"].value
        }

        $PSO = [PSCustomObject]@{
            "queue" = ${Queue}
            "keystore" = ${Keystore}
        }

        return $PSO
    }

}

