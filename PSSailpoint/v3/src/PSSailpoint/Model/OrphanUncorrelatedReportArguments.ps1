#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Arguments for Orphan Identities report (ORPHAN_IDENTITIES) and Uncorrelated Accounts report (UNCORRELATED_ACCOUNTS)

.PARAMETER SelectedFormats
Output report file formats. This are formats for calling get endpoint as a query parameter 'fileFormat'.  In case report won't have this argument there will be ['CSV', 'PDF'] as default.
.OUTPUTS

OrphanUncorrelatedReportArguments<PSCustomObject>
#>

function Initialize-OrphanUncorrelatedReportArguments {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CSV", "PDF")]
        [String[]]
        ${SelectedFormats}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => OrphanUncorrelatedReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "selectedFormats" = ${SelectedFormats}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrphanUncorrelatedReportArguments<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrphanUncorrelatedReportArguments<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrphanUncorrelatedReportArguments<PSCustomObject>
#>
function ConvertFrom-JsonToOrphanUncorrelatedReportArguments {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => OrphanUncorrelatedReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrphanUncorrelatedReportArguments
        $AllProperties = ("selectedFormats")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "selectedFormats"))) { #optional property not found
            $SelectedFormats = $null
        } else {
            $SelectedFormats = $JsonParameters.PSobject.Properties["selectedFormats"].value
        }

        $PSO = [PSCustomObject]@{
            "selectedFormats" = ${SelectedFormats}
        }

        return $PSO
    }

}

