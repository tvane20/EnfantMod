# EnfantMod
Projet ASP.NET MVC 5

Ce projet ASP.NET MVC 5 démontre l'utilisation de modèles de données, la récupération et l'affichage de données à l'aide de DataTables, ainsi que l'implémentation de fonctionnalités de CRUD (Create, Read, Update, Delete) avec des opérations modales.

Prérequis
Avant de commencer, assurez-vous d'avoir installé :

Visual Studio (version recommandée : Visual Studio 2017 ou plus récente)
.NET Framework (version recommandée : .NET Framework 4.5 ou plus récente)
SQL Server (ou une autre base de données compatible avec Entity Framework)
Configuration du projet
Clonage du projet

bash
Copier le code
git clone https://github.com/votre-utilisateur/ProjetAspNetMVC5.git
cd ProjetAspNetMVC5
Restauration des packages NuGet

Ouvrez le projet dans Visual Studio.
Attendez que Visual Studio restaure automatiquement les packages NuGet nécessaires. Si nécessaire, vous pouvez également restaurer manuellement en accédant à Tools > NuGet Package Manager > Manage NuGet Packages for Solution.
Configuration de la base de données

Ouvrez SQL Server Management Studio (SSMS) ou un outil similaire.
Exécutez le script SQL fourni (database.sql) pour créer la base de données et ses tables nécessaires.
Configuration de la chaîne de connexion

Ouvrez le fichier Web.config.
Assurez-vous que la chaîne de connexion dans <connectionStrings> est correctement configurée pour votre base de données.
Fonctionnalités principales
Affichage des données avec DataTables : Utilisation de DataTables pour afficher les données récupérées de la base de données de manière interactive.
Opérations CRUD avec modales : Implémentation de modales pour les opérations de création, lecture, mise à jour et suppression des données.
Utilisation de modèles ASP.NET MVC 5 : Exemple de structure de projet et d'utilisation des contrôleurs, vues et modèles pour gérer les données.
Structure du projet
Controllers/ : Contrôleurs MVC qui définissent le comportement des pages et actions.
Models/ : Modèles de données utilisés par l'application.
Views/ : Vues HTML pour l'affichage et la manipulation des données.
Scripts/ : Scripts JavaScript, y compris ceux nécessaires pour DataTables et les opérations modales.
Contributions
Les contributions sont les bienvenues ! Pour des suggestions, des problèmes ou des demandes de fonctionnalités, veuillez ouvrir une issue ou soumettre une pull request.
