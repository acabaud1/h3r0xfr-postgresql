## Arborescence

* `/backup` - Fichiers de sauvegarde
* `/config` - Fichiers de Configuration PostgreSQL
* `/scripts` - Fichiers de scripts bash
* `/sql` - Fichiers de commandes SQL/pSQL

## Annuaire des scripts

Les scripts sont situés dans le répertoire `/scripts`.

#### Installation & Configuration
* `setup.sh` - Installation de PostgreSQL
* `create_admin_user.sh` - Création de l'utilisateur admin (mot de passe: `admin42`)
* `connect.sh` - Création du fichier .pgpass et connexion en admin
* `set_configuration.sh` - Configuration de la timezone PostgreSQL (`Europe/Paris`)

#### Base `shows`
* `create_show_database.sh` - Création de la base `shows` et ses tables associées
* `load_show_data.sh` - Importer les données des fichiers CSV (répertoire `/csv`) dans les tables de la base `shows`
* `crypt_passwords.sh` - Crypter les mots de passe de la table `users` avec l'algorithme `bcrypt`
* `create_read_only.sh` - Créer un groupe en lecture seule (`reader`) puis y ajouter un utilisateur `readonly`
* `check_read_only.sh` - Requêtes de test `SELECT` et `INSERT` pour vérifier les droits de l'utilisateur `readonly`
* `reset_shows.sh` - Réinitialise complètement la base `shows`

#### Base `ynov`
* `create_ynov_database.sh` - Création de la base `ynov` et ses tables associées + fixtures

#### Sauvegarde (répertoire `/backup`)
* `backup_users.sh` - Exporte le contenu de la table `users` (base `shows`) au format CSV
* `backup_shows.sh` - Exporte le contenu de la base `shows` au format SQL
* `backup_all.sh` - Exporte l'ensemble des bases de données et paramètres du cluster au format SQL

#### Restauration
* `restore_shows.sh` - Restore le contenu de la base `shows` depuis le fichier CSV
* `restore_all.sh` - Restore l'ensemble des bases de données et paramètres depuis le fichier SQL
