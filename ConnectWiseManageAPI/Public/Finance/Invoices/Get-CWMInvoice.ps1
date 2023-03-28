function Get-CWMInvoice {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)][Alias('InvoiceID')]$parentId,
        [int]$id,
        [switch]$count,
        [string]$condition,
        [ValidatePattern('\S* (desc|asc)')][string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields
    )

    $Endpoint = "/finance/invoices/$($parentId)"   

    return Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}