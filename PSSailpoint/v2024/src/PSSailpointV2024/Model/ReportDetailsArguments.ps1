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

The string-object map(dictionary) with the arguments needed for report processing.

.PARAMETER Json

JSON object

.OUTPUTS

ReportDetailsArguments<PSCustomObject>
#>
function ConvertFrom-V2024JsonToReportDetailsArguments {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match AccountsExportReportArguments defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToAccountsExportReportArguments $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccountsExportReportArguments"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccountsExportReportArguments' defined in oneOf (V2024ReportDetailsArguments). Proceeding to the next one if any."
        }

        # try to match IdentitiesDetailsReportArguments defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToIdentitiesDetailsReportArguments $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IdentitiesDetailsReportArguments"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IdentitiesDetailsReportArguments' defined in oneOf (V2024ReportDetailsArguments). Proceeding to the next one if any."
        }

        # try to match IdentitiesReportArguments defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToIdentitiesReportArguments $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IdentitiesReportArguments"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IdentitiesReportArguments' defined in oneOf (V2024ReportDetailsArguments). Proceeding to the next one if any."
        }

        # try to match IdentityProfileIdentityErrorReportArguments defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToIdentityProfileIdentityErrorReportArguments $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IdentityProfileIdentityErrorReportArguments"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IdentityProfileIdentityErrorReportArguments' defined in oneOf (V2024ReportDetailsArguments). Proceeding to the next one if any."
        }

        # try to match OrphanUncorrelatedReportArguments defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToOrphanUncorrelatedReportArguments $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "OrphanUncorrelatedReportArguments"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'OrphanUncorrelatedReportArguments' defined in oneOf (V2024ReportDetailsArguments). Proceeding to the next one if any."
        }

        # try to match SearchExportReportArguments defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToSearchExportReportArguments $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SearchExportReportArguments"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SearchExportReportArguments' defined in oneOf (V2024ReportDetailsArguments). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([AccountsExportReportArguments, IdentitiesDetailsReportArguments, IdentitiesReportArguments, IdentityProfileIdentityErrorReportArguments, OrphanUncorrelatedReportArguments, SearchExportReportArguments]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("AccountsExportReportArguments", "IdentitiesDetailsReportArguments", "IdentitiesReportArguments", "IdentityProfileIdentityErrorReportArguments", "OrphanUncorrelatedReportArguments", "SearchExportReportArguments")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([AccountsExportReportArguments, IdentitiesDetailsReportArguments, IdentitiesReportArguments, IdentityProfileIdentityErrorReportArguments, OrphanUncorrelatedReportArguments, SearchExportReportArguments]). JSON Payload: $($Json)"
        }
    }
}

