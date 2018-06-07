## Annuaire des scripts

`setup.sh` - Installation de PostgreSQL
`create_admin_user.sh` - Création de l'utilisateur admin (mot de passe: `admin42`)
`connect.sh` - Création du fichier .pgpass et connexion en admin
`set_configuration.sh` - Configuration de la timezone PostgreSQL (`Europe/Paris`)
`create_show_database.sh` - Création de la base `shows` et des tables associées
`load_show_data.sh` - Importer les données des fichiers CSV (dossier `csv`) dans les tables de la base `shows`
`crypt_passwords.sh` - Crypter les mots de passe de la table `users` avec l'algorithme `bcrypt`
`create_read_only.sh` - Créer un groupe en lecture seule (`reader`) puis y ajouter un utilisateur `readonly`
`check_read_only.sh` - Requêtes de test `SELECT` et `INSERT` pour vérifier les droits de l'utilisateur `readonly`
