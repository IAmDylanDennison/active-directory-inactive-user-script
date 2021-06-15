AD last login(<180 days)with useraccountcontrol= 512 script

$date = (Get-Date).AddDays(-180)
get-aduser -Filter { useraccountcontrol -eq 512 -and passwordlastset -LT $date} -properties * |select name, mail, passwordlastset, useraccountcontrol | 
Export-csv -path c:\ADInactivetest.csv
