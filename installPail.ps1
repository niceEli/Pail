function Test-Git {
    # Check if Git is listed as installed
    $gitInstalled = & scoop list | Where-Object { $_ -match "git" }
    return $null -ne $gitInstalled
}

function Install-Git {
    Write-Output "Git is not installed. Installing Git..."
    && scoop install git
}

if (-not (Test-Git)) {
    Install-Git
}

$buckets = @{
    "versions" = $null
    "extras" = $null
    "Pail" = "https://github.com/niceEli/Pail"
}

foreach ($bucket in $buckets.Keys) {
    $bucketExists = scoop bucket list | Where-Object { $_ -like "*$bucket*" }

    if (-not $bucketExists) {
        Write-Output "Adding bucket: $bucket"
        & scoop bucket add $bucket $buckets[$bucket]
    } else {
        Write-Output "Bucket $bucket already exists, skipping."
    }
}
