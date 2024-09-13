# config variable
$BackupFolder = "C:\backups"
$mysqldumpPath = "C:\xampp\mysql\bin\mysqldump.exe"
$User = "root"

# si l'utilisateur n'est pas root
# utilisez ces variables
# $User = "nom utilisateur"
# $PSW = "mot de passe" # si l'utilisateur à un mot de passe

$DB_sakila = "sakila"
$DB_world = "world"
$DB_menagerie = "menagerie"

# config nom backup
$BackupFileName = "db_dump_" + (Get-Date -Format "dd_MM_yyyy_HH_mm_ss") + ".sql" 

# backup des dbs root + utilsateur sans mot de passe
& $mysqldumpPath -u $User --databases $DB_sakila $DB_world $DB_menagerie | Out-File "$Backupfolder\$BackupFileName"

# backup des dbs
# si l'utilisateur n'est pas root
# et qu'il a un mot de passe
# & $mysqldumpPath -u $User --password=$PSW --databases $DB_sakila $DB_world $DB_menagerie | Out-File "$Backupfolder\$BackupFileName"