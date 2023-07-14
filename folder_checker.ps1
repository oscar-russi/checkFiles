$date = Get-Date -Format 'yyyyMMdd_HHmmss'
$directory='C:\Users\orussi\OneDrive - Auxis, LLC\Documentos\end_of_day_errors'
$csvPath = 'C:\Users\orussi\OneDrive - Auxis, LLC\Documentos\UiPath\checkFiles\csv_files\list_files_' + $date + '.csv'

# Get a list of files in the directory
$files = Get-ChildItem -Path $directory -File -Recurse

# Display the list of files
# foreach ($file in $files) {
    # Write-Host $file.FullName
# }


# Export the results to a CSV file
$files | Export-Csv -Path $csvPath -NoTypeInformation
Write-Host $csvPath