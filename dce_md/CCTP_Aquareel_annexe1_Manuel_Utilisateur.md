# CCTP_Aquareel_annexe1_Manuel_Utilisateur

> Converti automatiquement depuis le PDF source
> Pages: 198

---

## Page 1

MINISTÈRE DE LA TRANSITION ÉCOLOGIQUE ET SOLIDAIRE

                                         Aquareel

                                      Manuel Utilisateur

Historique des versions

   Version Date Auteur Nature de la modification
      1.0 25/01/2011 Jean-François VALY Modification et description « métier »

      2.0 15/12/2014 F. Dongar Prise en compte des évolutions issues du marché de maintenance évolutive
                                     Jean-François VALY 2013
      2.0 14/10/2016 GDA Prise en compte des évolutions issues du marché de maintenance évolutive
                                                             2016

      3.0 26/11/2018 JBR Prise en compte des évolutions issues du marché de maintenance évolutive
                                     Jean-François VALY 2017 / 2018 dénommée « standardisation »

      4.0 01/06/21 S. Bourrier Prise en compte des évolutions issues du marché de maintenance évolutive
                                     Jean-François VALY 2021 dénommées « intégration des fonctions Serveur Intermédiaire de
                                                             Collecte (SIC) et supervision des données »
      4.1 26/01/2024 Synapse Prise en compte des évolutions du lot 1 issues du marché de maintenance
                                                             évolutive 2023-2024

---

## Page 2

MANUEL UTILISATEUR

                                                                             Aquaréel

Table des matières

1Objectif............................................................................................................................................................ 4
2Convention du présent document .................................................................................................................. 4

3Présentation générale de l’application ........................................................................................................... 5

    3.1Architecture de l’application.................................................................................................................... 5
    3.2Principes de développements................................................................................................................ 10

    3.3Principe d’acquisition et de stockage..................................................................................................... 12
    3.4Plan de navigation du client................................................................................................................... 16

    3.5Connexion............................................................................................................................................... 19

    3.6Fenêtre à propos.................................................................................................................................... 22
4Module d’exploitation................................................................................................................................... 23

    4.1Tableaux des mesures courantes........................................................................................................... 23

    4.2Configuration des types de rubriques affichées..................................................................................... 28
    4.3Lancement des collectes manuelles....................................................................................................... 30

    4.4Affichage des rapports d’exploitation.................................................................................................... 32

    4.5Visionneuse des images et des vidéos ................................................................................................... 42
    4.6Acquittement des alarmes..................................................................................................................... 45

    4.7Gestion du mode « Crise »..................................................................................................................... 46

5Module de surveillance................................................................................................................................. 47
    5.1Surveillance générale de l’application.................................................................................................... 47

    5.2Filtrage des événements d’échanges..................................................................................................... 55
    5.3Filtrage des événements de collecte...................................................................................................... 57

    5.4Filtrage des événements système.......................................................................................................... 61

    5.5Acquittement des alarmes de surveillance............................................................................................ 65
    5.6Export des événements.......................................................................................................................... 70

6Module de paramétrage................................................................................................................................ 71

    6.1Fonctionnement général des interfaces de paramétrage...................................................................... 71
    6.2Gestion de l’ordonnancement dans le client......................................................................................... 73

    6.3Gestion des planifications...................................................................................................................... 75

    6.4Paramétrage des stations....................................................................................................................... 78
    6.5Gestion générale des stations................................................................................................................ 78

    6.6Gestion des capteurs.............................................................................................................................. 86

    6.7Gestion des rubriques et des seuils........................................................................................................ 90
    6.8Gestion des courbes de tarage............................................................................................................... 94

    6.10Paramétrage des profils de collecte................................................................................................... 107

                                                                            2

---

## Page 3

MANUEL UTILISATEUR

                                                                                Aquaréel

    6.11Configuration des alarmes et des seuils............................................................................................. 117
    6.12Gestion des utilisateurs de l’application cliente ................................................................................ 123

    6.13Les imports......................................................................................................................................... 127
    6.14Paramétrage des exports................................................................................................................... 134

    6.15Alimentation du référentiel de l’application...................................................................................... 140

7Configuration diverse.................................................................................................................................. 162
    7.1Paramétrage des modèles.................................................................................................................... 162

    7.2Paramétrage des vues.......................................................................................................................... 165

    7.3Paramètres généraux........................................................................................................................... 166
    7.4Les purges et Archivages...................................................................................................................... 174

    7.5Paramétrage des pools......................................................................................................................... 176

    7.6Paramétrage des unités........................................................................................................................ 178
    7.7Activité des composants....................................................................................................................... 186

    7.8Gestion de la réplication....................................................................................................................... 190

8Installation du client Windows.................................................................................................................... 192
    8.1Prérequis technique............................................................................................................................. 192

    8.2Installation du client............................................................................................................................. 192
    8.3Gestion d’erreur................................................................................................................................... 195

9Annexes....................................................................................................................................................... 197

    9.1Rapport tableau.................................................................................................................................... 197
    9.2Rapport graphes................................................................................................................................... 197

                                                                               3

---

## Page 4

MANUEL UTILISATEUR
                                                        Aquaréel

     1 Objectif

Le présent document a pour but d’aider les utilisateurs pour la prise en main de l’application cliente du
concentrateur de données hydrologiques : Aquaréel

L’application cliente permet principalement d’assurer les fonctionnalités suivantes :

    • Exploitation des mesures issues des stations hydrologiques,

    • Surveillance du fonctionnement du système et de la chaîne de collecte,

    • Paramétrage de l’application et des référentiels associés.

Pour des raisons de sécurité, les utilisateurs doivent posséder en prérequis de connexion un identifiant et
un mot de passe pour accéder à l’application.

     2 Convention du présent document

Dans ce document, le terme « Gestion » désigne l’ensemble des opérations d’ajout / consultation /

modification / suppression exercées sur une entité de l’application.

L’application cliente, objet du présent document, sera également dénommée « le client » pour la
différencier de « l’application » désignant le concentrateur Aquaréel dans sa globalité.

La description des différentes fonctionnalités de l'application prend en compte le contexte d'un utilisateur
connecté disposant des droits en écriture sur la fonctionnalité.

Pour un utilisateur "simple lecteur" de l'application, il ne disposera que de droit en lecture sur l'interface
(cf. chapitre Les profils utilisateurs).

Le document contient des encarts spécifiques dénommés « focus » permettant d’apporter des explications
complémentaires à certaines fonctionnalités ou de faire un lien entre la fonctionnalité présentée et le

métier de l’hydrométrie et de la prévision des crues.

                                                        4

---

## Page 5

MANUEL UTILISATEUR
                                                       Aquaréel

     3 Présentation générale de l’application

Le concentrateur Aquaréel assure des fonctions de collecte, stockage, exploitation et diffusion des données

fournies par les stations hydrologiques.

Cette application s’adresse aux services exerçant des missions en rapport avec l’hydrométrie et la prévision
des crues.

          3.1 Architecture de l’application

Remarque préalable : ce chapitre ne présente que les principes généraux d’architecture et de
fonctionnement d’Aquaréel dans le but de donner à l’utilisateur une vue d’ensemble de l’application lui
permettant de mieux comprendre les éléments fonctionnels du client décrits dans la suite du document.

L’architecture et le fonctionnement de l’application sont détaillés dans les documents techniques fournis
au gestionnaire de l’application.

              3.1.1 Architecture unitaire

Aquaréel dispose d’une architecture orientée service (SOA) s’appuyant fortement sur un système de
gestion de base de données (SGBD).

Les fonctionnalités de collectes (radio, RTC,IP), d’échange, de transmission d’alarme (au travers du serveur
d’appel) et de supervision sont assurées par des services.

Les autres fonctionnalités étant assurées par le SGBD (exploitations hydrologiques et évènementielles,
planification…).

                                                       5

---

## Page 6

MANUEL UTILISATEUR

                                                  Aquaréel

             3.1.2 Architecture matérielle et logicielles

La configuration type est la suivante :

    • 1 serveur (Windows 2016 server)

           o SGBD SQL Server 2019

           o Service de transmission d’alarme et de supervision

                    transmission des alarmes ( téléphonique, mail)

                    supervision de l’application

           o Service internet

                    transmission des SMS à la station

                    transmission des alarmes SMS

           o service de collecte

                    collecte radio

                    collecte RTC

           o service d’échange

                    imports

                    exports

           o Application Web frontal IP

                    collecte IP

           o Application client léger

    • 1 serveur de terminal pour le pilotage des ports de com vers les périphériques suivants :

           o Modems RTC et GSM

           o Modem Radio

             3.1.3 Architecture multi-site et haute disponibilité

                 3.1.3.1 Principe de fonctionnement :

Compte tenu de l’aspect critique de l’application (missions de sécurité civile assurées par le SPC, prévisions

des crues et des inondations, rapidité des changements météorologiques sur le périmètre couvert), sa
fiabilité opérationnelle est primordiale.

                                                 6

---

## Page 7

MANUEL UTILISATEUR

                                                        Aquaréel

C’est pour cela qu’une solution de haute disponibilité est mise en place.

La haute disponibilité de l’application est assurée par la redondance des concentrateurs tant au niveau du
matériel que des données.

Cette haute disponibilité repose essentiellement sur une redondance à chaud sur plusieurs sites
géographiques (panne, désastre) :

    • 1 site actif

    • 1 à plusieurs sites passifs (en lecture seule, n’assurant aucune fonction de concentration)

Les sites passifs sont mis à jour en temps réel par le site actif par un processus de réplication de bases de

données. Chaque site passif est en mesure, en permanence, de reprendre les fonctionnalités du site actif en
cas de défaillance de ce dernier.

L’activation d’un site passif est réalisée manuellement par l’utilisateur au travers d’un outil spécifique

appelé gestionnaire de bascule.

L’application prévoit également la mise en œuvre d’un troisième type de site à usage de consultation
uniquement. Les sites de Consultation sont mis à jour par réplication comme les sites passifs mais ne
peuvent devenir actif.

                Architecture multi-site : schéma simplifié réseau RIE / réseau privé de Collecte

                                                       7

---

## Page 8

MANUEL UTILISATEUR

                                                         Aquaréel

                   3.1.3.2 Haute disponibilité de la collecte radio :

Pour assurer une disponibilité optimale des données collectées par radio, le service de collecte radio des
sites passifs peut être configuré en alimentant de manière redondante la base de données tampon site actif

et ainsi pallier une indisponibilité de données radio sur le site actif.

                   3.1.3.3 Résilience du service d’échange:

Pour assurer une disponibilité optimale des échanges, le service d’échange des sites passifs assure un

secours automatique du service d’échange (imports et exports) du site actif. En cas d’échec des échanges
sur le site actif( coupure réseau RIE ou de défaillance du service), les demandes d’échanges sont prises en

compte et traitées par le service situé sur un site passif.

                   3.1.3.4 Résilience du serveur d’appel vocal:

Pour assurer une disponibilité optimale des transmissions d’alarme, le service d’alarme du site passif assure
en secours automatique la transmission des alarmes via son serveur d’appel vocal si celui du site actif est
indisponible.

                   3.1.3.5 Fonctionnement simultané de plusieurs frontaux de collecte IP

Fonctionnement de la collecte des stations en IP :

La collecte IP est réalisée à l’initiative de la station (mode push) . Cette dernière envoie ces données à un ou
plusieurs frontaux de collecte.

  • En mode normal/secours en envoyant ses données vers un frontal IP de secours en cas d’échec de
l’envoi sur le frontal principal
  • En parallèle vers plusieurs frontaux déclarés

Les commandes de paramétrage et de collecte de rattrapage ne sont gérées que par le frontal IP déclaré
comme principal dans la station.

Fonctionnement en haute disponibilité :
Dans le cas d’une architecture d’Aquaréel en haute disponibilité, plusieurs frontaux de collecte IP peuvent

fonctionner simultanément selon les principes suivants :
    • Chaque Service Frontal IP insère les flux xml qu’il reçoit dans le site actif en signant son insertion
        pour identifier le service à l’origine de la collecte

    • Chaque Service Frontal IP du cluster Aquaréel peut jouer le rôle de frontal principal s’il a été
        déclaré en tant que tel sur la station.

        ◦ A ce titre il prend en charge la transmission à la station, des commandes provenant de la base
             active qui lui en fait la demande et trace les événements relatifs à ces commandes en signant
             son insertion.

                                                        8

---

## Page 9

MANUEL UTILISATEUR

                                                     Aquaréel

             3.1.4 Supervision de l’application

Un module de supervision présent sur chacun des sites de concentration effectue cycliquement une
vérification du fonctionnement de l’application pour détecter et transmettre les dysfonctionnements aux

utilisateurs.

En haute disponibilité chaque site vérifie la disponibilité de son vis-à-vis. Un autre service installé sur un
3ème site, appelé site de surveillance, permet d’affiner les diagnostics de supervision des 2 premiers.

En cas de dysfonctionnement une (ou des) alarme(s) téléphonique(s) est émise vers un opérateur
d’astreinte qui pourra décider de basculer vers le site passif.

La supervision cyclique des modules de l’application permet donc de déduire l’état de fonctionnement :

    • Du matériel

    • Des logiciels (services et base de données)

    • Des accès réseau (LAN et VPN)

                                                     9

---

## Page 10

MANUEL UTILISATEUR
                                                      Aquaréel

En cas de déploiement et de fonctionnement de l’application sur une seule instance et non en multi-sites,

la supervision est réalisée localement par le module de supervision déployé.

         3.2 Principes de développements

L’architecture Aquaréel s’appuie essentiellement sur les fonctions applicatives du SGBD pour réaliser la
majorité des traitements

              3.2.1 Mode de stockage

Compte tenu du nombre important d’informations collectées et exploitées par l’application, un mode de
stockage spécifique est mis en place pour réduire la volumétrie, favoriser la performance de l’accès aux

données, et faciliter l’administration du système :

Les principes de stockage sont basés sur :

    • Le non-stockage des données calculées

    • Le non-stockage des valeurs cumulatives égales à 0

    • La purge systématique d’informations non significatives

    • La possibilité d’archivage /purge sur des informations significatives

                  3.2.1.1 Le non-stockage des données calculées

L’application ne stocke que les mesures issues des capteurs.

Les autres grandeurs hydrologiques calculées ne sont pas stockées :

    • Débit à partir de courbes de tarage

    • Gradient entre deux valeurs de limni

    • Cumul pluviométrique

Ces informations sont calculées à la volée par le système en fonction des besoins.

Seul le paramétrage des calculs est stocké.

                  3.2.1.2 Le non-stockage des valeurs cumulatives égales à 0

La très grande majorité des données de pluie collectées est égale à 0. Dans certaines régions les 0
représentent plus de 98% des mesures de pluies.

La base de données Aquaréel ne stocke pas les 0. Seules les valeurs supérieures à 0 et les valeurs
manquantes sont stockées.

                                                     10

---

## Page 11

MANUEL UTILISATEUR

                                                        Aquaréel

Les valeurs à 0 sont reconstituées à la volée en cas d’exploitation des données.

                   3.2.1.3 La purge/archivage systématique d’informations les plus anciennes

La base de données Aquaréel stocke des informations relatives aux données, fichiers et évènements de

collecte qui peuvent générer des volumes de données importants.

Des dispositifs de purge sont mis en place pour réduire ces volumes et garantir la stabilité des
performances. En effet certaines informations dont la conservation n’est pas considérée comme

importante sont systématiquement supprimées dès qu’elles dépassent une antériorité paramétrable. Les
informations les plus importantes sont archivées sous forme de fichier ou dans une base de données. Parmi
les informations purgées et/ou archivées, on peut lister :

  • Les fichiers (images), les mesures et les indicateurs techniques dans le cadre d’une gestion de base

glissante sans conservation de l’historique des mesures. (si l’option gestion de l’historique n’a pas été
activée – voirgestion de l’activité des composants)

  • Les évènements :

     ◦ Purge des événements non significatifs (inférieurs à un niveau paramétrable)

     ◦ Archivage des événements significatifs suppression sur une antériorité paramétrable et qui
s’accompagne de l’archivage des données via la création sur le serveur de 2 fichiers au format BCP.

  • Les mesures de la base tampon ; purge des mesures antérieures à une profondeur paramétrable

  • Les références de fichiers obsolètes : suppression des références de fichiers déjà échangés dans le cas

d’un échange multi-fichiers

  • Les mesures dont la station ou les capteurs ont été supprimés : En cas de suppression de station ou
capteur par l’utilisateur, les mesures associées sont supprimées de la base, en différé dans la nuit, pour

éviter de surcharger en journée le fonctionnement de l’application par des suppressions massives

                                                       11

---

## Page 12

MANUEL UTILISATEUR
                                                      Aquaréel

         3.3 Principe d’acquisition et de stockage

L’application s’appuie sur trois instances de bases de données corrélées :

    • Une base tampon qui contient, sur une période glissante, uniquement les mesures brutes issues

        des stations,

    • Une base de production qui contient, sur une période glissante, les mesures et images exploitables
        et l’ensemble des informations nécessaires au fonctionnement de l’application (paramétrage,
        journal d’événement…).

    • Une base archive qui contient, si le dispositif d’archivage est activé dans l’application, l’historique

        des mesures et fichiers images

La base tampon permet de dissocier le processus d’acquisition de celui de mise en production. Ce
cloisonnement facilite également la maintenance des bases.

Nota : L’application cliente se connecte à la base de production ou aux deux bases (production + archive)
pour consulter l’intégralité des mesures disponibles. Les mesures de la base tampon ne sont donc pas

accessibles via cet outil.

              3.3.1 Acquisition des mesures

Excepté pour la collecte radio et la collecte IP, les ordres de collecte ou d’import de données sont lancés

par la base de production (fonction planification) à l’attention des services correspondant (collecte ou
échange).

Les ordres de collecte et d’échange sont stockés en base. Ils sont détruits lorsque la tâche a été réalisée.
Des vérifications sont effectuées afin d’en limiter leur nombre et leur durée :

                                                     12

---

## Page 13

MANUEL UTILISATEUR

                                                       Aquaréel

    • Les nombres d’ordre de collecte et d’échange simultanés sont limités par un paramètre stocké dans
        les paramètres généraux. (voir Paramètres généraux)

    • Un ordre est automatiquement supprimé si son antériorité dépasse une valeur paramétrable

    • 2 ordres ne peuvent être lancés simultanément pour un même objet (échange ou canal de station)

Les mesures brutes acquises (collectées ou importées) sont insérées au format tabulaire dans la base

tampon par le service ayant fait l’acquisition. Les images et les références de fichier importés sont
également stockés en base tampon.

Ce même service insère également directement dans la base de production les informations concernant

l’état de l’acquisition afin d’alimenter le journal des évènements.

                  3.3.1.1 Gestion de l’horodatage des mesures

Aquaréel stocke l’ensemble des informations en heure UTC. Pour les mesures collectées ou importées qui

sont horodatées en heure locale, une conversion en UTC est réalisée par le processus d’affinage avant
insertion en base de production.

De même en cas d’export de données en Heure locale ( paramétré comme tel dans l’export) , les données

sont converties par Aquaréel lors de la constitution du fichier exporté

Pour ce faire, dans Aquaréel, les fuseaux horaires du concentrateur et des stations sont paramétrés comme
suit:

     • Pour le concentrateur, on référence dans la table des paramètres généraux la zone du fuseau

        horaire. ( "France" pour les concentrateurs en France métropolitaine) Cet élément permet de :

             • Convertir en UTC les mesures importées si l’import concerné est déclaré en HL.

             • Convertir en HL du concentrateur les données à exporter si l’export concerné est déclaré en
                HL.

     • Pour les stations, la valeur du fuseau horaire est référencée ( "Heure normale de l'Europe centrale"
        pour les stations en France métropolitaine) afin de convertir en UTC lors de l’insertion en base de

        production, les données collectées en HL sur les stations.

Le client Windows, s'il est paramétré pour un affichage en Heure Locale, convertit en HL, à partir du
paramétrage de l'horodatage Windows du PC, les dates UTC lues en base et affichées dans le client

(mesures, événements et planification). De même les dates de planification paramétrées depuis un client
en HL sont converties en UTC lors de leur inscription en base de données.

                  3.3.1.2 Redondance de l’alimentation en données radio en cas d’architecture
                      multi-sites :

                                                      13

---

## Page 14

MANUEL UTILISATEUR

                                                    Aquaréel

Le service de collecte radio dispose de trois modes d'écriture des mesures radio auto en base Tampon :

    • SeulSiteActif : Seul le site actif enregistre les mesures en base Tampon

    • VersSiteActif : Tous les sites enregistrent les mesures en base Tampon du site actif

    • VersTousSites : Tous les sites enregistrent les mesures dans toutes les bases Tampon

Le mode de fonctionnement est paramétrable dans le fichier de configuration du service de collecte. (Voir
manuel d’exploitation de l’application)

             3.3.2 Affinage et mise en production des données

La base de données de production est alimentée toutes les minutes par un processus qui récupère, vérifie

et corrige si nécessaire les mesures, les images et les indicateurs techniques de la base tampon. Ce
processus est appelé Affinage

Les traitements de mesures hydrologiques réalisés par l’affinage sont :

    • Récupération des mesures et des fichiers images attendus en production

    • Conversion en TU si nécessaire

    • Détection des horodatages invalides

            o Pas de temps invalides (différent de celui attendu)

            o Horodatages trop anciens ou dans le futur

    • Détection des pannes capteurs

    • Application de la résolution des capteurs

    • Conversion d’unités si nécessaire

    • Détection des valeurs aberrantes avec remplacement si possible par la valeur immédiatement

        précédente et marquage en base tampon

            o Dépassement de seuil min et max

            o Dépassement d’un gradient entre 2 valeurs consécutives

    • Transformation des pas de temps en celui de la base

            o Mesures ponctuelles (limni débit) : Conversion de tout pas de temps supérieur au pas de
               temps de la base

            o Mesures cumulées (pluie)

                    Multiples du pas de temps de la base

                    Pas de temps 6mn (si pas de temps de la base est 5mn)

                                                   14

---

## Page 15

MANUEL UTILISATEUR

                                                  Aquaréel

    • Insertion des données affinées en base de production

           o les limnis et débits bruts

           o Les pluies <>0

           o Les fichiers images

    • vérification des dépassements de seuils

Les traitements des images réalisés par l’affinage sont :
    • Récupération des mesures et des fichiers images attendus en production

    • Conversion en TU si nécessaire

    • Détection des horodatages invalides

                                                 15

---

## Page 16

MANUEL UTILISATEUR
                                                       Aquaréel

          3.4 Plan de navigation du client

Le client Aquaréel se découpe en 3 modules fonctionnels :

    • Le paramétrage de l’application,

    • L’exploitation des mesures et images,

    • La surveillance.

La navigation générale du client est réalisée à partir des menus présents dans le bandeau du haut ou à
partir de la barre d’outils.

A tout moment, l’utilisateur peut connaître rapidement la fonctionnalité sur laquelle il est positionné au

sein du client au moyen du « fil d’Ariane » reprenant le nom du module fonctionnel suivi de la
fonctionnalité associée.

Les exemples suivants indiquent le positionnement de l’utilisateur dans le module « Paramétrage » pour la
fonctionnalité de gestion des « Stations et capteurs ».

Il est possible de connaître la fonctionnalité courante en consultant les menus (élément coché dans le

module correspondant) ou la barre de boutons (bouton correspondant « enfoncé »).

Elément courant au sein du menu « Paramétrage ».

Elément courant au sein de la barre d’outils.

                                                      16

---

## Page 17

MANUEL UTILISATEUR

                                                       Aquaréel

              3.4.1 Navigation via les menus

Les différentes entrées présentes dans les menus sont les suivantes :

    • Gestion de la connexion,

    • Exploitation,

    • Surveillance,

    • Paramétrage,

    • Aide.

La présentation de chaque entrée est décrite de manière plus détaillée dans les chapitres suivants.

Le menu « Gestion de la connexion » contient les sous-entrées suivantes :
                    Entrée Fonction

         Changer mot de passe Modification du mot de passe de l’utilisateur connecté.

         Déconnexion Fermeture de la session de l’application cliente et de l’interface
                                       graphique.

Le menu « Exploitation » comprend la sous-entrée suivante :

                    Entrée Fonction

         Tableau des mesures Affichage en temps réel des mesures collectées ou calculées
         courantes auprès des différentes stations, classées sous forme de rubriques
                                       et réparties par vue logique.

Le menu « Surveillance » comprend la sous-entrée suivante :
                    Entrée Fonction

         Surveillance des alarmes Affichage en temps réel des événements remontés par
                                       l’application issus des collectes, des imports/exports ainsi que du

                                       fonctionnement interne du concentrateur.

Le menu « Paramétrage » comporte les sous-entrées suivantes :

                    Entrée Fonction
         Stations et capteurs Configuration des stations hydrologiques et des éléments

                                       associés. :

                                                      17

---

## Page 18

MANUEL UTILISATEUR

                                                        Aquaréel

         Profils de collecte Configuration des différents profils de collecte regroupant des
                                       stations.
         Alarmes Configuration des opérateurs d’astreinte et des seuils de

                                       déclenchement des alarmes hydrologiques.
         Utilisateurs Configuration des profils et des comptes utilisateurs.

         Imports Configuration des imports de données et des capteurs associés.

         Exports Configuration des exports de données.
         Référentiels Configuration des différents éléments de référentiel de
                                       l’application.

         Divers Configuration diverse de l’application.

Finalement, le menu « Aide » se décompose de la sorte :

                    Entrée Fonction

         Aide générale Présentation détaillée de l’aide de l’application.
         A propos Menu « A propos » de l’application.

              3.4.2 Navigation via la barre d’outils

Il est également possible de naviguer au sein de l’application cliente en utilisant la barre d’outils, présente
sous les menus, permettant l’accès aux principales fonctionnalités.

Elle comporte les entrées suivantes :

                    Entrée Fonction
         Mesures Accès aux tableaux des mesures du module « Exploitation ».

         Surveillance Accès au module « Surveillance ».

         Stations Configuration des stations et capteurs.
         Collectes Configuration des profils de collecte.

         Alarmes Gestion des alarmes et des seuils.

         Utilisateurs Gestion des profils et comptes utilisateur.
         Imports Gestion des imports de données et des capteurs associés.

         Exports Gestion des exports de données.

         Référentiels Gestion des éléments de référentiel de l’application.
         Divers Configuration diverse de l’application.

                                                       18

---

## Page 19

MANUEL UTILISATEUR
                                                         Aquaréel

          3.5 Connexion

Cette partie comprend la présentation de la connexion à l’application cliente, la présentation des profils
utilisateurs, le changement de mot de passe du compte connecté et la déconnexion à l’application.

              3.5.1 Connexion à l’application cliente

Les utilisateurs bénéficiant d’un identifiant de connexion et d’un mot de passe peuvent se connecter à

l’application cliente de concentration installée sur leur poste de travail.

Plusieurs sites cibles peuvent être proposés à l'utilisateur en fonction de la plate-forme mise en place pour
l'application.

Par défaut, il existe un site "actif" (écriture autorisée) et optionnellement des sites dits "passifs" ou « de
consultation » (sites de secours, en consultation uniquement). Voir architecture multi-sites et haute
disponibilité

Sur le site disposant de la base archive, dénommé site principal, l’utilisateur se voit proposer :

    • Le nom du site : pour un accès à la base de production avec une antériorité limitée

    • Le nom du site - site complet : pour un accès à l’ensemble des données ( base de production et
        base archive)

Pour se connecter à l'application, il suffit de démarrer le client puis de saisir les identifiants dans la mire de
connexion ci-dessous, de sélectionner le site cible puis de cliquer sur le bouton « Connexion ».

En cas d’erreur de saisie, un message apparaît indiquant à l’utilisateur de réitérer sa saisie.

                                                       19

---

## Page 20

MANUEL UTILISATEUR

                                                          Aquaréel

Une fois l’utilisateur connecté, le client charge par défaut l’interface d’exploitation contenant les tableaux
des mesures courantes.

Quel que soit le profil de l’utilisateur, s'il décide de se connecter au site passif, toutes les interfaces seront

affichées en simple consultation comme si l'utilisateur était connecté avec un profil sans droit de
modification (voir chapitre suivant).

Les informations sur le compte utilisateur connecté sont alors affichées en dessous de la barre d’outils à

droite du fil d’Ariane selon la nomenclature <Prénom> <Nom> - <Profil> - <Site> où

<Prénom> correspond au prénom de l’utilisateur connecté,

<Nom> au nom de l’utilisateur connecté,

<Profil> au profil de l’utilisateur connecté,

<Site> au site auquel l’utilisateur est connecté.

               3.5.2 Les profils utilisateurs

Les utilisateurs au sein de l’application cliente sont subdivisés par profil.

Chaque profil garantit des droits (ou privilèges) plus ou moins restreints sur les différentes fonctionnalités

du client.

De manière plus générale, un utilisateur peut disposer des droits en lecture seule ou en écriture sur chaque
fonctionnalité de l’application cliente.

Dans le cas d’un profil minimaliste de type « Lecteur », toutes les interfaces sont accessibles aux utilisateurs

en lecture seule, toutes les informations sont consultables mais non modifiables.

Le profil « Administrateur » est un profil particulier dans le sens où il n’est ni modifiable, ni supprimable via
l’application cliente. Il dispose des droits en lecture et en écriture sur l’ensemble des fonctionnalités de

l’application.

1
 Il est à noter que les utilisateurs disposant de droits uniquement en lecture sur la fonctionnalité de gestion des utilisateurs ne
peuvent pas consulter les mots de passe des différents utilisateurs de l’application.

                                                         20

---

## Page 21

MANUEL UTILISATEUR

                                                       Aquaréel

              3.5.3 Changement du mot de passe

Chaque utilisateur connecté a la possibilité de modifier son mot de passe au sein de l’application cliente.

Pour cela, il choisit dans le menu « Gestion connexion » la sous-entrée « Changer mot de passe ». Une
fenêtre apparaît alors à l’utilisateur.

Afin de sécuriser cette opération, l’utilisateur doit obligatoirement saisir dans l’interface les informations
suivantes :

                 Entrée Obligatoire Fonction
         Mot de passe Oui Ancien mot de passe de l’utilisateur

         Nouveau mot de Oui Nouveau mot de passe de l’utilisateur
         passe

         Confirmation mot Oui Nouveau mot de passe de l’utilisateur permettant de
         de passe confirmer la saisie

Il confirme alors l’opération en appuyant sur le bouton « Modifier le mot de passe ».

Un message lui indique alors que la modification est bien prise en compte. Il peut fermer la fenêtre via le

bouton « Fermer ».

S’il décide de conserver son ancien mot de passe, il peut fermer la fenêtre via le bouton « Fermer » ou en
appuyant sur l’item « ».

              3.5.4 Déconnexion de l’application cliente

L’utilisateur connecté peut « sortir » de l’application à tout moment :

    • Soit par le menu « Gestion Connexion » puis « Déconnexion »,

                                                     21

---

## Page 22

MANUEL UTILISATEUR
                                                  Aquaréel

    • Soit en appuyant sur l’item « » de la fenêtre principale de l’application.

Il est impératif de fermer toutes les autres fenêtres de l’application auparavant.

Un message invite ensuite l’utilisateur à confirmer ou non son choix.

         3.6 Fenêtre à propos

Elle apparaît sous la forme d'une fenêtre pop-up. Elle contient les données relatives à l'application telle que
sa version, les informations du produit, ... Le bouton "Fermer" permet de fermer la fenêtre courante.

                                                 22

---

## Page 23

MANUEL UTILISATEUR
                                                    Aquaréel

     4 Module d’exploitation

Il se compose des entrées suivantes :

    • Tableaux des mesures courantes,

    • Configuration des rubriques affichées,
    • Lancement des collectes manuelles,

    • Affichage des rapports d’exploitation,

    • Visualisation des images ( photos et vidéos)

    • Acquittement des alarmes hydrologiques,

    • Gestion du mode « Crise ».

         4.1 Tableaux des mesures courantes

             4.1.1 Présentation

Cette fonctionnalité permet de consulter en temps quasi-réel (en fonction du délai de rafraîchissement de
l'interface), l'ensemble des dernières valeurs des rubriques (brutes ou calculées) issues des mesures de

stations classées par vue de regroupement. (voir paramétrage des rubriques)

Ces valeurs sont réactualisées automatiquement pour chaque nouvelle collecte achevée pour une station
ou un ensemble de stations donné.

             4.1.2 Composition de l’interface

L'interface graphique se compose :

    • d'un onglet par vue de regroupement, la vue par défaut étant la vue "Générale", les autres,
        optionnelles, sont créées via la fonctionnalité présente dans le menu "Paramétrage / Divers /

        Paramétrage des vues".( voir le paramétrage des vues ). L'onglet "Générale" contient l'exhaustivité
        des stations de l'application.

     d'indicateurs du niveau de sévérité maximum des alarmes applicatives répartis par type (Profil de

        collecte, Import/Export,Système et hydrologique) situés en haut de l'interface.

                                                   23

---

## Page 24

MANUEL UTILISATEUR

                                                       Aquaréel

    • d'une zone de boutons située à droite des indicateurs comportant les boutons "Acquitter les

        alarmes hydrologiques" et "Activer mode Crise".

    • d'une zone de boutons située en haut de l'interface comportant les boutons "Actualiser",
        "Collecter", "Afficher", "Visualiser" et "Configurer".

Chaque onglet contient un tableau des stations hydrologiques - chaque ligne correspondant à une station
différente, les couleurs de chaque ligne étant alternées afin de faciliter la lecture des données.

Une ligne est décomposée de la sorte :

    • une case à cocher de sélection pour la collecte de la station,

    • une icône comportant le profil de collecte principal de la station (Radio, Téléphone (RTC ou GSM),
        import, ou vide si station n’a pas de profil principal),

    • le libellé de la station concernée,

    • les rubriques hydrologiques paramétrées pour cette station et les valeurs associées disponibles.

            o L’affichage des colonnes de type de rubrique est paramétrable (cf. fonctionnalité
                 "Configuration des types de rubriques affichées")

            o La présence d’une case à cocher indique qu’une rubrique a été paramétrée pour cette
                 station.

            o L’absence de valeur signifie

                      Pour les rubriques simples : qu’aucune valeur récente (<1 semaine) n’est

                         disponible.

                      Pour les rubriques calculées : le calcul n’a pu être réalisé

Les stations sont regroupées au sein du tableau par bassin versant ou par cours d’eau, puis triées par
défaut par numéro d'ordre au sein du bassin. (voir paramétrage des vues )

                                                      24

---

## Page 25

MANUEL UTILISATEUR

                                                        Aquaréel

                   4.1.2.1 Explicitation des cases de rubriques :

La date de la dernière mesure est affichée dans une info-bulle au passage de la souris sur la case de la

rubrique.

Une codification a été mise en place pour faciliter la compréhension des données et optimiser leur lecture.
Certains paramètres peuvent être cumulatifs au sein d'une même rubrique. A chaque réactualisation,

chaque case est remise à jour en fonction des données de la dernière collecte.

Le tableau ci-dessous explicite ces règles :

                     Particularité Explication

              Case de couleur orange Date de collecte de cette rubrique a dépassé le retard
                                             admissible. La durée de retard admissible est renseignée dans le
                                             profil de collecte principal de la station. Au-delà de 7 jours de

                                             retard, la valeur est supprimée du tableau
         Symbole (+) suivant la mesure Pour les valeurs issues de calculs de cumul, ce symbole indique
                                             des données manquantes sur la plage de calcul.

                                                       25

---

## Page 26

MANUEL UTILISATEUR

                                                       Aquaréel

         Points de couleurs Alarme hydrologique pour cette rubrique de la station. La
                                            couleur représente le seuil dépassé ayant l’ordre le plus élevé
                                            (l’ordre des seuils est défini dans le menu de paramétrage des
                                            types de seuil).

Il est à noter que la notion d'alarme de dépassement de seuils d'une station est reportée également sur les

onglets correspondants aux vues de regroupement comprenant la station. Si la station est présente dans
plusieurs vues de regroupement, un point sera présent sur chaque onglet comprenant la station, à côté du
nom de la vue de regroupement. La couleur est donnée par le seuil dépassé ayant l’ordre le plus élevé.

                                                      26

---

## Page 27

MANUEL UTILISATEUR

                                                       Aquaréel

                  4.1.2.2 Utilisation de l’interface

L'utilisateur peut réaliser différentes opérations à partir de l'interface :

    • gérer la sélection des rubriques et le tri des stations via le menu contextuel,

    • mettre à jour les données "temps réel" présentes dans le tableau des mesures courantes pour
        chaque station via le bouton "Actualiser". L'IHM est configurée pour être automatiquement
        rafraîchie en fonction du paramètre applicatif "Intervalle de rafraîchissement de l'IHM" (Code

        IHM.RAFRAICHISSEMENT) configurable au sein de l'application.

    • lancer une collecte manuelle en sélectionnant dans le tableau des stations puis en appuyant sur le
        bouton "Collecter".

    • réaliser des rapports sur les données collectées via le bouton "Afficher".

    • Visualiser l’ensemble des images et des vidéos collectées dans le système via le bouton

        "Visualiser".

    • gérer l'affichage des rubriques sur l'ensemble des tableaux des différentes vues de regroupement
        du client Windows et du client léger via l'appui sur le bouton "Configurer",

    • consulter ou acquitter les alarmes hydrologiques via le bouton "Acquitter les alarmes
        hydrologiques",

    • gérer le mode crise via le bouton "Activer mode Crise".

Les indicateurs de sévérité caractérisent le niveau maximal de sévérité correspondant aux modules de

rattachement d'origine respectif. Des explications plus précises sont disponibles dans le chapitre
"surveillance" relatif aux indicateurs de sévérité de la surveillance.

Le menu contextuel présent dans chaque tableau propose les fonctionnalités :

    • Sélectionner toutes les rubriques de la station,

    • Désélectionner toutes les rubriques de la station,

    • Tout désélectionner (désélectionner toutes les stations et toutes les rubriques du tableau),

    • Trier les stations du tableau par :
            o Numéro d'ordre

            o Nom de station (ordre alphabétique).

Le détail des autres opérations est décrit dans les fonctionnalités suivantes.

                                                     27

---

## Page 28

MANUEL UTILISATEUR
                                                       Aquaréel

         4.2 Configuration des types de rubriques affichées

              4.2.1 Présentation

Cette fonctionnalité permet de sélectionner les types de rubriques à afficher, ainsi que leur ordre
d'affichage, sur l'ensemble des tableaux de mesures courantes présents dans les différentes vues de

regroupement. Voir les notions de rubriques et types de rubriques

Cette interface permet également de gérer l’affichage des indicateurs d’état et des mesures techniques
dans les menus du client léger ( voir manuel du client léger)
              4.2.2 Composition de l’interface

Suite à l'appui sur le bouton "Configurer", une fenêtre pop-up de configuration s'ouvre, composée d'une
zone de sélection, de deux boutons de gestion de l'ordre et des boutons "Valider" et "Annuler".

              4.2.3 Utilisation de l’interface

                  4.2.3.1 Ordonnancement d'affichage :

L'utilisateur peut sélectionner une rubrique en cliquant sur son libellé, ce qui a pour action de surligner la
sélection (cf. capture d'écran pour la rubrique "Cumul 5M").

Il peut alors choisir de changer l'ordre d'affichage des rubriques dans le tableau via les boutons "Monter" et
"Descendre". La première rubrique du tableau des mesures courantes affichée correspond alors à celle qui

est placée la plus en haut dans la liste. L'action de "monter" permet de prioriser l'ordre d'affichage de la
rubrique dans la liste des colonnes du tableau des mesures courantes, l'action de "descendre" permet de
diminuer la priorité cet ordre.

                                                      28

---

## Page 29

MANUEL UTILISATEUR
                                                       Aquaréel

                  4.2.3.2 Activation/désactivation de l'affichage des rubriques :

L'utilisateur peut choisir dans la liste des types de rubriques celles qu'il décide d'afficher sur l'ensemble des

tableaux des dernières mesures présentes dans les vues de regroupement. Pour cela, il suffit de
sélectionner chaque rubrique via la case à cocher précédant le nom puis de cliquer sur le bouton "Valider".
Les tableaux sont ensuite automatiquement mis à jour avec les nouvelles colonnes.

L'appui sur le bouton "Annuler" réalise uniquement la fermeture de la fenêtre de configuration.

                  4.2.3.3 Particularités

La case à cocher Images active l’affichage de la colonne indiquant la présence d’image récente pour cette
station.

                                                      29

---

## Page 30

MANUEL UTILISATEUR
                                                    Aquaréel

         4.3 Lancement des collectes manuelles

             4.3.1 Présentation

Cette fonctionnalité permet de déclencher la collecte manuelle (RTC , Radio ou IP) d'une série de stations

hydrologiques présentes au sein d'une vue de regroupement.

             4.3.2 Composition de l’interface

L'interface graphique de cette fonctionnalité se décompose en deux parties :

    • la sélection des stations concernées,

    • le paramétrage de la collecte.

                 4.3.2.1 Sélection des stations à collecter :

L'utilisateur sélectionne les stations directement au sein du tableau des mesures courantes de la vue de
regroupement en cochant la case précédant le nom de chaque station hydrologique sélectionnée.

Une fois la sélection réalisée, il faut appuyer sur le bouton "Collecter" permettant l'affichage de la fenêtre
de configuration de la collecte manuelle.

                 4.3.2.2 Fenêtre de configuration de collecte :

Cette fenêtre est composée d'un formulaire de paramétrage découpé de la sorte :

    • formulaire de saisie de la période de collecte,

    • formulaire de sélection des stations à collecter.

             4.3.3 Utilisation de l’interface

Le formulaire de saisie de la période de collecte est un formulaire dynamique permettant de sélectionner :

    • soit une profondeur de temps (saisie d'une valeur numérique puis sélection d'une grandeur de

        temps dans la liste [minutes, heures, jours, mois, années]),

                                                   30

---

## Page 31

MANUEL UTILISATEUR

                                                       Aquaréel

    • soit une période de temps donnée (sélection des dates et horaires de début et fin de collecte).

La case à cocher permet d’indiquer si les traitements temps réel (vérification

d’alarmes et mise à jour du tableau des mesures courantes) doivent être appliqués sur les données
collectées.

Le formulaire de sélection des stations à collecter est composé d'une zone des stations disponibles (zone de
gauche) et d'une zone des stations à collecter (zone de droite), séparées par les boutons "Ajouter >" et "<

Retirer".

L'utilisateur peut sélectionner des stations dans la liste des stations disponibles puis les positionner comme
"à collecter" en appuyant sur le bouton "Ajouter >".

Une fois rajoutées dans la liste de droite, il peut choisir, pour chaque station, le canal de collecte à utiliser

(Voir définition du canal de collecte).

Le canal de collecte sélectionné par défaut lors de l’ajout d’une station est dans l’ordre de disponibilité
dans la station :

    • RTC/PLQ2000

    • GSM/PLQ2000

    • Radio SMI/PLQ2000

    • IP/XML-LNS

Il peut également sélectionner des stations à collecter puis les supprimer de la collecte en appuyant sur le

bouton "< Retirer".

                                                      31

---

## Page 32

MANUEL UTILISATEUR
                                                    Aquaréel

Par
défaut,

une
période
de

collecte
de 1
heure est

configurée sur les stations sélectionnées dans le tableau des mesures courantes.

Une fois la sélection de la période de collecte et des stations à collecter, il peut appuyer sur le bouton
"Collecter" pour lancer l'opération ou l'abandonner et fermer la fenêtre active en appuyant sur le bouton

"Fermer".

L’appui sur le bouton collecter déclenche une boite de dialogue demandant confirmation du lancement de
la collecte :

Sur oui, le message apparaît au bas du menu Collecte.

Nota : Les collectes peuvent être également lancées depuis le menu de paramétrage des profils :

    • L’ensemble des stations du profil est proposé dans la sélection

    • La profondeur de collecte proposée est celle paramétrée pour le profil

         4.4 Affichage des rapports d’exploitation

             4.4.1 Présentation

Cette fonctionnalité permet de réaliser l'édition de rapports (tableau ou graphe) à partir des données des
rubriques hydrologiques.

             4.4.2 Composition de l’interface

                                                   32

---

## Page 33

MANUEL UTILISATEUR

                                                     Aquaréel

Elle est déclenchée suite à l'appui sur le bouton "Afficher".

L’utilisateur peut, au préalable, avoir sélectionné les rubriques hydrologiques à afficher dans le tableau des
dernières mesures.

Une fenêtre pop-up s'ouvre alors, permettant la sélection des critères d'affichage du rapport. L'interface se
compose des éléments suivants :

    • sélection du type de rapport,

    • sélection des limites temporelles,

    • gestion du pas de temps et du type d'agrégation,

    • sélection des rubriques à éditer,

    • bouton(s) d'affichage et d’export du rapport.

             4.4.3 Utilisation de l’interface

                  4.4.3.1 Type de rapport

L'utilisateur doit dans un premier temps choisir le type de rapport qu'il veut éditer.

Il sélectionne dans la liste déroulante l'un des éléments suivants :

• Tableau,

• Graphique,

• Graphiques superposés.

Le type "tableau" correspond à l'affichage dans une grille des données des rubriques correspondant à la
recherche, ordonnées par date décroissante.

Le type "graphique" correspond à l'affichage visuel sous forme de courbes, d'histogrammes ou de

hyétogrammes inversés (en fonction du type de mesures) des mesures des différentes rubriques
sélectionnées selon les critères de recherche, un graphe étant attribué pour chaque type de rubrique.

Le type "graphiques superposés" correspond à l'affichage sous forme de graphiques superposés des
mesures des différentes rubriques sélectionnées selon les critères de recherche. Les graphes superposés

sont affichés en fonction des capteurs présents et des rubriques sélectionnées selon les combinaisons :

• mesures pluviométriques / mesures débit,

• mesures pluviométriques / mesures limnimétrique,

• mesures pluviométriques / mesures gradient.

                                                    33

---

## Page 34

MANUEL UTILISATEUR

                                                        Aquaréel

Pour le type "tableau", un seul bouton d'affichage du rapport est présent "Afficher le tableau".

Pour les autres types, deux boutons sont présents "Afficher le graphique" et "Sélectionner les seuils".

                   4.4.3.2 Sélection des limites temporelles

L'utilisateur choisit ensuite la profondeur de recherche ou la plage de temps de recherche utilisée pour

éditer le rapport.

Dans le cadre de la recherche via une profondeur, il choisit d'abord l'entrée "Depuis" (cf. capture ci-
dessous), puis saisit le quantificateur et l'unité de temps associée. Il peut ensuite choisir d'actualiser
automatiquement le rapport afin de conserver la profondeur de recherche par rapport à la date courante

en cochant la case "Actualisation automatique". Cette actualisation est réalisée à la même fréquence que
celle du tableau des dernières mesures.

Dans le cadre de la recherche via une plage de temps, il choisit d'abord l'entrée "Entre le" (cf. capture ci-
dessous), puis sélectionne une date et heure de début et une date et heure de fin dans l'interface dédiée.

                   4.4.3.3 Pas de temps et regroupement

L'utilisateur peut ensuite décider de gérer la durée du pas de temps de calcul des rubriques, ainsi que le
type de regroupement à appliquer aux mesures.

Pour cela, il doit saisir le quantificateur, choisir l'unité de mesure puis appuyer sur le bouton "Mettre à jour
les pas de temps des rubriques à".

Cela a pour action de propager le nouveau pas de temps à toutes les rubriques sélectionnées.

Les 4 types de regroupement proposés sont les suivants :
   Type de calcul Action réalisée

                                                       34

---

## Page 35

MANUEL UTILISATEUR

                                                     Aquaréel

  Compte Détermine le nombre de mesures obtenues pour une rubrique sur une période de temps
                    donnée. La valeur de temps renvoyée correspond à la dernière date de la période de
                    temps.

  Moyenne Détermine la valeur moyenne des mesures d'une rubrique sur une période de temps
                    donnée. La valeur de temps renvoyée correspond à la dernière date de la période de
                    temps.

  Maximum Détermine la valeur maximale des mesures d'une rubrique sur une période de temps
                    donnée. La valeur de temps renvoyée correspond à la date d'atteinte de cette valeur
                    maximale.

  Minimum Détermine la valeur minimale des mesures d'une rubrique sur une période de temps
                    donnée. La valeur de temps renvoyée correspond à la date d'atteinte de cette valeur
                    minimale.

                  4.4.3.4 Adapter le pas de temps à la valeur du cumul

L’utilisateur peut choisir d’afficher des cumuls pluviométriques non recouvrant en adaptant le pas de temps

de la donnée affichée à la profondeur du cumul pluviométrique choisi. (ex : cumul de profondeur 1h au pas
de temps 1h)

                  4.4.3.5 Sélection des rubriques à afficher

Le menu présente une liste des rubriques disponibles et une liste des rubriques sélectionnées présentant,
le cas échéant, celles qui ont été sélectionnées par l’utilisateur dans le tableau des mesures courantes.

L'utilisateur sélectionne ensuite dans la liste des rubriques disponibles celles qu'il souhaite éditer en
cochant dans la zone de gauche les cases à cocher précédant le nom de la station et de la rubrique associée

puis en appuyant sur le bouton "Ajouter >". Inversement, il peut décider de supprimer des rubriques du
rapport en sélectionnant dans la zone de droite les rubriques à supprimer en cochant la case à cocher

associée puis en appuyant sur le bouton "< Retirer".

Affichage des rubriques images

 Le bouton « Ajouter les rubriques images » permet d’ajouter à la sélection courante l’ensemble des
    rubriques de type « images » appartenant aux stations des rubriques déjà sélectionnées.

 Le bouton « Supprimer les rubriques images » permet de retirer à la sélection courante l’ensemble des

    rubriques de type « images ».

                                                    35

---

## Page 36

MANUEL UTILISATEUR

                                                  Aquaréel

Une fois les rubriques ajoutées, il peut modifier la valeur saisie pour chacun des éléments suivants :

• quantificateur du pas de temps,

• unité de temps du pas de temps associé,

• Pour les cumuls et les gradients

• profondeur du calcul,

• Unité de temps de la profondeur associée.

• Pour les débits

• Courbes utilisées pour le calcul

• Courbes utiles sur la période

• Courbes valides sur la période

• Une courbe spécifique sur la période

                                                 36

---

## Page 37

MANUEL UTILISATEUR

                                                        Aquaréel

                   4.4.3.6 Zone de boutons d'affichage

En fonction du type de rapport, la zone de bouton d'affichage varie.

Pour le cas d'un rapport de type "tableau", l'appui sur le bouton "Afficher le tableau" permet de fermer la
zone de recherche et d'afficher le rapport demandé sous la forme d'un tableau de mesures. (voir annexe

rapport tableau)

Pour le cas d'un rapport de type "graphique" ou "graphiques superposés", l'appui sur le bouton
"Sélectionner les seuils" permet de déclencher l'ouverture de la fenêtre pop-up de sélection des seuils à
afficher. L'appui sur le bouton "Afficher le graphique" permet la fermeture de la zone de recherche et

l'affichage du rapport demandé. (Voir annexe rapport graphique)

Il est possible à tout moment, suite à l'affichage du rapport de modifier les critères de recherche et d'éditer
un nouveau rapport en rouvrant la zone concernée en appuyant sur l'objet graphique suivant :

                   4.4.3.7 Sélection des seuils :

Une fois les rubriques sélectionnées, il est possible de rajouter sur les rapports graphiques les seuils relatifs

à chaque rubrique en appuyant sur le bouton "Sélectionner les seuils".

La fenêtre pop-up s'affichant contient la liste des seuils disponibles en relation avec les rubriques du
rapport.

L'utilisateur peut alors choisir les seuils à conserver dans le rapport en cochant la case précédant le libellé

du seuil.

Pour faciliter sa compréhension, chaque seuil est précédé de la station et du capteur concerné.

Une fois la liste de seuils sélectionnée, l'utilisateur peut soit la valider en appuyant sur le bouton "Valider"
soit l'annuler en appuyant sur le bouton "Fermer", ce qui aura pour effet de fermer la fenêtre pop-up.

                                                       37

---

## Page 38

MANUEL UTILISATEUR
                                                    Aquaréel

             4.4.4 Particularités - Fonctionnement des rapports graphiques

                 4.4.4.1 Zoom

Deux méthodes sont possibles pour réaliser un zoom :

• Lorsque la souris est sur le graphique une action de la molette vers l’avant permet un zoom avant et

    une action molette vers l’arrière permet un zoom arrière.

• Il suffit de réaliser au sein d'un graphique un carré de sélection en se positionnant sur un point du
    graphique, en laissant simultanément appuyés le bouton gauche de la souris et la touche ctrl du clavier.
    La zone sélectionnée apparaît en gris.

Pour les rapports de type graphe, l'opération de zoom avant est automatiquement réalisée sur l'ensemble

des graphes du rapport.

                 4.4.4.2 Retour à la vue initiale

Il suffit de faire un clic du bouton droit de la souris pour afficher le menu contextuel et de sélectionner la
commande « Fit to view »

                 4.4.4.3 Affichage des informations sur un point :

                                                   38

---

## Page 39

MANUEL UTILISATEUR

                                                        Aquaréel

Un pointeur constitué de 2 axes permet de visualiser sous forme d’info- bulle les informations relatives aux
courbes affichées le graphe :

Pour le graphe simple : par défaut une info bulle est affichée par courbe et est composée du nom de la
station et de sa rubrique, de la date et de la valeur de la mesure. L’affichage de chaque info bulle peut être

activée ou désactivée par l’utilisateur via les cases à cocher situées en pied de graphe.

Pour le graphe superposé : 2 infos bulles apparaissent et présentent respectivement les valeurs des
abscisses (horodatage) et ordonnée (mesures) correspondant à la position du pointeur de la souris.

                                                       39

---

## Page 40

MANUEL UTILISATEUR
                                                  Aquaréel

             4.4.5 Rapport tabulaire avec rubrique Image

Dans le mode tabulaire chaque rubrique de type image est représentée par une colonne à part entière.

    • Dans les colonnes des rubriques de type image, le pictogramme indique la présence d’une image
       pour la station à cet horodatage.

    • Le clic sur le pictogramme ouvre l’explorateur d’image avec comme présélection :

           o La période correspond à la date de début et de fin du rapport actuel.

           o L’item sélectionné dans la liste correspond à l’image du pictogramme.

             4.4.6 Rapport graphique

• Sur la courbe les pictogrammes indiquent la présence d’images pour la station à cet horodatage.

                                                 40

---

## Page 41

MANUEL UTILISATEUR

                                                  Aquaréel

• Le clic sur un pictogramme ouvre l’explorateur d’image avec comme présélection :

       o La période correspond à la date de début et de fin du rapport actuel.

       o L’item sélectionné dans la liste correspond à l’image du pictogramme cliqué sur la courbe.

• La case à cocher placée en entête de l'écran des graphes permet de désactiver/activer l’affichage des
    pictogrammes des images.

                                                 41

---

## Page 42

MANUEL UTILISATEUR
                                                  Aquaréel

         4.5 Visionneuse des images et des vidéos

             4.5.1 Présentation

Cette fonctionnalité permet de visualiser les images et les vidéos des stations. Elle est déclenchée suite à
l'appui sur le bouton "Visualiser" de l’écran d’accueil.

             4.5.2 Recherche des images

Situé en haut de l’écran, la section de recherche permet de sélectionner les images selon les critères
suivants :

    • La période glissante en indiquant une profondeur de temps ou fixe en indiquant une date début et

       de fin.

    • Toutes les stations ou la station de collecte des images.
    • Le type de fichier : tous, image ou vidéo.

                                                 42

---

## Page 43

MANUEL UTILISATEUR

                                                      Aquaréel

              4.5.3 La barre d’action de la visionneuse des images et des vidéos

La section située en dessous de la recherche permet de réaliser les actions suivantes :

    • Le bouton « Actualiser » permet de relancer la recherche et de mettre à jour la liste des images en
        fonction du filtre actuel.

    • Le bouton « Télécharger tout » permet de télécharger sur le poste de l’utilisateur l’ensemble des

        images actuellement affichées.

    • Le bouton « Liste/Vignette » permet de basculer le mode d’affichage de la liste des images.

    • Le bouton « Lecture/Stop » permet de lancer le diaporama des images actuellement affichées.

    • Les images retournées par la recherche sont affichées par date décroissante.

    • La visionneuse propose deux modes d’affichage de la liste des images et vidéos correspondant aux

        résultats de la recherche :

            ✗ Texte : composée de la date de l’image, le nom de sa station, la taille de l’image et
                d’informations descriptives complémentaires. C’est le mode par défaut d’affichage.

            ✗ Texte et vignette : composée de la date de l’image, le nom de sa station, la taille de l’image,
                d’informations descriptives complémentaires et de la miniature de l’image.

La bascule d’un mode d’affichage à l’autre se fait par l’intermédiaire du bouton « Liste/Vignette ».

                                                     43

---

## Page 44

MANUEL UTILISATEUR
                                                       Aquaréel

              4.5.4 Visualisation des images

Le clic sur un item de la liste affiche l’image dans le panneau d’aperçu.

Dans ce panneau d’aperçu l’image peut être déplacée (clic + déplacement souris) et peut être zoomée

(mollette souris).

Les boutons du panneau d’aperçu permettent de réaliser les actions suivantes :

• Le bouton « Précèdent » permet d’afficher dans le panneau d’aperçu l’image précédente dans la liste
    des résultats de la recherche.

• Le bouton « Suivant » permet d’afficher dans le panneau d’aperçu l’image suivante dans la liste des
    résultats de la recherche.

• Le bouton « Play » permet de lancer le diaporama des images (défilement automatique).

• Le bouton « Télécharger » permet de télécharger sur le poste de l’utilisateur l’image actuellement
    affichée dans le panneau de d’aperçu.

• Le bouton « Initialiser » permet de remettre à zéro les déplacements et les zooms appliqués sur
    l’image.

                                                     44

---

## Page 45

MANUEL UTILISATEUR
                                                  Aquaréel

         4.6 Acquittement des alarmes

             4.6.1 Présentation

Cette fonctionnalité permet de gérer l'affichage,l'acquittement et la fermeture des alarmes de type
hydrologique de l'application.

Cette fonctionnalité, transverse avec celle du module de surveillance, est explicitée dans le chapitre
"Acquittement des alarmes".

             4.6.2 Composition de l’interface

La fonctionnalité est déclenchée suite à l'appui sur le bouton "Acquitter les alarmes hydrologiques".

La couleur du bouton varie en fonction de l’état maximal des alarmes

• vert si toutes les alarmes hydrologiques sont acquittées et fermées

• Orange : si au moins une alarme ouverte acquittée non fermée

• Rouge : si au moins une alarme ouverte non acquittée

             4.6.3 Utilisation de l’interface

N/A

             4.6.4 Particularités

Seules les alarmes hydrologiques sont reprises dans cette interface.

                                                 45

---

## Page 46

MANUEL UTILISATEUR
                                                  Aquaréel

         4.7 Gestion du mode « Crise »

             4.7.1 Présentation

Cette fonctionnalité permet de gérer un mode d'exécution dit "de crise" au sein de l'application cliente. Elle
est accessible par défaut à la connexion de l'application ou via le menu « Exploitation / Tableau des

mesures courantes » ou en appuyant sur le bouton « Mesures ».

Ce mode permet :

• d'inhiber la transmission des alarmes aux opérateurs d'astreinte pour leur permettre un acquittement
    systématique depuis le client.

• De retarder la réalisation des taches d’administration coûteuses (exécution des purges,…) pour
    conserver toutes les ressources du système au suivi temps réel.

             4.7.2 Composition de l’interface

Elle est intégrée en haut à droite du tableau des mesures courantes sous la forme d'un bouton.

             4.7.3 Utilisation de l’interface

Le mode crise est déclenché manuellement lors d'un épisode pluviométrique important par un utilisateur

de l'application cliente via l'appui sur le bouton "Activer mode Crise".

Le bouton change alors de libellé "Désactiver mode crise" et se colore en rouge.

Le mode de crise peut ensuite être désactivé de deux manières :

• par l'appui sur le bouton "Désactiver mode crise",

• automatiquement suite à un temps défini dans les paramètres de l'application (Paramètre "Durée du
    mode crise (minute)" de code IHM.DUREE_MODE_CRISE) calculé par rapport à la date de

    déclenchement du mode.

                 4.7.3.1 Particularités
N/A

                                                 46

---

## Page 47

MANUEL UTILISATEUR
                                                   Aquaréel

     5 Module de surveillance

Il se compose des entrées suivantes :

• Surveillance générale de l’application,

• Filtrage des événements liés aux échanges d’import/export,

• Filtrage des événements liés aux collectes de mesures issues des stations,

• Filtrage des événements liés au système,

• Acquittement des alarmes de surveillance,

• Export des événements.

         5.1 Surveillance générale de l’application

             5.1.1 Présentation

La majorité des opérations réalisées dans l'application est tracée sous la forme d'événements. Ces

événements sont traités sous forme de séquence d'exécution successive permettant de suivre
l'avancement des étapes fonctionnelles de l'application en partant d'un événement d'origine vers un
événement de fin.

Par exemple, pour la séquence relative à un export de données, on aura le chaînage d'événements suivants
:

    • Lancement manuel de l'export <export1>,

    • Début de l'export <export1>,

    • Fin de l'export <export1>.

Cette fonctionnalité permet de réaliser la consultation des différents événements liés au fonctionnement
de l'application via un moteur de recherche multicritères.

             5.1.2 Composition de l’interface

L'interface graphique de surveillance générale est composée :

• d'une zone de filtres principale,
• d'une zone de filtres secondaire, en dessous de la zone de filtre principale,

                                                  47

---

## Page 48

MANUEL UTILISATEUR
                                                  Aquaréel

• d'indicateurs du niveau de sévérité maximum des événements applicatifs répartis par type (Profil de

    collecte, Import/Export et Système) situés en haut de l'interface.

• d'une zone de boutons située en dessous des indicateurs comportant les boutons "Actualiser",
    "Acquitter les alarmes" et "Exporter les événements".

• du tableau des événements filtrés,

• d'une zone de navigation à travers les événements placée en bas de l'interface.

             5.1.3 Zone de filtres principale :
Elle est composée de :

• filtre temporel,

• filtre de niveau,

• filtre dit "d'origine" des événements.

                                                 48

---

## Page 49

MANUEL UTILISATEUR

                                                    Aquaréel

Les filtres temporels sont liés à la détermination d'une profondeur (filtre de type "Depuis" suivi d'un
quantificateur et d'une unité de temps) ou d'une période de temps (filtre de type "Entre" suivi des dates et

horaires de début et de fin de recherche).

ou

Cette zone est également composée de la sélection d'un niveau de sévérité minimum des événements
et/ou de la sélection d'un module de rattachement d'origine de l'événement.

Ainsi, 4 niveaux de sévérité croissante sont définis dans la recherche :

• Information,

• Notification,

• Important,

• Sévère (alarme).

La recherche concerne alors tous les événements dont la sévérité est supérieure ou égale à celle du filtre de
recherche sélectionné.

Les modules de rattachement d'origine des événements sont classés en 4 catégories :

• Profil de collecte (événements liés aux différentes collectes réalisées),

• Echanges (événements liés aux imports/exports de mesures),

• Système (autres événements)

     - événements liés aux données techniques

    - événements internes de l'application tels que la connexion/déconnexion, affinage, ...),

• Tous les événements.

Le dernier module regroupe les événements des 3 précédents.

                                                   49

---

## Page 50

MANUEL UTILISATEUR

                                                        Aquaréel

                   5.1.3.1 Zone de filtres secondaire :

Cette zone est active suite à la sélection d'un module de rattachement d'origine différent de "Tous les

événements".

Elle contient une arborescence (ou tree-view) d'items relatifs au module sélectionné.

Le détail de chaque arborescence est explicité dans les paragraphes suivants.

                   5.1.3.2 Indicateurs de sévérité :

Les indicateurs de sévérité caractérisent l'état maximal de sévérité correspondant aux modules de
rattachement d'origine respectif.

                   5.1.3.3 Zone de boutons :

Cette zone contient les 3 boutons "Actualiser", "Acquitter les alarmes" et "Exporter les événements".

Le bouton "Actualiser" permet de rafraîchir l'interface et de relancer la recherche avec les critères de

filtrage sélectionnés.

Par défaut, l'interface se rafraîchit automatiquement en fonction du paramètre applicatif "Intervalle de
rafraîchissement de l'IHM" (Code IHM.RAFRAICHISSEMENT) configurable au sein de l'application.

Le bouton "Acquitter les alarmes" permet de réaliser la consultation et l'acquittement des alarmes de

l'application.

Sa valeur varie selon les mêmes principes de l’indicateur de sévérité

Le comportement de cette interface est décrit ci-dessous dans le paragraphe "Acquittement des alarmes".

Le bouton "Exporter les événements" permet de réaliser le téléchargement des événements filtrés sous la
forme d'un fichier au format CSV.

Le détail du fichier généré est présenté dans le chapitre "Export des événements".

                                                       50

---

## Page 51

MANUEL UTILISATEUR

                                                       Aquaréel

                  5.1.3.4 Tableau des événements :

Cette zone contient l'ensemble des événements correspondant au filtre de recherche en fonction de la

pagination mise en place (cf. paragraphe suivant).

Chaque ligne est composée des éléments suivants :

• indicateur de détail (optionnel),

• indicateur de chaînage (optionnel),

• Date de l'événement,

• Libellé de l'événement

Chaque ligne possède également une couleur spécifique.

L'indicateur de détail est une flèche indiquant que l'événement affiché possède des événements enfants
qui lui sont chaînés. Si cet indicateur n'est pas présent, aucun événement n'est chaîné.

L'indicateur indique que seul l'événement d'origine est affiché, il est possible de consulter les
événements rattachés en double-cliquant sur la ligne.

L'indicateur indique que l'événement d'origine est "déplié", les événements rattachés sont affichés en

dessous :

L'indicateur de chaînage , s'il est présent, indique que la séquence d'événements est en cours et n'est
pas encore terminée (absence d'événement de fin de chaînage).

Le code couleur de la ligne suit la logique suivante :

• Si l'événement est un événement d'origine, il prend automatiquement la couleur correspondant à la

    sévérité maximale des éléments « enfants » du chaînage en cours. Les évènements d’origine relatifs
    aux profils de collectes ont un fonctionnement différent décrit ci-après.

• Sinon, il prend la couleur correspondant à la sévérité de l'événement présenté.

• Les profils de collecte adaptent les codes couleurs suivants

• Vert : si aucun événement enfant de niveau sévère (pas d’alarme station)

• Orange : si au moins un événement de niveau sévère (au moins 1 alarme station)

• Rouge : si profil de collecte en alarme (seuil de stations en alarme dépassé)

                                                     51

---

## Page 52

MANUEL UTILISATEUR

                                                       Aquaréel

Le tableau de correspondance suivant reprend le code couleur de chaque sévérité :

                          Couleur Sévérité
                 Noir Information

                 Vert Notification
                 Orange Important

                 Rouge Sévère (alarme)

                  5.1.3.5 Zone de navigation sur le tableau :

On appelle page le groupage d'événements par lot de 50 items.

Cette zone contient les indicateurs de pagination des données au sein du tableau des mesures courantes.
Elle se compose des boutons "<<", "<", ">" et ">>" et d'un libellé décrivant le numéro de page courante

relativement au nombre total de pages. Par exemple, "2/5" indique que l'on se situe sur la seconde page
des événements par rapport aux 5 pages que comporte le filtre de recherche réalisé.

• Le bouton "<<" permet de se déplacer à la première page.

• Le bouton ">>" permet de se déplacer à la dernière page.

• Le bouton "<" permet de se déplacer à la page précédente si existante, sinon le bouton est grisé.

• Le bouton ">" permet de se déplacer à la page suivante si existante, sinon le bouton est grisé.

• L’utilisateur peut saisir le numéro de la page qu’il veut afficher

                  5.1.3.6 Utilisation de l’interface

Suite à la sélection des différents critères de recherche, le tableau des événements est automatiquement
mis à jour avec la liste des événements d'origine correspondants triés par ordre chronologique inverse, du
plus récent au plus ancien.

Par défaut, tous les événements sont "pliés", l'utilisateur peut décider de consulter la séquence
correspondante en double-cliquant sur l'événement d'origine choisi.

Il peut naviguer facilement sur la liste des événements via la zone de pagination.

L'interface est réactualisée automatiquement pour conserver la notion d'affichage "temps réel" : à chaque
affichage, les nouveaux événements sont rajoutés en début de liste.

Il est à noter que la sélection d'un critère de filtre temporaire ne réactualise pas directement l'interface car
elle nécessite la sélection ou la saisie de plusieurs éléments successifs (quantificateur, unité de temps, date,

                                                      52

---

## Page 53

MANUELUTILISATEUR

                                              Aquaréel

...). Il faut alors appuyer sur le bouton "Actualiser" pour lancer la recherche en prenant en compte l'ensemble
des critères.

Il est à noter que lors de la sélection d'une station dans le filtrage des événements de collecte, seuls les
événements relatifs à la station sont affichés dans un souci de clarté et de compréhension de l'interface.

                                             53

---

## Page 54

MANUEL UTILISATEUR

                                                      Aquaréel

                  5.1.3.7 Particularités

Par défaut, les critères de recherche sont positionnés sur les valeurs suivantes :

                              Critère Valeur

                 Filtre temporel Depuis 1 jour
                 Niveau de sévérité Information

                 Origine Tous les événements

Le quantificateur de recherche du filtre temporel est stocké comme paramètre applicatif "Profondeur de

recherche des événements exprimée en jour" (Code SURVEILLANCE.PROFONDEUR_RECHERCHE)
configurable au sein de l'application.

                                                     54

---

## Page 55

MANUEL UTILISATEUR
                                                  Aquaréel

         5.2 Filtrage des événements d’échanges

             5.2.1 Présentation

Cette fonctionnalité permet de réaliser des filtres sur les imports/exports de données suite à la sélection du
module de rattachement d'origine "Echanges".

             5.2.2 Composition de l’interface

Ainsi, pour les "échanges", l'arborescence est décomposée en deux niveaux entre les imports et les exports
de données.

Au premier niveau, on retrouve les entrées "Exports" et "Imports".

Au second niveau, on retrouve la liste des différents échanges catégorisés par type d'échange.

Les entrées "Exports" et "Imports" sont précédées d'un indicateur d'état, correspondant à celui du dernier
échange réalisé de ce type. Par exemple, l'indicateur d'échange précédant "Exports" correspond à
l'indicateur d'état du dernier export réalisé.

Chaque échange est composé

• D’un indicateur d'état,

• du nom de l'échange associé

• de sa date de dernière réalisation.

L'indicateur d'état correspond pour un échange donné au niveau de sévérité de la dernière opération
réalisée sur cet échange.

                                                 55

---

## Page 56

MANUEL UTILISATEUR

                                                     Aquaréel

             5.2.3 Utilisation de l’interface
L'utilisateur applique un filtre suite à la sélection d'un échange qui déclenche automatiquement la mise à
jour du tableau des événements.

             5.2.4 Particularités

Le message des évènements de fin d’échange fournissent, pour chaque échange réalisé, le détail des
informations traitées:

    • Exemple pour un export XML SANDRE :

    • Exemple pour un import XML LNS :

    • Pour les exports d’images :

En cas d’architecture haute disponibilité, les événements d’échange pris en charge en secours par le site

passif sont présentés de la même façon avec en plus, la mention « secours », affichée.

                                                    56

---

## Page 57

MANUEL UTILISATEUR
                                                  Aquaréel

         5.3 Filtrage des événements de collecte

             5.3.1 Présentation

Cette fonctionnalité permet de réaliser des filtres sur les profils de collecte suite à la sélection du module
de rattachement d'origine "Profil de collecte".

             5.3.2 Composition de l’interface

Ainsi, pour les "profils de collecte", l'arborescence est décomposée en deux niveaux des différents profils

de collecte et des stations rattachées.

Chaque profil de collecte est composé

• d'un indicateur d'état,

• de son nom,

• de la date de la dernière collecte réalisée

• éventuellement d'un indicateur de collecte rapide pour les profils RTC

Chaque station est composée

• d'un indicateur d'état,

• du libellé de la station et de son canal de collecte

• du taux d’échec des dernières collectes pour les profils de collecte radio.

                                                 57

---

## Page 58

MANUEL UTILISATEUR

                                                        Aquaréel

L'indicateur d'état correspond au niveau de sévérité de la dernière collecte.

Nota : Pour les stations, l’indicateur d’état correspond à l’état de la dernière collecte réalisé sur la station

quel que soit le profil.

Pour les collectes RTC, l'indicateur de collecte rapide indique que la planification en cours pour le profil

de collecte est la planification de collecte rapide (fréquence de collecte plus élevée).

                                                       58

---

## Page 59

MANUEL UTILISATEUR
                                                       Aquaréel

Le taux d’échec des dernières collectes pour les stations Radio est calculé en fonction des résultats des

précédentes collectes et en fonction des paramètres « fréquence de collecte », «profondeur d’échec »
dans le menu de paramétrage des profils

Un menu contextuel est disponible pour les stations de type Radio permettant de consulter le graphe de
taux d'échec Radio de la station via l'entrée "Graphe Radio".

La période du graphe est fournie d’après le paramètre applicatif « Profondeur (mn) de données du graphe

radio exprimée en profondeur relative ». La profondeur de calcul utilisée est celle du paramètre
«profondeur d’échec » dans le menu de paramétrage des profils.

              5.3.3 Utilisation de l’interface
L'utilisateur applique un filtre suite à la sélection d'un profil de collecte ou d'une station rattachée à un
profil qui déclenche automatiquement la mise à jour du tableau des événements.

Le clic sur l'entrée du menu contextuel réalise l'ouverture d'une fenêtre pop-up comprenant le graphe du
taux d'échec radio lors des dernières collectes pour la station sélectionnée. L'utilisateur peut fermer la

fenêtre ensuite via le bouton "Fermer".

              5.3.4 Particularités

Une station peut être présente à la fois au sein de deux profils de collecte. Les événements filtrés pour une
station correspondent à l’ensemble des évènements de collecte de cette dernière quel que soit le profil de
rattachement sélectionné.

Lorsque la collecte a réussi des évènements relatifs aux collectes de stations fournissent un message

contenant les informations suivantes :

• média utilisé (RTC, GSM, IP ou radio)

                                                     59

---

## Page 60

MANUEL UTILISATEUR

                                                      Aquaréel

• Nom de la station

• Heure (TU) de la donnée collectée la plus récente

• Pour les collectes RTC et radio :

- Code de chaque capteur et valeur la plus récente associée

- Durée de la collecte (uniquement pour le RTC)

• Pour la collecte IP :
    ◦ Nom du frontal IP

    ◦ Nom du fichier xml reçu

                                                     60

---

## Page 61

MANUEL UTILISATEUR

                                                       Aquaréel

         5.4 Filtrage des événements système

Focus sur la maintenance et la surveillance du système :

L’application Aquaréel est dotée de processus internes de surveillance et de maintenance permettant de

détecter des dysfonctionnements et de garantir un fonctionnement optimal de l’application. Les résultats
et détections liés à ces processus sont stockés dans le journal des événements du menu de surveillance.
Certaines détections conduisent à la génération d’alarmes.

Les processus de surveillance du système comprennent
    • La supervision de l’application : Voir le paragraphe supervision de l’application

    • Les purges et archivages : Voir le paragraphe purge et archivage
    • Les échecs de planification:

 L’ensemble des tâches automatiques et periodiques d’Aquaréel - c’est-à-dire les taches de concentration
( collecte, échanges et affinage), les taches de maintenance et de surveillance de la base - sont lancées
par le planificateur de la base de données. En cas d’échec dans l’exécution d’une tâche, une alarme est

générée. L’alarme est fermée lorsque la planification s’exécute à nouveau correctement.
→ Les alarmes persistantes ou fréquentes doivent être signalées au support technique

    • La maintenance de la base de données
Une procédure est exécutée toutes les nuits pour maintenir les performances ( maintenance des index et

recalcul des statistiques) et vérifier l’intégrité des objets de la base de données. En cas de
dysfonctionnements rencontrés tels que des problèmes d’intégrité des objets ou des exceptions dans
l’exécution des opérations une alarme est générée. L’alarme est fermée lorsque le problème a disparu.

→ La génération d’une alarme de maintenance doit conduire à solliciter le support technique
    • La surveillance de la base de données :

Des processus surveillent en permanence le bon fonctionnement du système. Il s’agit de suivre en temps
réel le fonctionnement de la base de données pour être en mesure de détecter des anomalies et de les
remonter à l’utilisateur dans le journal des événements.

Les éléments surveillés sont :

     ◦ Les blocages en base de données : détecte des processus (requêtes) bloquants sur la base de
         données et en supprime certains. Une alarme est générée en cas de nombre important de
         détections ou en cas de déblocage.

     ◦ Les requêtes anormalement longues :détecte des requêtes anormalement longues en cours
         d’exécution sur les bases applicatives du serveur. Une alarme est générée en cas de nombre
         important de détections sur une courte période

     ◦ Les taux d’occupation des disques: détecte si l’espace disque disponible sur le serveur est
         insuffisant. Génère une alarme lorsque l’espace disque disponible devient très insuffisant.
     ◦ Les temps de latence des disques : détecte les lenteurs d’écriture et de lecture sur les disques du

         serveur. Génère une alarme lorsque en cas de latence élevée persistante.
     ◦ Les opérations de maintenance anormalement longues lorsque la durée de certaines opérations
         dépasse la valeur de seuils fixés dans les paramètres de l’application.

                                                      61

---

## Page 62

MANUEL UTILISATEUR

                                                       Aquaréel

          ▪ « Seuil d'avertissement de durée anormalement longue de recalcul de statistiques en base »

          ▪ « Seuil d'avertissement de durée anormalement longue de vérification d'intégrité en base »
      ◦ Les affinages anormalement longs : lorsque la durée d’affinage dépasse la valeur du « Seuil
          d'avertissement de durée anormalement longue d'affinage en base » dans les paramètres de

          l’application.
      ◦ Les échecs de réplications : lorsque la réplication est en échec. Une alarme est générée si l’échec
          est persistant. Voir la gestion de la réplication

      ◦ Les erreurs d’exécution des services Windows : Lorsque le service Windows rencontre une
          erreur d’exécution non gérée d’un point de vue métier.

 → La génération d’une alarme de surveillance de la base de données doit conduire à solliciter le
 support technique ( voir document d’exploitation)

              5.4.1 Présentation

Cette fonctionnalité permet de réaliser des filtres sur les événements Système (où évènements autres que
collecte et échange) suite à la sélection du module de rattachement d'origine "Système".

              5.4.2 Composition de l’interface

Ainsi, pour le "système", l'arborescence est décomposée en 4 items présents sous l'entrée principale
"Filtres Système" :

• Affinage,

• Détection,

• Maintenance,

• Purge / Archivage,

• Réplication,

• Supervision,

• Planification,

                                                      62

---

## Page 63

MANUEL UTILISATEUR

                                                     Aquaréel

• Divers.

             5.4.3 Utilisation de l’interface

L'utilisateur applique un filtre suite à la sélection d'une des 4 entrées.

L'utilisateur obtient donc pour l'entrée :

    • "Affinage" la liste des événements liés aux opérations d'affinage de mesures et images issues de la
        base tampon.

Le système ne stocke que des évènements d’affinage que lorsque des valeurs non conformes ont été
détectées (valeur aberrante, horodatage invalide, panne capteur…) (voir principe d’acquisition et de

stockage)

Il indique également le nombre de mesures traitées en base tampon et le nombre réellement insérées en
base

         Pour l’affinage des images, le nombre d’images insérées en production par rapport au nombre
         traité est indiqué dans les événements

    • « Détection » : tous les dysfonctionnements et alarmes remontés par les procédures de monitoring

        de la base de données et concernant l’état de la plateforme :

            o espace disque insuffisant

            o temps de traitement élevé sur les disques ( latence)

            o requêtes anormalement longues

                                                    63

---

## Page 64

MANUEL UTILISATEUR

                                                    Aquaréel

            o requêtes bloquées

            o Déblocage de requêtes

            o Affinages anormalement longs

    • « Maintenance » : tous les évènements et avertissements remontées par la procédure quotidienne

        de maintenance sur la base de données.

         Erreur système – contactez votre support: Statistiques sur l’index...
         Erreur système – URGENT contactez votre support: Intégrité de la table...
         Erreur système – contactez votre support: Réorganisation de l’index...

         Erreur système – contactez votre support: Catalogue de la base...
         Erreur système – contactez votre support : Allocation de la base...
         Erreur système – contactez votre support: Reconstruction de l’index ...

    • « Purge / Archivage » :tous les évènements et avertissements remontées par les opérations de

        purge et d’archivage.

    • « Réplication » : tous les évènements et avertissements concernant l’état de la réplication

            o Demande/echec/fin de réinitialisation

            o Echec de réplication

            o Alarme de réplication

    • « Supervision » : tous les événements et alarmes de supervision remontées par les modules de

        supervision

    • « Planification» : tous les évènements et alarmes remontées dans la réalisation des tâches
        planifiées

    • « Divers » la liste de tous les événements autres tels que la connexion/déconnexion des

        utilisateurs, les passages en mode crise, les alarmes hydrologiques ...

S'il sélectionne à nouveau l'entrée principale "Filtres Système", il obtient la liste globale des événements
système.

             5.4.4 Particularités

N/A

                                                   64

---

## Page 65

MANUEL UTILISATEUR
                                                    Aquaréel

         5.5 Acquittement des alarmes de surveillance

             5.5.1 Présentation

Cette fonctionnalité permet de réaliser la consultation et l'acquittement des alarmes de type
fonctionnement ou de type surveillance.

Attention ! La fonctionnalité est transverse avec celle présente dans le menu Exploitation (tableau des
mesures courantes) à la différence que les alarmes remontées sont dans ce deuxième cas de type
hydrologique uniquement.

         Focus sur les alarmes :

        Aquaréel gère 3 types d’alarmes

             Les alarmes hydrologiques (sur dépassement de seuil)
             Les alarmes de fonctionnement (dysfonctionnement des collectes ou des échanges)

             Les alarmes de surveillance, détectées par la supervision du système
             Les alarmes techniques

        3 informations d’horodatage caractérisent une alarme
             sa date d’ouverture : date de l’événement déclenchant (date dysfonctionnement,
                dépassement de seuil…)

             sa date d’acquittement : acquittement par un opérateur ou un utilisateur
             sa date de fermeture : date de retour à la normale de l’événement déclenchant ou de
                fermeture manuelle de l’utilisateur

        Ses informations d’horodatages permettent de déterminer 3 états de l’alarme :

             alarme ouverte non acquittée (rouge): alarme sans date d’acquittement
             alarme ouverte acquittée (orange): date de fermeture inconnue

             alarme acquittée fermée (vert): date d’acquittement et de fermeture connue

        Une nouvelle alarme du même type ne peut être émise tant que l’alarme d’origine n’a pas de date de
        fermeture

             5.5.2 Composition de l’interface

                                                   65

---

## Page 66

MANUEL UTILISATEUR

                                                     Aquaréel

Elle est déclenchée par l'appui sur le bouton "Acquitter les alarmes de surveillance".

La couleur du bouton varie en fonction de l’état maximal des alarmes :

• Rouge : au moins 1 alarme ouverte non acquittée

• Orange : au moins 1 Alarme ouverte acquittée

• Vert : toutes les alarmes sont fermées et acquittées

L'appui sur le bouton "Acquitter les alarmes de surveillance" provoque l'ouverture de la fenêtre pop-up
d'acquittement des alarmes.

A l’ouverture du menu les alarmes acquittées fermées (vert) ne sont pas affichées. Seules les alarmes
ouvertes non acquittée (rouge) et ouverte acquittée (orange) sont affichées.

Cette fenêtre est composée des zones suivantes :

• indicateurs d'état des alarmes par type,

• zone de critères de recherche

• zone d'affichage des alarmes,

• zone de boutons d'action.

Les indicateurs d'alarme correspondent à l'état maximal des alarmes répertorié par type.

                                                    66

---

## Page 67

MANUEL UTILISATEUR

                                                       Aquaréel

La zone de critères de recherche est composée de trois parties :

• Le menu déroulant « filtre » permettant de choisir le type d’alarme à afficher ( tous par défaut)

• la case à cocher "Afficher toutes les alarmes",

• la zone temporelle de saisie de la période de recherche,

• le bouton "Recherche".

Par défaut, la case n'est pas cochée et la saisie des dates n'est pas visible :

La sélection de la case à cocher entraîne :

• la recherche de toutes les alarmes - on prend en compte également les alarmes acquittées et fermées,

• la sélection potentielle d'une plage de temps de recherche.

La zone d'affichage des alarmes est présentée sous la forme d'un tableau des alarmes comportant les
colonnes suivantes :

• Case à cocher de sélection (pour les alarmes non acquittées et/ ou non fermée),

• Date : date de génération de l'alarme,

• Message : libellé du message de l'alarme,

• Date Acquittement : la date d'acquittement de l'alarme si acquittement réalisé par opérateur (par
    téléphone) ou l’utilisateur (par client),

• Date Fermeture : la date de fermeture de l'alarme si retour à la normale de l’élément déclenchant ou
    fermeture manuelle de l’utilisateur.

La zone de boutons se compose des 3 boutons "Acquitter", "Acquitter et Fermer" et "Exporter".

                                                     67

---

## Page 68

MANUEL UTILISATEUR

                                                      Aquaréel

              5.5.3 Utilisation de l’interface
L'appui sur le bouton "Acquitter les alarmes" provoque l'ouverture de la fenêtre pop-up d'acquittement des
alarmes.

Suite à l'affichage de la fenêtre ou à l'appui sur le bouton "Recherche", L'utilisateur peut cliquer sur une

alarme pour obtenir son détail. Il obtient les informations complémentaires :

• Type d'alarme : type parmi fonctionnement, supervision ou hydrologique,

• Module : module applicatif à l'origine de l'alarme,

• Acquitteur : informations sur la personne ayant réalisé l'acquittement de l'alarme - opérateur
    (nom+N°Tél) ou utilisateur (Prénom+Nom)

• Alarme transmissible : flag indiquant si l'alarme est transmise ou non sur serveur vocal,

• Alarme en cours de transmission : flag indiquant si l'alarme est en cours de transmission aux différents

    opérateurs d'astreinte téléphonique.

• Résultat : message transmis à l’opérateur via le serveur d’appel vocal

L'utilisateur peut décider de modifier les critères de recherche puis de lancer une nouvelle recherche via le

bouton "Rechercher".

Il peut également décider d'acquitter ou fermer une ou plusieurs alarmes en cochant les cases
correspondant aux alarmes cibles puis d'appuyer sur le bouton "Acquitter" ou « fermer »et de valider sur

le bouton "Oui" de la fenêtre de confirmation ou d'annuler l'opération en cours en appuyant sur le bouton
"Non".

A noter que le bouton « fermer » permet, dans le cas des alarmes de surveillance, de fermer manuellement
des alarmes qui ne bénéficient pas d’un mécanisme de fermeture automatique.

Après une action d’acquittement ou de fermeture , la zone d'affichage des alarmes est alors

automatiquement réactualisée.

Par le menu contextuel, il peut sélectionner (ou désélectionner) l’ensemble des alarmes à acquitter.

L’utilisateur peut décider d'exporter les alarmes courantes de la recherche en appuyant sur le bouton
"Exporter". Ce bouton permet de réaliser le téléchargement des événements filtrés sous la forme d'un

                                                     68

---

## Page 69

MANUEL UTILISATEUR

                                                   Aquaréel

fichier au format CSV nommé par défaut Alarmes_export_ <date.csv où<date>correspond à la date du jour
au format jjMMaaaa (jour sur deux chiffres, mois sur deux chiffres, année sur quatre chiffres).

Le fichier téléchargé contient le découpage suivant :

          Numéro Colonne Correspondance

            1 Message Libellé du message d'alarme
            2 Date Date de génération de l'alarme

            3 Module Module applicatif source de la génération de l'événement.

            4 Type d'alarme Type d'alarme

Il peut fermer la fenêtre d'acquittement des alarmes en appuyant sur le bouton "Fermer".

             5.5.4 Particularités
N/A

                                                  69

---

## Page 70

MANUEL UTILISATEUR
                                                   Aquaréel

         5.6 Export des événements

             5.6.1 Présentation

Cette fonctionnalité permet de réaliser l'export des événements correspondant aux filtres de recherche de
l'interface.

             5.6.2 Composition de l’interface

Elle se compose uniquement du bouton "Exporter les événements".

             5.6.3 Utilisation de l’interface

Le bouton "Exporter les événements" permet de réaliser le téléchargement des événements filtrés sous la
forme d'un fichier au format CSV nommé par défaut Evenements_export_ <date.csv où<date>correspond à
la date du jour au format jjMMaaaa (jour sur deux chiffres, mois sur deux chiffres, année sur quatre

chiffres).

Le fichier téléchargé contient le découpage suivant.

          Numéro Colonne Correspondance
            1 Identifiant Identifiant interne de l'événement (clé unique)

            2 Message Libellé du message relatif à l'événement
            3 Date Date de génération de l'événement

            4 Type événement Module de rattachement d'origine
            5 Etat chaînage Indique si la séquence d'événements est en cours ou

                                             terminée (présence d'un événement final dans la séquence).
            6 Niveau événement Niveau de sévérité de l'événement

            7 Module source Module applicatif source de la génération de l'événement.

             5.6.4 Particularités
N/A.

                                                  70

---

## Page 71

MANUEL UTILISATEUR
                                                    Aquaréel

     6 Module de paramétrage

Il se compose des entrées suivantes :

    • Paramétrage des stations,

    • Paramétrage des profils de collecte,

    • Configuration des alarmes et des seuils,

    • Gestion des utilisateurs de l’application,

    • Paramétrage des imports de données,

    • Paramétrage des exports de données,

    • Alimentation du référentiel de l’application,

    • Configuration diverse. (voir paragraphe 7)

         6.1 Fonctionnement général des interfaces de paramétrage

De manière générale, chaque interface de « gestion » d’une entité est composée de la liste des items déjà
créés suivi d’un formulaire de saisie.

Trois actions utilisateur sont possibles sur la liste des items :

• Sélection d’un item (clic sur l’élément dans la liste),

• Ajout d’un item (menu contextuel ou appui sur le bouton « Ajouter »),

• Suppression d’un item (menu contextuel ou sélection d’un item et appui sur le bouton « Supprimer »).

Il est à noter que dans le cas d’un écran avec plusieurs onglets, les boutons « Valider » et « Annuler » sont
propres à l’onglet actif.

             6.1.1 Sélection d’un item

La sélection d’un item dans la liste permet le chargement du formulaire avec les informations

correspondantes. Cet élément est alors modifiable au sein du formulaire.

L’utilisateur peut alors valider les modifications saisies en appuyant sur le bouton « Valider » ou réinitialiser
les modifications avec les données originales en appuyant sur le bouton « Annuler ». Toute modification de
saisie doit être validée par l’utilisateur afin qu’elle soit effective via une boîte de message.

                                                   71

---

## Page 72

MANUEL UTILISATEUR
                                                        Aquaréel

Si le formulaire a été modifié par l’utilisateur et que ce dernier décide de changer d’élément dans la liste ou
de changer d’interface sans valider, une boîte de message lui demande d’enregistrer ou d’annuler les

modifications en cours. S’il sélectionne le bouton « Oui », les modifications seront réalisées et la nouvelle
interface chargée. S’il sélectionne le bouton « Non », les modifications ne seront pas prises en compte, la
nouvelle interface sera chargée.

Par défaut, lors du chargement de l’interface de paramétrage, le premier item de la liste est chargé dans le
formulaire de saisie.

Si un champ saisi n’est pas conforme aux exigences attendues, un message d’erreur est affiché en rouge à
droite de la zone de saisie correspondante et/ou en dessous des boutons de validation.

              6.1.2 Ajout d’un item

L’ajout d’un item réalise l’affichage du formulaire « vide » pour permettre la saisie d’un nouvel élément.
L’appui sur le bouton « Valider » permet l’enregistrement de l’élément, celui sur le bouton « Annuler »

permet de réinitialiser toute saisie.

              6.1.3 Suppression d’un item

La suppression d’un item réalise la suppression de l’élément sélectionné dans la liste et dont les
informations sont chargées dans le formulaire de saisie. L’utilisateur doit valider l’opération via une boîte

de message afin qu’elle soit réalisée.

                                                       72

---

## Page 73

MANUEL UTILISATEUR
                                                        Aquaréel

Suite à la suppression d’un élément, le premier élément de la liste est automatiquement rechargé.

          6.2 Gestion de l’ordonnancement dans le client

Plusieurs interfaces nécessitent l’ordonnancement de ses éléments au sein de l’application.

La solution mise en place consiste à laisser l’utilisateur insérer une valeur numérique désignant la position

de l’élément dans la liste lors de l’affichage. L’ordre réel est ensuite automatiquement recalculé.

Plusieurs cas de figures peuvent exister en fonction de la valeur de position saisie par l’utilisateur au sein de
l’application.

Si la valeur saisie est égale à 1, l’élément concerné se positionne alors comme premier élément de la liste,
tous les autres éléments sont décalés d’une position.

Si la valeur saisie est supérieure à la position du dernier élément dans la liste, l’élément concerné se place
en dernière position de la liste, sa position étant automatiquement recalculée.

Si la valeur saisie est égale à la position d’un autre élément de la liste, l’élément concerné prend la place de

l’autre élément, tous les éléments de position égale ou supérieure sont alors décalés d’un cran.

                                                       73

---

## Page 74

MANUEUTILISATEUR
   Aquaréel

  74

---

## Page 75

MANUEL UTILISATEUR
                                                      Aquaréel

         6.3 Gestion des planifications

              6.3.1 Présentation

Plusieurs fonctionnalités de paramétrage de l’application possèdent des tâches de planifications :

• Gestion des imports,

• Gestion des exports,

• Gestion des profils de collecte.

Ces tâches de planification permettent de paramétrer l’exécution des fonctionnalités listées ci-dessus.

La planification est gérée au sein d’une fenêtre spécifique du client qui est déclenchée par le bouton
« Gérer les planifications ». à partir du formulaire de saisie relatif à la fonctionnalité planifiable

La gestion des planifications est réalisée conformément au fonctionnement des interfaces de paramétrage
du client, c'est-à-dire qu’elle est subdivisée en une liste de planifications et un formulaire de saisie.

              6.3.2 Composition de la liste

La liste est composée de :

    • Libellé de planification,

    • Indicateur d’activation de la planification.

              6.3.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                 Entrée Obligatoire Fonction

         Fréquence de Oui Indicateur de fréquence de la planification
         planification
         Date de démarrage Oui Date et heure de démarrage de la planification

                                                     75

---

## Page 76

MANUEL UTILISATEUR

                                                        Aquaréel

         Répéter Non Période de répétition de la tâche associée à la planification en
                                                 fonction de la fréquence choisie (ex : Répéter toutes les 5
                                                 minutes).

              6.3.4 Utilisation du formulaire

L’utilisateur doit saisir la fréquence de planification parmi celles proposées, sélectionner sa date de
démarrage puis potentiellement son activation ou non.

Les fréquences proposées sont les suivantes :

                   Fréquence Fonction

         Une seule fois Exécution de la tâche associée une seule fois à la date indiquée.

         Chaque minute Exécution *écurrente toutes les X minutes à partir de la date
                                        indiquée.

         Chaque heure Exécution récurrente toutes les X heures à partir de la date
                                        indiquée. *

         Chaque jour Exécution récurrente toutes les X jours à partir de la date indiquée.
                                        *

         Chaque semaine Exécution récurrente toutes les X minutes à partir de la date
                                        indiquée. *

         Chaque mois Exécution récurrente toutes les X minutes à partir de la date
                                        indiquée. *

                      * Dans ce tableau, « X » correspond à la valeur saisie par l’utilisateur pour le champ « Répéter » ; ce champ n’existe que pour les
                      planifications cycliques.

L’horodatage de démarrage permet de déterminer le début d’exécution de la planification. Cette
information associée à l’information de fréquence fixera les horodatages d’exécution de la tâche planifiée.

En fonction de la sélection, une phrase explicative précise le mode d’exécution de la planification.

Suite à validation des planifications (bouton « Valider »), puis fermeture de la fenêtre (bouton « Fermer »),
les planifications générées sont automatiquement affichées dan l’interface de gestion « parente ».

                                                       76

---

## Page 77

MANUELUTILISATEUR
                                              Aquaréel

            6.3.5 Particularités :

La valeur par défaut de la période de répétition est égale à un.

La valeur par défaut de la fréquence est l’heure.

La valeur de période de répétition est un entier strictement supérieur à 0.

Une planification ne peut pas être associée à un élément en cours de création. Cet élément doit
obligatoirement avoir été auparavant enregistré au sein de l’application.

                                             77

---

## Page 78

MANUEL UTILISATEUR
                                                    Aquaréel

         6.4 Paramétrage des stations

Cette entrée comprend les fonctionnalités suivantes :

• Gestion des stations,

• Gestion des capteurs,

• Gestion des rubriques et des seuils,

• Gestion des courbes de tarage.

• Gestion des rubriques techniques et des seuils

         6.5 Gestion générale des stations

             6.5.1 Présentation

Cette interface permet la gestion des différentes stations présentes dans l’application.

Elle est accessible via le menu « Paramétrage / Stations et capteurs » ou en appuyant sur le bouton
« Stations » en choisissant l’onglet « Informations générales Station ».

             6.5.2 Composition de la liste

La liste est composée uniquement du libellé de chaque station.

Elle est présente sur le bandeau de gauche du client.

             6.5.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :
             Entrée Obligatoire Fonction

      Informations Station
      Nom Oui Libellé de la station

      Nom phonétique Non Nom phonétique utilisé pour la génération des messages
                                          vocaux.

      Description Non Texte libre descriptif de la station
      Date de mise en Non Date de la première mise en service de la station
      service

                                                   78

---

## Page 79

MANUEL UTILISATEUR

                                                Aquaréel

Type de station Oui 2 types de stations :
                                          • paratronic CPL

                                          • paratronic LNS

Station affichée Oui Ordre d’affichage de la station en prenant en considération
après l’ordre amont-aval sur l’ensemble des stations.
                                      information utilisée pour le tri des stations dans le tableau des

                                      mesures courantes
                                      Particularité : Suite à une opération
                                      (ajout/modification/suppression) sur une station, l’ordre des

                                      stations est automatiquement mis à jour.
Localisation

Les informations de localisation permettent la géolocalisation (Coordonnées) ou de constituer des
critères de regroupement pour l’affichage des stations dans le tableau des dernières mesures (bassin
de regroupement et cours d’eau)
Bassin de Oui affectation de la station à un bassin de regroupement

regroupement
Cours d’eau Oui Cours d’eau rattaché à la station.

                                      Le choix du cours d’eau dépend du bassin choisi. chaque cours
                                      d’eau est rattaché à un bassin (voir §…)

Longitude Non Exprimée dans le système décimal (degré) en projection
                                      WGS84
Latitude Non Exprimée dans le système décimal (degré) en projection

                                      WGS84
Informations pour la Supervision

Code hydrologique Oui Code hydrologique (Hydro2) du site utilisé pour les exports de
                                      mesures au format DP ou pour l’import de courbes de tarage

                                      Particularité : Deux stations ne peuvent pas avoir le même
                                      code hydrologique, le code hydrologique ne pouvant être nul.

Code Hydro 3 Non Code hydrologique (Hydro3 ou météo) de la station utilisé
                                      pour les imports de fichiers au format XML-LNS et pour les
                                      collectes IP/XML-LNS

Code Pre Oui Code utilisé pour identifier la station dans les exports aux
                                      formats .Pre et zrx
                                      Entier à 4 chiffres

Horodatage Station Non Indicateur du référentiel de gestion des dates dans la station
                                      (HL : Heure locale, TU : Temps Universel).

                                      Utilisé pour réaliser la conversion en TU si nécessaire lors de la
                                      mise en production de la mesure

Fuseau horaire Oui Fuseau horaire utilisé par la station.
                                      Utilisé pour la conversion en TU si nécessaire lors de la mise
                                      en production de la mesure

                                               79

---

## Page 80

MANUEL UTILISATEUR

                                                 Aquaréel

Pas de temps Oui Pas de temps de la station correspondant au pas de temps
                                       d’acquisition des mesures au sein de la station.

                                        Le système stocke l’ensemble des données à un pas de temps
                                       unique (5mn) paramétré lors de la mise en service de
                                       l’application. Si le pas de la station temps différent de celui du
                                       système, les données collectées sont transformées.

Ne pas transformer Non Indicateur de non-transformation des mesures au pas de
le pas de temps temps du système pour les pas de temps multiple de celui du
                                       système.

                                       Particularité : Le champ n’est disponible que si le pas de temps

                                       sélectionné par l’utilisateur est un multiple du pas de temps
                                       système différent de lui-même (Ex : Pas de temps système = 5
                                       minutes, Pas de temps station = 10 minutes, la case est
                                       affichée ; Pas de temps station= 5 minutes, la case n’est pas
                                       affichée).

Association avec les services
Services disponibles oui Liste des services définis sur Aquaréel ( voir information
                                       référentielles) qui ne sont pas rattachés à la station courante

Services affectés oui Liste des services ayant une mission sur la station courante (
                                       maintenance, collecte, prévi…)

                                       Par défaut toute station est rattachée au service gestionnaire
                                       de l’application déclaré dans les paramètres généraux

Protocoles de collecte
Trois types de protocole sont utilisables dans Aquaréel pour collecter une station PLQ2000 :

    • Le protocole PLQ2000
    • le protocole SMI (spécifique au réseau radio SMI)

    • le protocole XML-LNS (spécifique aux stations LNS)

Le protocole PLQ2000 :
 utilisé pour la collecte des données des stations PLQ2000.

Nota : Excepté le code PLQ2000 de la station, les autres paramètres sont facultatifs. Leur valeur par

défaut, commune à l’ensemble des stations, est définie par défaut lors de l’installation et modifiable
dans le menu référentiel du client (Voir Paramétrage des types de protocole).

Code PLQ2000 Oui Code hexadécimal présentant le code PLQ2000 de la station. Il
                                       est constitué de 3 parties:

                                           • CC limité à 63 (Code pays)
                                           • COM limité à 4095

                                           • TX limité à 4095

                                       Particularité : Deux stations ne peuvent pas disposer d’un
                                       média avec le même code d’accès.

                                                80

---

## Page 81

MANUEL UTILISATEUR

                                              Aquaréel

CodePLQ2000 CC Non Code hexadécimal présentant le code PLQ2000 du
                                    concentrateur. Il est constitué de 3 parties:

                                        • CC limité à 63 (Code pays)
                                        • COM limité à 4095

                                        • TX limité à 4095
                                    Particularité : Deux stations ne peuvent pas disposer d’un
                                    média avec le même code d’accès.

TAC Non Temps d'acquittement. Ce paramètre définit le temps
                                    maximum

                                    pendant lequel une station attend un acquittement avant de
                                    répéter le message ou le groupe de messages précédemment

                                    émis

TALT Non Temps devant s’écouler entre le positionnement du signal RTS

                                    par la station et le début de l’émission du premier bloc de
                                    données d’un message.

TT Non Temps maximum d'émission. Ce paramètre est utilisé par le
                                    protocole pour déterminer le nombre de blocs constituant un

                                    message, ou le nombre de messages constituant un groupe de
                                    messages

Nombre de Non Définit l’acquittement du récepteur tous les n messages ceci
messages avant afin de limiter le nombre de messages à réémettre en cas

acquittement d'erreur de transmission

Le protocole XML-LNS utilisé pour la collecte des données des stations LNS.

Nota : Exceptés les périodes de prise de vues de la caméra, tous les paramètres sont en consultation
uniquement et leur valeur est fournie par la station lors des collectes

Période de So configuration de la collecte en mode push ( en consultation)
transmission fourni par la station
normale Ptn (mn)

Période de So
transmission en
alarme Pta (mn)

Heure de So
transmission Hrt
(mn)

Mode so
Normal/alarme

                                             81

---

## Page 82

MANUEL UTILISATEUR

                                              Aquaréel

Forçage du mode so
alarme

Période de prise de non Périodes de prises de vues paramétrées sur la station LNS et
vue normale Ppvn utilisée par Aquaréel pour le suivi des collectes d’image
(mn)

Période de prise de non
vue en alarme Ppva
(mn)

Heure de prise de non
vue Hrpv (mn)

Version logicielle de so Informations de configuration ( en consultation) fournis par la
la station station

Numéro de série de so
la station

Le protocole SMS-LNS : utilisé pour envoyer des commandes aux stations LNS
Nota :

    • 4 textes de commandes peuvent être paramétrés. Ces commandes doivent correspondre à
        celles configurées sur la station LNS

    • le paramétrage des 4 commandes est facultatif. Leur valeur par défaut, commune à
        l’ensemble des stations, est définie et modifiable dans le menu référentiel du client (Voir
        Paramétrage des types de protocole). Par défaut seules les commandes reboot et rdv sont
        définies lors de l’installation

Commande reboot Non Texte permettant de commander le reboot à la station
Commande rdv Non Texte permettant de commander à la station de se connecter

                                    au réseau IP
Commande 3 Non Autre Commande libre

Commande 4 Non Autre Commande libre

Communication avec les médias

4 types de médias équipant les stations sont paramétrables et exploitables sur Aquaréel :
    • RTC

    • GSM

    • Radio SMI
    • IP

    • abonnement SMS
L’utilisateur ajoute et paramètre le (ou les) média(s) équipant la station

Si la station dispose d’un deuxième média IP ; le média IP2 peut être ajouté. Il faut pour cela qu’un
média IP ait déjà été déclaré.

Média RTC :

Numéro téléphone Oui Code de communication associé (numéro de téléphone sur 10
                                    chiffres).

                                             82

---

## Page 83

MANUEL UTILISATEUR

                                              Aquaréel

Média GSM : ( désuet)

Numéro téléphone Oui Code de communication associé (numéro de téléphone sur 10
                                     chiffres).

Média Radio

Adresse SMI Oui code de communication associé (code numérique de 1 à 4
                                     chiffres)
Média IP (IP ou IP2)

Adresse IP Oui Adresse IP de la station (V4).

                                     L’adresse doit obligatoirement être saisie lorsque la station
                                     dispose de 2 médias IP

Port IP Oui Port TCP utilisé pour la communication avec la station
Identifiant Non

Mot de passe Non
Abonnement SMS

Numéro SMS Oui Code de communication associé (numéro de téléphone de 10
                                     à 14 chiffres).

Profils de collecte
Particularités :

Information en consultation uniquement permettent de lister les profils de collecte auxquels la
station est rattachée

-
Gestion de la caméra

Un bouton est disponible pour ajouter ou supprimer une rubrique caméra à la station courante. Une
seule rubrique caméra peut être ajoutée à une station. En cas de suppression de la rubrique caméra
les images collectées seront supprimées.

                                             83

---

## Page 84

MANUELUTILISATEUR
                                 Aquaréel

6.5.4 Utilisation du formulaire

                                84

---

## Page 85

MANUEL UTILISATEUR
                                                        Aquaréel

L’utilisateur doit saisir les informations propres à la station, puis sélectionner sa localisation, saisir les

informations de supervision, de communication avec les médias et finalement sélectionner les profils de
collecte rattachés.

L’utilisateur sélectionne dans le menu déroulant le média ou le protocole et clique sur le bouton ajouter.

              6.5.5 Particularité générale :

La suppression d’une station est interdite si elle est utilisée par la courbe de tarage d’une autre station.
Autrement, elle entraîne la suppression en cascade de toutes les entités rattachées.

                                                       85

---

## Page 86

MANUEL UTILISATEUR
                                                     Aquaréel

         6.6 Gestion des capteurs

             6.6.1 Présentation

Cette interface permet la gestion des différents capteurs, rattachés à une station, présents dans

l’application.

Elle est accessible via le menu « Paramétrage / Stations et capteurs » ou en appuyant sur le bouton
« Stations » en choisissant l’onglet « Gestion des capteurs de la station ».

             6.6.2 Composition de la liste

La liste est composée des entrées suivantes :

• Voie : Type de voie, Indice de la voie (repère PLQ /discriminant)

         - exemple : Entrée analogique 3 (23/259)

• Type de capteur

• Unité de mesure

• Delta NGF/EAC.

             6.6.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                Entrée Obligatoire Fonction
         Inhibition du Non Indicateur d'inhibition du capteur lors de l'affinage : Les
         capteur données sont collectées par le système mais non intégrées en

                                              production.
                                              Utilisé par exemple en cas de dysfonctionnement d’un capteur
                                              fournissant des valeurs erronées

         Description Non Texte libre descriptif d’un capteur d’une station
         Stockage en bande Non Indicateur de stockage des mesures du capteur en bande

         morte morte dans le cas ou la station adopte ce mode de stockage
                                              pour ce capteur: Permet de reconstituer les chroniques de
                                              mesure en cas d’export au format .pre.

         Type de capteur Oui Type de capteur (Débit, Bulle à bulle, …). Liste issues des types
                                              de capteurs listés dans le référentiel
         Unité de mesure Oui Unité de mesure des données remontées par le capteur. Par
                                              défaut l’unité du type de capteur sélectionné est proposée.

                                                    86

---

## Page 87

MANUEL UTILISATEUR

                                             Aquaréel

                                      Utilisé si nécessaire pour la conversion de l’unité dans celle
                                      attendue dans la base.

Voie Oui Identifiant et codes de la voie utilisée par le capteur sur la
                                      station ( ex: Entrée analogique 2 (22/258)
                                          • Type de voie et N° repère

                                          • repère PLQ et Discriminant correspondant

                                      Utilisé pour la collecte et les imports XML-LNS
Delta NGF/EAC Non Delta NGF/EAC à appliquer à la valeur du capteur avant la
                                      mise en production.

                                      Particularité : saisie possible uniquement pour les types de
                                      mesures limni

Résolution Non Résolution des valeurs du capteur (nombre de chiffre après la
                                      virgule). Appliqué par la procédure d’affinage avant mise en
                                      production des mesures collectées. ( ne s’applique pas aux
                                      mesures importées)

Code Capteur Non Code du capteur utilisé pour les formats d’échanges suivants:

                                      - exports XML SANDRE
                                      - imports en cas d’application des codes capteur

Date mise en Non Date de première mise en service du capteur.
service Utilisée pour limiter la borne inférieure d’affichage d’une

                                      chronique de données du capteur.
Date Non Date d’arrêt d’exploitation du capteur.
d’obsolescence
                                      Le capteur n’est ni collecté ni exploité au-delà de cette date.
Aberrations

Durant l’affinage le système vérifie la validité des données ponctuelles (Limni, débit) vis-à-vis de
seuils d’aberrations.
En cas d’aberration détectée, le système tente de remplacer cette valeur par la valeur

immédiatement précédente si elle existe et qu’elle n’est pas elle-même aberrante
Seuil minimal Non Valeur minimale que doivent respecter les mesures du capteur
                                      Particularité : Saisie possible que pour les capteurs de type

                                      limni ou débit
Seuil maximal Non Valeur maximale que doivent respecter les mesures du
                                      capteur

                                      Particularité : Saisie possible que pour les capteurs de type
                                      limni ou débit.

Gradient Non Gradient maximal à respecter entre 2 valeurs consécutives.
                                      Particularité : Saisie possible que pour les capteurs de type

                                      limni

     6.6.4 Utilisation du formulaire

                                            87

---

## Page 88

MANUEL UTILISATEUR

                                                     Aquaréel

L’utilisateur doit saisir les informations relatives au capteur de la station, puis sélectionne un type de
capteur, une unité de mesure et éventuellement une voie de communication.

             6.6.5 Particularités

La plupart des capteurs déclarés dans ce menu sont des capteurs hydrologiques. Deux capteurs de mesures
techniques peuvent être créés dans ce menu:
    • Les capteurs de tension

    • Les capteurs de température système

                                                    88

---

## Page 89

MANUELUTILISATEUR

                                              Aquaréel

La suppression d’un capteur est interdite si le capteur est utilisé par la courbe de tarage d’une autre
station.

La suppression d’un capteur entraîne, après confirmation demandée à l’utilisateur, la suppression en
cascade sur toutes les entités liées.

                                             89

---

## Page 90

MANUEL UTILISATEUR
                                                     Aquaréel

        6.7 Gestion des rubriques et des seuils

            6.7.1 Présentation

Notion de rubriques hydrologiques :

  Aquaréel ne stocke que les mesures issues des capteurs des stations.
  Pour en réaliser l’exploitation, le système doit classifier ces mesures et calculer de nouveaux

  indicateurs (débits, gradients, cumul pluviométriques) à partir de ces dernières.

  La classification des mesures et leur transformation en nouveaux indicateurs sont réalisées au travers
  des rubriques d’exploitations paramétrables dans le système.
  De même les images sont consultables et exploitables sous forme de rubrique

  On distingue 2 grands types de rubriques hydrologiques :

            Les rubriques simples qui classifient les mesures fournies par les capteurs (ex : Limni1,

                Limni2, Pluie 5mn, Débit…)
            Les rubriques calculées qui classifient et transforment, à partir de fonctions de calculs, les
                mesures fournies par les capteurs pour proposer de nouvelles grandeurs hydrologiques

                (ex : Cuml1h, Cumul24h, Gradient1h, débit calculé….)

  Le paramétrage des rubriques d’une station consiste à associer un type de rubrique à un de ses
  capteurs. (exemple : le type de rubrique « Limni1 » associée au capteur « radar » de la station d’Alès
  crée la rubrique « Limni1-Alès »)

  Dans Aquaréel, l’ensemble des exploitations de mesures est réalisé au travers des rubriques (rapports,
  graphes, exports, alarmes hydrologiques)

  Rq 1 : Le résultat des rubriques n’est pas stocké.

  Rq2 : Les types de rubriques sont paramétrés dans les informations référentielles du système (voir

  paramétrage des types de rubriques)

  Notion de seuil hydrologique:

  Le système permet de générer des alarmes sur dépassement (à la hausse) de seuils hydrologiques. Les
  seuils sont paramétrés sur les rubriques par l’association d’un type de seuil et de valeurs.
  Les types de seuils sont des données référentielles paramétrables par l’utilisateur (voir paramétrage

  type de seuil)

                                                    90

---

## Page 91

MANUEL UTILISATEUR

                                                        Aquaréel

  Les seuils hydrologiques sont paramétrés par le profil ayant le « droit de gestion des rubriques et des
  seuils».

  Certains seuils peuvent être identifiés comme modifiables : Le profil d’utilisateur ayant le droit
  « modifier les seuils modifiables » peut ajuster les valeurs des seuils déclarés comme modifiables. Cette
  fonctionnalité sert aux prévisionnistes qui peuvent être amenés à faire varier certains seuils pour suivre
  une crue.

Cette interface permet la gestion des différentes rubriques et des seuils rattachés présents dans
l’application.

Elle est accessible via le menu « Paramétrage / Stations et capteurs » ou en appuyant sur le bouton
« Stations » en choisissant l’onglet « Gestion des rubriques et des seuils ».

              6.7.2 Composition de la liste

La liste est composée des entrées suivantes :

• Type de rubrique hydrologique,

• Type de capteur,

• Voie (type de voie et repère et codes associés).

              6.7.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                 Entrée Obligatoire Fonction

         Capteur Oui Désignation du capteur composant la rubrique composée de la
                                                concaténation, pour la station concernée, entre le type de
                                                capteur et le libellé de la voie (ex : bulle à bulle/capteur

                                                intelligent)
         Type de rubrique Oui Type de rubrique présent dans le référentiel de l’application

                                                Particularité : On ne peut paramétrer 2 fois le même type de

                                                rubrique par station
         Affichage Tableau Non Indicateur permettant de savoir si la rubrique doit être
         Mesures présente dans le tableau des mesures courantes de la partie

                                                « Exploitation ».

                                                       91

---

## Page 92

MANUEL UTILISATEUR

                                                       Aquaréel

         Tableau des seuils Non Tableau contenant les différents seuils adaptés à la rubrique
                                                courante

Le tableau des seuils est composé de la sorte :

                 Entrée Obligatoire Fonction

         Type de seuil Non Libellé du type de seuil (lecture). Par défaut l’ensemble des
                                                types de seuils est proposé
         Les valeurs de seuil permettent de générer une alarme hydrologique sur dépassement à la hausse

         du seuil d’ouverture et fermée sur dépassement à la baisse du seuil de fermeture.
         Ouverture Oui Valeur du seuil d’ouverture

         Fermeture Non Valeur du Seuil de fermeture
                                                Particularité :

                                                - s’il est saisi doit être <= au seuil d’ouverture.

                                                - prend, par défaut, la valeur d’ouverture

         Les valeurs par défaut permettent de réinitialiser les valeurs des seuils si ces derniers ont été
         modifiés par les opérateurs.

         Ouverture (par Oui Valeur du Seuil d’ouverture par défaut
         défaut)
         Fermeture (par Non Valeur du Seuil de fermeture par défaut

         défaut) Particularité :
                                                - s’il est saisi doit être <= au seuil d’ouverture.

                                                - prend, par défaut, la valeur d’ouverture
         Est modifiable Non Indicateur de modification des valeurs du seuil pour les

                                                utilisateurs non « Administrateur ».

         Est transmissible Non Il s’agit de pouvoir indiquer dans le menu de paramétrage
                                                 des seuils hydrologiques si l’alarme est transmissible ou non
                                                 pour que l’alarme vocale ne soit pas systématique.

         Est actif Non Permet d’activer/désactiver la génération de l’alarme sur le
                                                 seuil

         Baisse Non Permet d’indiquer si le dépassement de seuil est vérifié à la
                                                 baisse

              6.7.4 Utilisation du formulaire

                                                      92

---

## Page 93

MANUEL UTILISATEUR
                                                      Aquaréel

L’utilisateur doit sélectionner dans un premier temps un couple « Capteur / Type de rubrique », choisir s’il

veut afficher la rubrique dans le module d’exploitation de l’application cliente puis saisit les données
relatives aux seuils.

              6.7.5 Particularité générale

La suppression d’une rubrique entraîne la suppression en cascade des paramétrages Modèle et des seuils

associés.
Les rubriques images ne sont pas gérées dans ce menu. Elles sont créées automatiquement lorsqu’une

caméra est déclarée sur la station.

                                                     93

---

## Page 94

MANUEL UTILISATEUR
                                                        Aquaréel

          6.8 Gestion des courbes de tarage
              6.8.1 Présentation

  Focus sur les courbes de tarage :

    Les courbes de tarage sont des relations mathématiques permettant de calculer une valeur de débit
    pour une hauteur d’eau donnée.

    Le système permet de stocker ses relations comme des lois exprimées sous forme de :
         - point à point : série de couple de valeurs hauteur débit

         - puissance : formule polynomiale ou puissance
         - barrage : formule de type a*(x+b) ^c

         - Double entrée : application d'une courbe de tarage de type point à point choisie en fonction d'une
  valeur limni avale h.

  historisation des courbes :

  Les courbes de tarage peuvent être historisées grâce aux informations de périodes de validité et de
  période d’utilité :
  - période d’utilité : période durant laquelle la courbe à été utilisée pour les calculs de débit en temps réel

  - période de validité : période durant laquelle la courbe est considérée comme la plus valide des courbes

  nota :
  - les périodes d’utilité des courbes ne peuvent se chevaucher

  - les périodes de validité des courbes ne peuvent se chevaucher

  courbe active : Courbe utilisée pour les calculs en temps réel : une seule courbe est active à la fois

Cette interface permet la gestion des courbes de tarage présentes dans l’application.

Elle est accessible via le menu « Paramétrage / Stations et capteurs » ou en appuyant sur le bouton

« Stations » en choisissant l’onglet « Gestion des courbes de tarage ».

              6.8.2 Composition de la liste
La liste des entités comprend les entrées suivantes :

    • Loi de tarage,

    • Libellé,

    • Date de début de validité,

    • Date de fin de validité,

                                                       94

---

## Page 95

MANUEL UTILISATEUR

                                                        Aquaréel

    • Date de début d’utilité,

    • Date de fin d’utilité.

              6.8.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                 Entrée Obligatoire Fonction
         Loi de tarage Oui Sélection d’une loi de tarage (puissance, point à point, barrage
                                                 ou double entrée)

         Libellé Non Libellé de la courbe de tarage

         Activer la courbe Non Indicateur d’activation de la courbe pour le temps réel.
         pour le temps réel Particularité :

                                                 1/ L’activation d’une courbe de tarage déclenche les
                                                 modifications suivantes :

                                                 - Passage de la date de début d’utilité et de validité de la
                                                 courbe à la date d’activation.
                                                 - Passage de la date de fin d’utilité et de validité de la courbe à

                                                 la date maximum du système (2050)
                                                 - Passage de la date de fin d’utilité et de validité de la courbe
                                                 précédemment active à la date d’activation de la courbe.

                                                 - rend la courbe non modifiable et non supprimable

                                                 2/ La désactivation d’une courbe passe la date de fin d’utilité à
                                                 la date désactivation de la courbe.

         Date de début de Non Date de début de validité de la courbe de tarage

         validité Particularité : N’est modifiable que pour la courbe active. La
                                                 modification de la date entraîne le recalage si nécessaire des
                                                 bornes des périodes de validité des courbes précédentes

         Date de fin de Oui Date de fin de validité de la courbe de tarage (lecture seule)
         validité
         Date de début Oui Date de début d’utilité de la courbe de tarage (lecture)

         d’utilité
         Date de fin d’utilité Oui Date de fin d’utilité de la courbe de tarage (lecture)

         Capteur aval Non Détermination du capteur placé en aval de la station
                                                 permettant de réaliser les calculs pour les courbes double
                                                 entrée.

                                                 Particularité : visible que pour les courbes de type double
                                                 entrée

                                                       95

---

## Page 96

MANUEL UTILISATEUR

                                                        Aquaréel

                 Entrée Obligatoire Fonction

         Tableaux des lois Non Tableau présentant l’ensemble des lois applicables à la courbe
                                                 de tarage courante

Le tableau de loi de tarage est dynamique en fonction du type de loi utilisé.

Dans tous les cas, il est obligatoire de saisir les champs :

                 Entrée Obligatoire Fonction
         Limites de Oui Limite minimale de la plage de valeur de la courbe

         à Oui Limite maximale de la plage de valeur de la courbe

Saisie des valeurs d’une courbe de type Puissance :

                 Entrée Obligatoire Fonction

         Coefficient Oui Coefficient multiplicateur

         Degré Oui Degré de puissance du polynôme

Exemple de formule de type Puissance :

Saisie des valeurs d’une courbe de type Point à point :

                 Entrée Obligatoire Fonction
         Limnimétrie Oui Valeur de limnimétrie

         Débit Oui Valeur de débit associé

Exemple de saisie de valeurs point à point

                                                       96

---

## Page 97

MANUEL UTILISATEUR

                                                       Aquaréel

Saisie des valeurs d’une courbe de type Barrage :

                 Entrée Obligatoire Fonction

         Paramètre Oui Identifiant du paramètre

         Valeur Oui Valeur du paramètre associé

Les courbes de type barrage sont identifiées par rapport aux valeurs des paramètres « a », « b » et « c ».

Exemple de saisie de valeur de barrage

Saisie des valeurs d’une courbe de type Double Entrée :

                 Entrée Obligatoire Fonction
         Limnimétrie Oui Valeur de limnimétrie

         Débit Oui Valeur de débit associé

Pour le cas des courbes double entrée, plusieurs lois sont obligatoirement saisies et la saisie d'une valeur

aval est obligatoire. Elle correspond à la valeur relevée sur le capteur Aval permettant de réaliser le calcul
de la courbe de tarage.

Exemple de saisie de lois d’une courbe double entrée :

                                                     97

---

## Page 98

MANUEL UTILISATEUR
                                                         Aquaréel

              6.8.4 Utilisation du formulaire

L'utilisateur sélectionne dans un premier temps la loi de tarage à appliquer, saisit éventuellement un libellé
pour la courbe et peut décider d'activer la courbe pour le temps réel dès son enregistrement en cochant la

case "Activer la courbe pour le temps réel". Il saisit ensuite une date de début de validité, le capteur Aval
dans le cas des courbes double entrée, et peut réaliser ensuite l'ajout des lois à appliquer en appuyant sur
le bouton "Ajouter une loi".

Suite à l'appui sur le bouton, l'utilisateur peut saisir les limites de début et de fin de la loi, éventuellement

la valeur aval pour les courbes à double entrée.

Il peut décider de supprimer une loi en appuyant sur le bouton "Supprimer la loi".

Finalement, il peut saisir la liste des paramètres directement dans le tableau.

Pour cela, il suffit de double-cliquer dans une cellule et de saisir une donnée.

Il est possible de supprimer une ligne du tableau en cliquant sur la ligne et en appuyant sur la touche
<Suppr> du clavier. Pour ajouter une ligne, il suffit d'insérer des valeurs dans la ligne vide en bas du tableau.

                                                        98

---

## Page 99

MANUEL UTILISATEUR

                                                       Aquaréel

                  6.8.4.1 Import de paramètres à partir de fichier issus de BArème

Barème est un logiciel de gestion des courbes de tarage.

Il est possible également, pour les courbes double entrée et les courbes point à point, de réaliser l'import
de paramètres directement à partir d'un fichier au format Barème en appuyant sur le bouton "Importer les

paramètres",en sélectionnant le fichier cible et en appuyant sur le bouton "Ouvrir".

Les fichiers importés doivent être du type DAT générés par le logiciel Barème.

La fonction d’import utilise le code hydro de la station et le libellé de la courbe.

Ces informations doivent correspondres entre le fichier et Aquaréel pour que l’import soit réalisé
correctement.

Les données importées sont automatiquement rajoutées dans la loi de tarage courante.

En cas de problème dans le format du fichier, un message d'erreur spécifique apparaît dans l'interface.

Exemple de menu de paramétrage de courbe de tarage d’une station:

Une fois la courbe de tarage enregistrée, il est possible de consulter son graphe en appuyant sur le bouton

"Afficher la courbe de tarage".

La courbe ci-dessous est un exemple de courbe de tarage de type Puissance possédant deux bornes
distinctes.

Exemple de graphe « afficher la courbe »:

                                                      99

---

## Page 100

MANUEL UTILISATEUR

                                                      Aquaréel

Focus sur le calcul des débits :

Courbe point à point :

     Le calcul des débits est réalisé par interpolation linéaire :
     Calcul de Q(h) entre Q(h1) et Q(h2,) à partir des valeurs h, h1 et h2

            Q(h)= Q(h1) + (h-h1) *(Q(h2)-Q(h1)) / (h2-h1)

Courbe double entrée :

Sur une valeur limni H, application d'une courbe de tarage qui est choisie en fonction d'une valeur limni
avale h.
h est la valeur sur un point de contrôle aval permettant de choisir la courbe de tarage adaptée.

H est la valeur limni sur le point de calcul

1) Détermination de la valeur aval h

                          - Nécessité de disposer de la valeur avale à Ti
                          - Dans le cas contraire, récupération de la valeur la plus récente dans les 2
                              heures précédant Ti

2) Calcul des débits à partir des courbes de tarages proches de h

La valeur H est toujours disponible à Ti

Si h correspond à une courbe de tarage Q(h,H):

                                                    100

---

## Page 101

MANUEL UTILISATEUR

                                                     Aquaréel

     - Calcul de Q(h,H)

Sinon lecture des 2 valeurs h1 et h2 encadrant la valeur aval h et choix des courbes de tarages
correspondantes.
Calcul de 2 débits Q(h1,H) et Q(h2,H)

3) Calcul du débit Q (h,H) à Ti

Interpolation linéaire entre Q(h1,H) et Q(h2,H) à partir des valeurs aval h, h1 et h2

       Q(h,H)= Q(h1,H) + (h-h1) *(Q(h2,H)-Q(h1,H)) / (h2-h1)

                                                   101

---

## Page 102

MANUEL UTILISATEUR

                                                       Aquaréel

        6.9 Gestion des rubriques techniques et des seuils

             6.9.1 Présentation

Notion d’indicateurs et de rubriques techniques :
Les indicateurs techniques sont représentés sous forme d’état ( défauts, résultat de collecte…) et sous

forme de valeurs numériques ( mesures, taux…).

Les indicateurs d’état sont caractérisés par un niveau de gravité ( notification, important, sévère) et une
description codifiée de l’état. Par exemple apparition d’un défaut capteur et sa description.
Ces données techniques sont réparties en 3 grandes catégories et listées ci-dessous :

     • Les données techniques sur la station et/ou les capteurs
          ◦ Mesures techniques

              ▪ Mesure de tension
              ▪ Mesure de température système

          ◦ Les défauts remontés par la station LNS lors de la collecte IP avec leur description
              ▪ Alarme défaut station

              ▪ Alarme Panne Capteur

              ▪ Alarme manque secteur
              ▪ Alarme batterie basse

          ◦ Les status activés sur la station issus de l’octet de status remonté en collecte IP ou radi:
              ▪ manque secteur

              ▪ batterie basse
              ▪ Effraction

              ▪ Panne carte

              ▪ défaut capteur
              ▪ Réarmement chien de garde

              ▪ Modifications paramètres
              ▪

     • Les données de collecte par canal ( média/protocole d’une station)
          ◦ État de chaque collecte (réussite, échec, alarme) déduit des événements de collecter

          ◦ Taux d’échec de collecte sur une profondeur paramétrable
          ◦ Volume de données reçues par la collecte IP sur une profondeur paramétrable

     • Les données de disponibilité et de cohérence des mesures hydrologiques des capteurs
          ◦ Les aberrations détectées lors de la mise en production (affinage)

              ▪ horodatage dans le futur ou trop ancien
              ▪ pas de temps invalide

              ▪ Valeur dépassant les seuils de validité min et max

                                                     102

---

## Page 103

MANUEL UTILISATEUR

                                                     Aquaréel

             ▪ Valeur dépassant un gradient de montée depuis la valeur immédiatement antérieure
         ◦ Les taux de mesures manquantes sur une profondeur paramétrable

         ◦ Le delta entre les valeurs de 2 capteurs
         ◦ Le délai de disponibilité des mesures dans l’application

Stockage des données techniques
Le stockage des données techniques est réalisé automatiquement sans qu’un paramétrage soit

nécessaire de la part de l’utilisateur, excepté pour les mesures de tensions et de température pour
lesquelles une voie de mesure a été créée dans la station et qui sont collectées comme un capteur. Pour
ces 2 informations, les capteurs doivent être déclarés dans Aquaréel.

Comme pour les données techniques, l’historique des données techniques peut être conservé en base
archive si cette dernière est activée

Les rubriques techniques

Comme pour les mesures hydrologiques, les données techniques ( mesures et état) sont exploitées sous
forme de rubrique pour :

     • La consultation des dernières données

     • La génération d’alarmes

     • L’édition de chroniques

Les données associées à ces rubriques techniques ne sont consultables et exploitables que sur le client
léger.

Un grand nombre de type de rubriques techniques sont pré-paramétrées. L’utilisateur peut en ajouter
d’autres dans le client Windows sur la base de fonctions de calculs prédéfinies.

Contrairement aux rubriques hydrologiques, l’utilisateur n’a pas à les définir sur les stations. Les

rubriques sont créées ou modifiées automatiquement dès qu’un élément participant à sa définition est
mis à jour dans l’application (type de rubrique, station, capteur, canal de collecte, rubriques

hydrologiques…)

Le paramétrage des rubriques techniques d’une station consiste à associer un type de rubrique technique
soit à la station, soit à ses capteurs, soit à ses canaux.
A noter que les rubriques simples peuvent afficher des valeurs numériques ( tension, température,

volume de données...) ou des données d’état. Les rubriques calculées ne proposent que des valeurs
numériques

Les types de rubriques sont paramétrés dans les informations référentielles du système (voir
paramétrage des types de rubriques)

Notion de seuil technique:
  Le système permet de générer des alarmes sur dépassement (à la hausse ou à la baisse) de seuils
  techniques.

                                                    103

---

## Page 104

MANUEL UTILISATEUR

                                                        Aquaréel

   Des valeurs de seuils par défaut sont paramétrables et s’appliquent à l’ensemble des rubriques du
   même type. ( ex : seuil de tension)

   Des valeurs de seuil spécifique peuvent être saisies par rubrique
   Les types de seuils sont des données référentielles paramétrables par l’utilisateur (voir paramétrage
   type de seuil)

Cette interface permet la gestion des différentes rubriques technique d’une station et leurs seuils rattachés
à savoir :

         • gérer leur affichage dans les tableaux de suivi

         • Paramétrer les valeurs des seuils

Elle est accessible via le menu « Paramétrage / Stations et capteurs » ou en appuyant sur le bouton
« Stations » en choisissant l’onglet « Gestion des rubriques techniques et des seuils ».

                  1.1.1 Composition de la liste

La liste est composée des entrées suivantes :

    • Type de donnée : Canal, Capteur ou Station

    • Type de rubrique technique

    • Type de capteur : uniquement pour les rubriques associées aux capteurs

    • Voie (identifiant et libellé de la voie) : uniquement pour les rubriques associées aux capteurs

                  1.1.2 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                 Entrée Obligatoire Fonction

         Type de rubrique Oui Type de rubrique technique présent dans le référentiel de
                                                 l’application.

                                                 Pour rappel, une rubrique technique est rattachée soit :
                                                 - à une station
                                                 - à un canal

                                                 - à un capteur

                                                 Particularité : Cette information n’est pas modifiable

                                                      104

---

## Page 105

MANUEL UTILISATEUR

                                                        Aquaréel

         Affichage dans les Non Indicateur permettant de savoir si la rubrique doit être
         tableaux de suivi présente dans les tableaux et cartes de suivi des indicateurs
                                                techniques sur le client léger.

         Tableau des seuils Non Tableau contenant les différents seuils adaptés à la rubrique
                                                courante

Le tableau des seuils est composé de la sorte :

                 Entrée Obligatoire Fonction

         Type de seuil Non Libellé du type de seuil technique (lecture). Par défaut
                                                l’ensemble des types de seuils technique est proposé

         Les valeurs de seuil permettent de générer une alarme technique sur dépassement à la hausse ou à
         la baisse du seuil d’ouverture et fermée sur dépassement à la baisse du seuil de fermeture.

         Particularité : Lorsqu’un seuil par défaut est saisi pour ce type de rubrique, les valeurs d’ouverture et
         de fermeture sont mis à 0.

         Ouverture Oui Valeur du seuil d’ouverture

         Fermeture Oui Valeur du Seuil de fermeture

         Les valeurs par défaut permettent de réinitialiser les valeurs des seuils si ces derniers ont été
         modifiés par les opérateurs.
         Ouverture (par Oui Valeur du Seuil d’ouverture par défaut

         défaut)
         Fermeture (par Oui Valeur du Seuil de fermeture par défaut

         défaut) Particularité :
                                                - s’il est saisi doit être <= au seuil d’ouverture.

                                                - prend, par défaut, la valeur d’ouverture
         Est modifiable Non Indicateur de modification des valeurs du seuil pour les

                                                utilisateurs non « Administrateur ».

         Est transmissible Non Il s’agit d’indiquer si l’alarme est transmissible ou non (sms,
                                                  mail, appel vocal). Trois choix sont proposés:

                                                  - Oui : l’alarme est transmise

                                                  - Non : l’alarme n’est pas transmise

                                                  - Trans par défaut : l’information de transmissibilité du seuil
                                                  par défaut est appliquée

                                                      105

---

## Page 106

MANUEL UTILISATEUR
                                                      Aquaréel

         Actif Nono Permet d’activer/désactiver la génération de l’alarme en cas
                                                de dépassement du seuil. Trois choix sont proposés :

                                                - Oui : Alarme générée

                                                - Non : Alarme non générée

                                                - Valeur par défaut : l’information d’activation du seuil par
                                                défaut est appliquée-

         Baisse Non Il s’agit d’indiquer si l’alarme est déclenchée sur en cas de
                                                valeur inférieure au seuil

                  1.1.3 Utilisation du formulaire

L’utilisateur doit sélectionner dans un premier temps un Type de données (Canal / Capteur / Station) puis

un type de rubrique technique, choisir s’il veut afficher la rubrique dans le module d’exploitation de
l’application cliente puis saisit les données relatives aux types de seuils techniques.

                  1.1.4 Particularités

La gestion des types de rubrique (ajout, modification, suppression) est réalisée dans l’écran « Référentiels /
Paramétrage des types de rubrique »

                                                    106

---

## Page 107

MANUEL UTILISATEUR

                                               Aquaréel

6.10 Paramétrage des profils de collecte

     6.10.1 Présentation

    Focus sur les collectes dans Aquaréel :

    On distingue 3 grands types de collectes:

    - Les collectes radio réalisées au travers du réseau Scorpion de COMATIS

    - La collecte RTC et GSM au travers d’un réseau téléphonique (filaire au mobile)

    - La collecte IP réalisée au travers d'un réseau IP

    Les canaux de collecte :

    Chaque station dispose d’un ou plusieurs médias de collecte (radio, rtc, gsm, IP) et sait
    communiquer sur un ou plusieurs protocoles (SMI, PLQ2000,XML-LNS). Du point vu Aquaréel,
    l’association entre un média de collecte et un protocole créé un canal de collecte sur la station.

    De plus, La notion de canal permet d’indiquer le mode de collecte utilisé :
         • pull : à l’initiative du concentrateur

         • push : à l’initiative de la station

    Par exemple, l’association sur la station d’Alès du média RTC sur le protocole PLQ2000 créé le
    canal RTC/Protocole PLQ2000 sur cette station.

    Pour faciliter et contrôler la saisie les types de médias protocole et canaux sont prédéfinis dans

    des tables de références. Aquaréel est compatible aujourd’hui avec les types de canaux
    suivants :
        • RTC/PLQ2000 pull

        • GSM/PLQ2000 pull

        • RadioScorpion/SMI push
        • RadioScorpion/PLQ2000 pull

        • IP/XML-LNS/ push

    Les pools et unité de collecte :

    Les communications avec l’extérieur sont réalisées au travers d’unités regroupées en pool. Par
    unité on entend le périphérique permettant la communication avec l’extérieur. Pour les

    collectes il s’agit de modem (RTC, radio) ou de router (IP)

                                             107

---

## Page 108

MANUEL UTILISATEUR

                                                        Aquaréel

             Les unités et pool utilisés par le concentrateur font référence à un type de média afin de
             collecter des stations sur un média équivalent (ou compatible).

             Le pool permet d’attribuer des paramètres de collectes communs à l’ensemble des unités le
             constituant.

             Le profil de collecte: Le paramétrage de la collecte est défini par profil pour permettre
             d'appliquer facilement les mêmes caractéristiques de collecte à tout un groupe de stations

             (média, planification, profondeur…).

             Lancement des collectes :

             - collecte automatique : le système lance lui-même des collectes planifiées par l'utilisateur ou
             en secours après l'échec d'une collecte principale.

             - Collecte manuelle : l'utilisateur demande une collecte particulière sur une ou plusieurs
             stations.

             Mise à l’heure des stations :

             La collecte s’accompagne d’une mise à l’heure des stations
             Les mises à jours de l'heure Radio et RTC se font aux fréquences paramétrées dans les
             paramètres COLLECTE.FREQUENCE_MISE_A_HEURE_RADIO et

             COLLECTE.FREQUENCE_MISE_A_HEURE_RTC des paramètres généraux
             - Pour la radio : diffusion d'un ordre SMI de mise à l'heure (broadcast).

             - Pour le RTC et le GSM : lors de la collecte de la station ajout d'un ordre PLQ2000 de mise à
             l'heure. Après chaque mise à l’heure un évènement spécifique est alors inséré dans le journal
             des évènements.

Cette interface permet la gestion des différents profils de collecte présents dans l’application. Un profil de

collecte est un regroupement de stations disposant des mêmes caractéristiques de collecte.

Elle est accessible via le menu « Paramétrage / Profils de collecte » ou en appuyant sur le bouton
« Collectes ».

              6.10.2 Composition de la liste

La liste est composée de :

    • Libellé du profil,

    • Média associé,

    • Type de protocole associé,

                                                      108

---

## Page 109

MANUEL UTILISATEUR
                                                  Aquaréel

    • Retard admissible (en minute),

    • Indicateur d'activation de collecte rapide,

    • Indicateur d'activation du profil de collecte.

             6.10.3 Composition du formulaire

Le formulaire se décompose en deux onglets :

    • Informations générales Profil,

    • Gestion des canaux.

Le premier onglet contient le formulaire de saisie général d'un profil de collecte.

Le second onglet contient l'association des canaux disponibles au profil de collecte courant.

                                                109

---

## Page 110

MANUEL UTILISATEUR

                                                      Aquaréel

              6.10.4 Informations générales Profil :

Le contenu du formulaire de saisie est géré dynamiquement. La partie transverse se compose des éléments
suivants :

                 Entrée Obligatoire Fonction

         Informations du profil
         Type de canal Oui Type de canal du profil de collecte

         Libellé Oui Libellé du profil de collecte

         Description Non Texte descriptif du profil de collecte

                                                    110

---

## Page 111

MANUEL UTILISATEUR

                                                     Aquaréel

         Informations de collecte générales communes à tous les canaux de collecte
         Retard admissible Oui Valeur en minute utilisée par le tableau des mesures

         (min) courantes pour signaler un retard trop important dans la
                                               réception de mesures d’une station.
         Nombre d’échecs Oui Nombre d’échecs consécutifs avant déclenchement d’une

         avant alarme alarme station
         Nombre d’alarmes Oui Nombre de stations du profil en alarme avant déclenchement
         avant alarme Profil d’une alarme sur le profil de collecte

         Alarme Non Indicateur de transmission des alarmes sur messagerie vocale
         transmissible

         Est actif Non Indicateur de l’activation du profil de collecte

         Pool Oui Pool d'unité (modem RTC, modem GSM, radio SMI, Port IP)
                                               associé au profil de collecte
         Planifications ( excepté pour le canal IP/XML-LNS/Push et SMI/PLQ2000/pull)

         Planifications Non Gestion des planifications de collecte et de vérification pour le
                                               profil de collecte courant

La partir spécifique aux médias RTC et GSM est la suivante :
                 Entrée Obligatoire Fonction

         Informations de collecte RTC, GSM

         Nombre d’essais Non Nombre de tentatives de collecte après obtention d’un échec
         Intervalle entre 2 Non Délai exprimé en seconde entre deux essais de collecte
         essais (s)

         Profondeur taux Non Profondeur exprimée en minute pendant laquelle on
         d’échec (min) comptabilise les échecs pour déterminer le taux d’échec
                                               courant.

         Retard admissible Non Retard admissible exprimée en minute pour le mode de
         de la collecte rapide collecte rapide. Utilisé par le tableau des dernières mesures
                                               en cas de collecte rapide.

         Collecte rapide Lecture Indicateur du passage en collecte rapide du profil

         Profondeur de Non Profondeur de données remontées lors d’une collecte rapide
         collecte rapide (min)
         Nombre d’extension Non Profondeur maximale du nombre de cycle de rattrapage en

         profondeur cas d'échec de collecte.
         Pool de secours Non Pool de secours utilisé en cas de panne du pool principal

        Focus sur la collecte RTC, GSM :

        Le concentrateur Aquaréel est conçu pour collecter des données de stations de type PLQ2000 au
        travers du réseau RTC ou GSM en mode Pull.

                                                    111

---

## Page 112

MANUEL UTILISATEUR

                                                      Aquaréel

        Sur chaque site opérationnel, Le système dispose d’un pool de modem dédié à la collecte qu’il pilote

        pour réaliser les collectes automatiques ou manuelles des stations PLQ2000.

        Notion de collecte normale/collecte rapide :

        2 modes de planification pilotent la collecte : les planifications normales et les planifications rapides
             La planification normale – ou collecte normale- (ex: toutes les 12h) pour les périodes sans
                risque hydrologique

             La planification rapide – ou collecte rapide - (ex: toutes les 1h) pour les périodes à risque
                hydrologique nécessitant une collecte de données plus fréquente.

        Un seul mode de planification est actif à la fois.

        L’utilisateur peut choisir de basculer d’un mode à l’autre.
        Le système peut automatiquement basculer un profil en collecte rapide sur réception d’une alarme de
        dépassement de seuil en provenance d’une station.

La partie spécifique au média Radio est la suivante :

                 Entrée Obligatoire Fonction
         Informations de collecte Radio

         Fréquence de Oui Fréquence de lancement de collecte exprimée en seconde.
         collecte (s) (Utilisé pour calculer le taux d’échec de la collecte radio)

         Profondeur de Oui Profondeur de collecte exprimée en minute pendant laquelle
         collecte (min) on demande la récupération de données.

         Taux maximal Oui Pourcentage maximal d’échec autorisé avant déclenchement
         d’échec (%) d’une collecte de rattrapage
         Profondeur d’échec Oui Profondeur exprimée en minute pendant laquelle on

         (min) comptabilise les échecs pour déterminer le taux d’échec
                                               courant.

        Focus sur la collecte radio :

        Le concentrateur Aquaréel est conçu pour collecter des données de stations au travers du réseau

        radio Scorpion de COMATIS.

        Sur chaque site opérationnel, l'équipement radio du SPCGD est relié au concentrateur par une liaison
        RS232. Sur ce port, le réseau radio met à disposition du concentrateur le résultat de ses collectes. Les
        paramètres de collecte automatique (fréquence des cycles…) sont gérés par le réseau radio lui-même

                                                    112

---

## Page 113

MANUEL UTILISATEUR

                                               Aquaréel

En collecte automatique, Aquaréel se contente donc d’exploiter les données mises à disposition par
le réseau au format SMI (Mode push).

Les collectes manuelles sont lancées par Aquaréel à l’initiative de l’utilisateur. Ces collectes sont

réalisées selon le protocole PLQ2000.
Compte tenu des capacités du réseau, la profondeur de données collectées est limitée à 1 jour par
station.

Notion de collecte de rattrapage :

La collecte radio peut être complétée par une collecte de rattrapage RTC déclenchée en cas de
dysfonctionnement de la radio.
Pour chaque profil de collecte radio, le système calcule et vérifie à heures planifiées, le taux d’échec

de la collecte radio de chaque station. En cas de dépassement d’un seuil d’échec paramétrable et
d’absence de données sur la période de vérification, une collecte de rattrapage est déclenchée sur la
(ou les stations) concernée selon un profil de rattrapage prédéfini.

                                             113

---

## Page 114

MANUEL UTILISATEUR

                                                Aquaréel

Focus sur la collecte IP :

Le concentrateur Aquaréel est conçu pour collecter des données de stations LNS au travers d’un
réseau répondant au protocole TCP-IP.
Chaque instance Aquaréel doit disposer d’un accès à un réseau TCP-IP et en particulier au réseau privé

de collecte.
Les collectes des stations LNS en mode push sont réalisées sur le média IP selon le protocole XML-LNS
définissant ainsi le canal de collecte IP/XML-LNS/Push du point de vu Aquaréel.

Nota : Les communications IP avec Aquaréel sont réalisées sur le port 8080.

En collecte automatique, Aquaréel se contente donc d’exploiter les données envoyées
périodiquement par les stations au format XML-LNS.
Les collectes manuelles sont lancées par Aquaréel à l’initiative de l’utilisateur. Ces collectes sont

réalisées selon le protocole XML-LNS. Conformément au mode de fonctionnement des stations LNS en
mode push, les ordres de collectes de manuelles sont récupérées par la station à l’issue d’une collecte
automatique.

Gestion des commandes :
La collecte des stations XML en mode push permet à Aquaréel de fournir des commandes de
paramétrage à la station. Ces commandes sont récupérées par la station à l’issue de la collecte

automatique. Ces commandes concernent les paramètres de collectes (Ptn,Pta,Hrt, Forçage en mode
alarme), la mise à jour de firmware, les demande de rdv de maintenance)
Ces commandes sont configurées par l’utilisateur depuis le client léger de l’application.

Fonction des profils de collecte:

Contrairement aux autres types de canaux, la définition de profil de collecte n’est pas indispensable au
fonctionnement de la collecte IP/XML-LNS/Push. Les profils de collecte doivent être déclarés pour :

    • regrouper des stations afin de gérer des zones d’alarmes ( voir ci-dessous)
    • Paramétrer des indicateurs de retard admissible

    • Identifier les échecs de collecte persistantes ( Voir ci- dessous)
Gestion des zones d’alarme :

Les stations LNS peuvent être paramétrées pour basculer en mode de collecte rapide ( Période de
transmission en alarme PTA) et envoyer une alarme hydrologique sur dépassement de seuil. Les
stations notifient également à Aquaréel la fermeture de l’alarme hydrologique lorsque le seuil n’est

plus dépassé
Sur réception d’une alarme hydrologique, Aquaréel lance une commande de forçage en mode alarme
sur toutes les stations du ( ou des) profil de collecte auquel appartient la station en alarme.

Lorsque plus aucune station du profil est en alarme, Aquaréel lance une commande de forçage en
collecte normale sur l’ensemble des stations du profil concerné

Identification des échecs de collecte persistants :
 La plupart des échecs de collecte ne sont pas tracées dans l’application car elles correspondent à un

défaut de communication de la station et ne sont vus que par une absence de collecte du point de vue
du concentrateur. Les absences de collecte persistantes sont déduites des périodes de transmission
de la station lorsque la station n’est plus collectée depuis n périodes.( Voir les paramètres généraux de
l’application).

En cas d’absence de collecte persistante sur une station une alarme est générée par l’application.

                                              114

---

## Page 115

MANUEL UTILISATEUR
                                                        Aquaréel

              6.10.5 Gestion des canaux :

L'interface se compose des entrées suivantes :

         Associations avec les stations

         canaux disponibles Ensemble des canaux disponibles de l’application et non affectées au profil
                                 de collecte
         canaux affectés Ensemble des canaux affectées au profil de collecte.

              6.10.6 Utilisation du formulaire

L’utilisateur doit sélectionner un type de canal, saisir les informations générales du profil de collecte et

ensuite les informations relatives au type de canal sélectionné.

Une fois les informations validées l’utilisateur doit sélectionner les canaux affectés au profil de collecte.

La liste des canaux disponibles proposés à l’utilisateur correspond à ceux qui appartiennent ou sont
compatibles au type de canal choisi pour le profil. Par exemple les Canaux GSM/PLQ2000 sont compatibles
à un profil de type RTC/PLQ2000.

L’utilisateur peut lancer une collecte manuelle sur le profil en appuyant sur le bouton "Collecter". Voir

Lancement des collectes manuelles

Il peut activer la planification de collecte rapide en appuyant sur le bouton "Activer la planification de
collecte rapide".

La collecte rapide induit une collecte avec une fréquence de collecte plus élevée.

Elle est utilisée en général durant un événement météorologique.

                                                      115

---

## Page 116

MANUEL UTILISATEUR
                                                        Aquaréel

              6.10.7 Particularités

Lors de la sélection du média Radio, il n’est pas possible d’associer des planifications de lancement. En

revanche il est possible de planifier l’exécution de la vérification du taux d’échec radio.

Un profil ne peut être de rattrapage s’il est planifié.

La suppression d’une station dans un profil génère un message d’avertissement si ce dernier est le profil
principal de la station.

La planification d’un profil utilisé pour le rattrapage entraîne sa suppression dans le profil dont il dépend.

La suppression d’un profil de collecte de rattrapage entraîne sa suppression dans le profil dont il dépend.

Un message d’avertissement adapté apparaît si le profil à supprimer lance un export. ( voir le paramétrage
des exports)

                                                      116

---

## Page 117

MANUEL UTILISATEUR

                                              Aquaréel

 6.11 Configuration des alarmes et des seuils

      6.11.1 Transmission des alarmes

Focus sur les transmissions d’alarme :

Aquaréel génère 4 grands types d’alarme

     les alarmes hydrologiques (sur dépassement de seuil hydrologique)
     les alarmes fonctionnelles (sur dysfonctionnement des collectes ou des exports)

     les alarmes de supervision (sur dysfonctionnement applicatif)

     les alarmes techniques ( défaut des stations sur dépassement de seuil technique sur données
        techniques)

Ces alarmes sont transmises à un opérateur d’astreinte par les canaux suivants.
    • appel téléphonique (Speech unit) avec acquittement

    • appel vocal sérialisé (Twilio) avec acquittement
    • envoi de mail

    • envoi de SMS

La liste des destinataires est configurable dans Aquaréel par type d’alarme et type de média de
transmission.

Transmissibilité des alarmes hydrologiques:

Les alarmes hydrologiques concernant des données limnimétriques et débimétriques sont
systématiquement transmises.
La transmission des alarmes concernant les données pluviométriques peut être limitée sur une

période par un nombre maximal d’alarme du même type par bassin. Cette limitation permet de ne
pas saturer l’opérateur avec des appels concernant des alarmes touchant un même secteur. Le
nombre maximal d’alarmes du même type transmises et leur antériorité de prise en compte sont
configurés dans les paramètres généraux.

Transmissibilité des alarmes de supervision :

Les alarmes de supervision sont systématiquement transmises.

Transmissibilités des alarmes fonctionnelles :

La transmissibilité des alarmes fonctionnelles concernant les profils de collectes et les échanges est
gérée dans les menus de paramétrages respectifs au travers de l’indicateur « alarme transmissible ».

Les autres alarmes (stations) ne sont jamais transmises.

                                            117

---

## Page 118

MANUEL UTILISATEUR
                                                    Aquaréel

        Pour les appels vocaux, le concentrateur appelle successivement les numéros de la liste d’opérateur

        par ordre de priorité tant que l'alarme n'est pas acquittée.
        A chaque opérateur le système réalise 3 tentatives avant de passer à l’opérateur suivant.

        La liste des opérateurs peut être parcourue 2 fois avant que l’alarme ne soit plus transmise.
        Transmissibilité des alarmes techniques:

        La transmissibilité des alarmes techniques concernant des rubriques techniques rattachées à un canal,
        une station ou un capteur est définie pour le seuil concerné

        Rq1 : En cas d’activation du mode crise, la transmission des alarmes est suspendue pour permettre à
        l’utilisateur, qui est devant l’écran, d’acquitter directement sans être appelé sur le téléphone.

             6.11.2 Présentation

Cette interface permet la gestion des différents opérateurs d’astreinte de l’application et des médias de
transmission.

Elle est accessible via le menu « Paramétrage / Alarmes » ou en appuyant sur le bouton « Alarmes » puis en
choisissant les onglets

• Opérateurs d’astreinte.

• Alarmes

             6.11.3 Opérateurs d’astreinte

                  6.11.3.1 Composition de la liste

La liste est composée de :

• un libellé,

• numéro de téléphone,

• numéro de sms,

• Adresse mail

• Service de l’opérateur

                  6.11.3.2 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

               Entrée Obligatoire Fonction

                                                   118

---

## Page 119

MANUEL UTILISATEUR
                                                    Aquaréel

        Libellé Oui Libellé de l’opérateur d’astreinte

        Numéro de Non Numéro de téléphone de l’opérateur d’astreinte recevant les
        téléphone appels vocaux

                                              Particularité : Deux opérateurs d’astreinte ne peuvent avoir le
                                              même libellé.
        Numéro de SMS Non Numéro de téléphone de l’opérateur d’astreinte recevant les

                                              SMS
        Adresse mail Non Adresse mail de l’opérateur d’astreinte

        Service Oui Service dont dépend l’opérateur

                  6.11.3.3 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives à l’opérateur d’astreinte

                  6.11.3.4 Particularités

Il n’est pas possible de supprimer un opérateur d’astreinte à partir du moment où il est le dernier associé à

un type d’alarme.

             6.11.4 Alarmes

                  6.11.4.1 Composition de la liste

La liste est composée de :

• un type d’alarme,

                                                   119

---

## Page 120

MANUEL UTILISATEUR
                                                  Aquaréel

• un opérateur,

• un canal de transmission

• un ordre

                 6.11.4.2 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

               Entrée Obligatoire Fonction
        Type d’alarme Oui Libellé du type d’alarme à transmettre (Hydrologique,
                                            fonctionnelle, surveillance, technique)

        Opérateur Oui Libellé de l’opérateur d’astreinte destinataire

        Canal de Oui Libellé du canal de transmission (Alarme téléphonique, Appel
        transmission vocal sérialisé, SMS, Mail)
        Ordre Non Numéro d’ordre d’envoi de l’alarme téléphonique

                 6.11.4.3 Utilisation du formulaire

L’utilisateur saisit les types d’alarme dont chaque opérateur dont doit être destinataire en spécifiant le

canal de transmission utilisé.

                 6.11.4.4 Particularité :

                                                 120

---

## Page 121

MANUEL UTILISATEUR

                                                      Aquaréel

Les alarmes téléphoniques et les appels vocaux sérialisés sont transmis jusqu’à acquittement selon l’ordre
établi.

Les canaux mail et SMS n’attendent pas d’acquittement.

              6.11.5 Gestion globale des seuils
                  6.11.5.1 Présentation

Cette interface permet la gestion globale des seuils modifiables de l’application.

Elle est accessible via le menu « Paramétrage / Alarmes » ou en appuyant sur le bouton « Alarmes » puis en
choisissant l’onglet « Gestion des seuils ».

                  6.11.5.2 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                Entrée Obligatoire Fonction

         Station Oui Nom de la station associée (lecture)

         Type de capteur Oui Le type de capteur (lecture)
         Type de rubrique Oui Le type de rubrique (lecture)

         Type de seuil Oui Le type de seuil (lecture)
         Seuil Ouverture Oui La valeur du seuil d’ouverture

                                               Particularité : La saisie du seuil d’ouverture est obligatoire.

         Seuil Fermeture Oui La valeur du seuil de fermeture
                                               Particularité : prend par défaut la valeur d’ouverture
         Seuil Ouverture Oui La valeur du seuil d’ouverture par défaut (lecture)

         (défaut)
         Seuil Fermeture Oui La valeur du seuil de fermeture par défaut (lecture)
         (défaut)

                  6.11.5.3 Utilisation du formulaire

Ce formulaire se dénote du mode de fonctionnement traditionnel.

La liste des seuils modifiables est directement éditable.

L’utilisateur peut saisir des valeurs pour les seuils d’ouverture et de fermeture de chaque seuil et ceci pour

chaque type de rubrique et type de seuil.

Seules les valeurs des seuils modifiables peuvent être modifiées dans ce menu.

Il enregistre alors directement les modifications en appuyant sur le bouton « Valider ».

                                                    121

---

## Page 122

MANUELUTILISATEUR
                                              Aquaréel

Il peut également réinitialiser les valeurs de seuils en appuyant sur le bouton « Revenir aux valeurs initiales

des seuils ».

Cette opération permet d’affecter les valeurs des seuils avec celles par défaut.

                                             122

---

## Page 123

MANUEL UTILISATEUR
                                                      Aquaréel

         6.12 Gestion des utilisateurs de l’application cliente

              6.12.1 Gestion des profils applicatifs
                  6.12.1.1 Présentation

Cette interface permet la gestion des différents profils utilisateur de l’application cliente.

Elle est accessible via le menu « Paramétrage / Utilisateurs » ou en appuyant sur le bouton « Utilisateurs »
puis en choisissant l’onglet « Profil Utilisateurs ».

                  6.12.1.2 Composition de la liste

La liste est composée seulement du libellé du profil.

                  6.12.1.3 Composition du formulaire de saisie

Le formulaire de saisie se compose des éléments suivants :

                Entrée Obligatoire Fonction
         Libellé Oui Libellé du profil utilisateur

         Droits disponibles Non Ensemble de tous les droits disponibles de l’application cliente
                                               et non affectés au profil courant.

         Droits affectés Non Ensemble de tous les droits affectés au profil courant.

                  6.12.1.4 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives au profil de collecte.

Il peut affecter ou supprimer des droits pour le profil courant en sélectionnant un ou plusieurs droits puis

en appuyant sur les boutons respectifs « Ajouter » ou « Supprimer ».

                                                    123

---

## Page 124

MANUEL UTILISATEUR
                                                     Aquaréel

                  6.12.1.5 Particularités

Il n’est pas possible de supprimer un profil s’il est rattaché à un compte utilisateur.

Il faut auparavant modifier le profil des comptes utilisateur concernés.

Par défaut, le droit de gestion des utilisateurs n’est attribué qu’au profil « Administrateur ». Ce profil n’est
ni modifiable, ni supprimable.

L’application cliente permet l’affectation de ce droit à tout profil.

             6.12.2 Gestion des comptes utilisateurs

                  6.12.2.1 Présentation

Cette interface permet la gestion des différents comptes utilisateur de l’application.

Elle est accessible via le menu « Paramétrage / Utilisateurs » ou en appuyant sur le bouton « Utilisateurs »

puis en choisissant l’onglet « Utilisateurs ».

                  6.12.2.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

• le nom,

• prénom,

• login,

                                                   124

---

## Page 125

MANUEL UTILISATEUR

                                                     Aquaréel

• profil applicatif des comptes utilisateur.

                  6.12.2.3 Composition du formulaire de saisie

Le formulaire de saisie se compose des éléments suivants :

                 Entrée Obligatoire Fonction

         Nom Oui Nom de la personne possédant le compte utilisateur
         Prénom Oui Prénom de la personne possédant le compte utilisateur

         Login Oui Login de connexion

         Profil Oui Profil utilisateur associé
         Service Oui Service gestionnaire de l’utilisateur

         Mot de passe Oui Mot de passe du compte (3 caractères minimum).

                  6.12.2.4 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives à son compte puis sélectionner un profil parmi ceux
disponibles au sein de l’application.

                  6.12.2.5 Particularités

Les mots de passe des comptes utilisateur ne sont consultables que par les utilisateurs disposant du profil
« Administrateur ».

Par sécurité, le dernier compte utilisateur associé au profil Administrateur n’est pas supprimable au sein de
l’application.

                                                    125

---

## Page 126

MANUEUTILISATEUR
   Aquaréel

  126

---

## Page 127

MANUEL UTILISATEUR
                                                   Aquaréel

         6.13 Les imports
       Focus sur imports :

       La fonction import d’Aquaréel permet d’insérer en base des données issues de fichiers de type
       suivants :

            XML SANDRE ( V1.1)
            PRE

            CSV dont les champs sont séparés par des « ; » et respectent la structure suivante

                   o DateHeure (aaaa-mm-jj hh:mm:ss)
                   o Code capteur

                   o Valeur
            XML LNS

            ZRX (ZRXP version 3.0 - format propriétaire société KISTERS)
            LILA KALA (Listenformat LARSIM Time Series File Format)

            IMG (fichier image)
            MOV (fichier vidéo)

       Les fichiers sont récupérables sur des partages Windows (CIFS), FTP ou SFTP.

       Les fichiers importés peuvent être compressés au format 7z (Seven Zip).

       L’exécution de l’import est lancée automatiquement sur planification ou manuellement par

       l’utilisateur

             6.13.1 Gestion générale des imports

                 6.13.1.1 Présentation

Cette interface permet la gestion des différents imports présents dans l’application.

Elle est accessible via le menu « Paramétrage / Imports » ou en appuyant sur le bouton « Imports » puis en

choisissant l’onglet « Informations générales Import ».

                 6.13.1.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

• Le nom de l’import,

• Le format du fichier d’import,

                                                 127

---

## Page 128

MANUEL UTILISATEUR

                                                    Aquaréel

• Le protocole de transfert utilisé,

• L’indicateur d’activation de l’import,

• Dans le cas d’un import image la station liée à cet import.

                  6.13.1.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                Entrée Obligatoire Fonction

        Nom Oui Libellé de l’import
        Date du dernier Oui Date du dernier import réalisé (lecture)
        fichier importé

        Actif Non Indicateur d’activation de l’import

        Description Non Texte descriptif qualifiant l’import
        Format du fichier Oui Format d’import de fichier (CSV, PRE ou XML Sandre...)

        Protocole de Oui Protocole de transfert choisi (CIFS, FTP ou SFTP)
        transfert

        Transfert
        Machine distante Oui Adresse de la machine distante

        Partage Non Chemin du partage

        Nom de fichier Oui Nom de fichier à importer. Dans le cas d’un import de type
                                                multi-fichier, le paramètre « Nom de fichier » devient un
                                                filtre permettant la sélection des fichiers à importer.

        Login Non Login de connexion à la machine distante
        Mot de passe Non Mot de passe de connexion à la machine distante

        Multi-fichiers Non Indicateur d’un import de type multi-fichiers.
        Supprimer fichier Non Active la suppression des fichiers distants après la

        après import réalisation de l’import.
        Paramétrage

        Nombre de Oui Nombre de tentatives d’import successives avant
        tentatives déclenchement d’un échec

        Nombre d’échecs Oui Nombre d’échecs successifs avant déclenchement d’une
                                                alarme

        Délais entre Oui Délais entre deux tentatives successives
        tentatives
        Horodatage TU Non Indicateur d’horodatage des données contenues dans le

                                                fichier importé (local ou TU).
        Alarme Non Indicateur de transmission des alarmes sur messagerie
        Transmissible vocale

                                                   128

---

## Page 129

MANUEL UTILISATEUR

                                                       Aquaréel

         Coefficient de Non Coefficient appliqué à l’ensemble des données importées
         conversion avant insertion en base de production
         Décompression du Non Indicateur de décompression du fichier : permet d’importer

         fichier un fichier compressé au format 7z
         Nombre de jours Non Nombre de jours d’antériorité maximale des fichiers
         d’antériorité (Oui si import récupérés dans le dossier distant en cas d’import multi-

                                   est multi- fichiers. Ce paramètre est également utilisé pour purger la
                                    fichiers) table qui persiste les fichiers déjà importés.
         Planifications

         Planifications Non Gestion des planifications pour l’import courant

                  6.13.1.4 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives à l’import courant puis sélectionner le format de fichier
attendu ainsi que le protocole de transfert utilisé, saisir les informations de transfert de fichier, ceux de

gestion des échecs / alarmes puis finalement gérer les planifications associées.

                                                     129

---

## Page 130

MANUEL UTILISATEUR
                                                       Aquaréel

                  6.13.1.5 Particularités

Si aucune planification n’est réalisée, l’import est considéré comme non actif.

De même, si l’on supprime la dernière planification rattachée à un import, il est automatiquement
désactivé.

Si un import est non actif, il ne sera jamais exécuté même s’il existe une planification active pour cet

import.

Dans le cas du protocole CIFS, il n’est pas possible de saisir le login et le mot de passe de connexion, les
champs sont automatiquement grisés.

                  6.13.1.6 Filtre de l’import multi fichiers

                                                     130

---

## Page 131

MANUEL UTILISATEUR

                                                       Aquaréel

Dans le cas d’un import de type multi-fichier ( par exemple formats XML-LNS, images ou vidéo), le
paramètre « Nom de fichier » devient un filtre permettant la sélection des fichiers à importer. Les parties
variables de ce filtre sont paramétrables en utilisant les caractères spéciaux suivants :

    • #### : Identifiant de la station, du capteur ou de la caméra. Chaque # correspond à un caractère
        alphanumérique (A..Z,a..z,0..9)

    • [Format de la date] : La date de création du fichier

    • * : Caractère variable (sa valeur ne définit pas une information à mémoriser)

Le bouton d’aide situé à droite du champ de saisi du « Nom de fichier » ouvre l’assistant de saisi du filtre

multi-fichiers. Cet assistant liste les filtres préenregistrés dans la base de données.

Exemple de filtre

Pour un fihier image

    • Filtre : CAM_*-[dd_MM_yyyy HH_mm].jpg

    • Exemple de fichier accepté par le filtre : CAM_Montpellier-12_04_2016 12_10.jpg

Pour un fichier XML-LNS :

    • Filtre : em_X203521001_[yyMMddHHmmss].xml pour récupérer tous les fichiers de la station

        disposant du code hydro X203521001

    • Filtre : em_*_[yyMMddHHmmss].xml pour récupérer tous les fichiers XML-LNS d’un répertoire

Principaux formats des dates

    • dd : Jour du mois, de 01 à 31.

    • HH : Heure, au format de 12 heures, de 01 à 12.

    • mm : Minute, définie entre 00 et 59.

    • MM : Mois, de 01 à 12.

    • ss : Seconde, de 00 à 59.

    • yyyy : Année, en tant que nombre à quatre chiffres.

              6.13.2 Gestion des capteurs liés aux imports

                  6.13.2.1 Présentation

                                                     131

---

## Page 132

MANUEL UTILISATEUR

                                                    Aquaréel

Cette interface permet la gestion des différents imports présents dans l’application.

Elle est accessible via le menu « Paramétrage / Imports » ou en appuyant sur le bouton « Imports » puis en
choisissant l’onglet « Gestion des capteurs ».

                 6.13.2.2 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                Entrée Obligatoire Fonction

        Sélection Non Sélection des capteurs concernés par l’import
        Station Oui Nom de la station (lecture)

        Capteur Oui Type de mesure (lecture)

        Type Oui Type de capteur et voie du capteur (lecture)
        Code capteur Oui Code contenu dans le fichier importé permettant de faire la
                                             translation vers le capteur au sein du concentrateur.

                 6.13.2.3 Utilisation du formulaire

L’utilisateur doit sélectionner l’ensemble des capteurs à associer à l’import et éventuellement y rajouter un
code d’identification du capteur au sein du fichier.

                 6.13.2.4 Application des codes capteur

Dans l’onglet « Gestion des capteurs » le bouton « Appliquer les codes capteur» permet, pour chacun des
capteurs sélectionnés de reporter la valeur du code capteur saisie dans le menu de gestion des capteurs.

                 6.13.2.5 Génération de discriminant LNS

Lorsqu’un import a pour format de fichier « XML LNS », dans l’onglet « Gestion des capteurs » le bouton
« Générer le discriminant LNS » est disponible. Pour réaliser la génération de discriminant, sélectionner
l’ensemble des capteurs à associer à l’import et cliquer sur le bouton « Générer le discriminant LNS ». Pour

chacun des capteurs sélectionnés un discriminant sera générer en fonction du tableau de correspondance
suivant :

  N°type Désignation Code hexa PLQ Discrimant (IP) en décimal
     0 Entrée logique 0x00 – 0x1F 0 à 255

     1 Entrée analogique 0x20 - 0x3F 256 à 511
     2 Entrée numérique 0x40 – 0x 5F 512 à 767
     3 Entrée de comptage 0x60 – 0x 7F 768 à 1023
     4 Sortie logique 0x80 – 0x9F 1024 à 1279

     5 Capteur intelligent 0xA0 – 0x Bf 1280 à 1535
     6 Seuil 0C – 0xDF 1536 à 1791

                                                  132

---

## Page 133

MANUEL UTILISATEUR

                                                       Aquaréel

     7 Alarme 0x0E – 0x FE 1792 à 2047
     8 Sortie analogique 2048 à 2303
     9 Medias Internet 2304 à 2559

                  6.13.2.6 Particularités

    • import de fichiers XML-LNS : pour les stations concernées, le champ CodeHydro3 doit être rempli
        au préalable dans le menu de paramétrage des stations

    • import zrx : le code capteur à saisir est constitué par l’agrégation des mots clé « CNAME » et

        « SNAME » avec le séparateur « _ » pour constituer l’identifiant « SNAME_CNAME »

    • import Lila-Kala : le code capteur à saisir est constitué par l’agrégation des métadonnées
        « station » et « Datenart »avec le séparateur « _ » pour constituer l’identifiant

        « station_Datenart »

              6.13.3 Lancement manuel d’un import

Il est possible de déclencher un import via l’interface de gestion des imports en appuyant sur le bouton

« Importer » ou à partir du menu contextuel « Importer l’item sélectionné ».

Seuls les imports actifs peuvent être déclenchés manuellement, autrement, le bouton est « grisé ».

Un message concernant l’inhibition du temps réel apparaît :

La fonction inhibition temps réel permet en cas de collecte ou d’import manuels de ne pas réaliser les

traitements nécessaires à la gestion temps réel à savoir, l’alimentation du tableau des dernières mesures et
la vérification des seuils hydrologiques.

Cette fonctionnalité est intéressante pour des imports ou des collectes sur des données anciennes n’ayant

pas d’incidence sur le temps réel.

L’import correspondant à la ligne sélectionnée est alors déclenché manuellement.

                                                     133

---

## Page 134

MANUELUTILISATEUR

                                            Aquaréel

        6.14 Paramétrage des exports



       Focus sur les exports :

      La fonction import d’Aquaréel permet de générer et exporter des fichiers à partir des données
      stockées en base.

      Les formats de fichiers exportés sont les suivants

           XML SANDRE V1.1
           XML SANDRE V2

           XML OPAL

           XML OPAL avec configuration
           PRE

           PRE en litres (avec débits en litre /s)
           CSV dont les champs sont séparés par des « ; » et respectent la structure définie dans la vue

             qui définit le format du contenu CSV. (Voir la section « Modification du contenu des fichiers
             csv exportés »)
           BS3 (brut standard V3)

           IMG (fichier image)

           MOV (fichier vidéo)
           XML-LNS ( réexport du fichier collecté)

           ZRX

      Les fichiers sont déposés sur des partages Windows (CIFS), FTP ou SFTP.

      L’exécution de l’export est lancée :

           automatiquement sur planification ou après une collecte planifiée
           manuellement par l’utilisateur

      Le contenu des fichiers est défini dans les modèles (Voir §8.1) qui permettent de définir

           Les données (sélection des rubriques)
           La période (glissante ou fixe)

           Le pas de temps (égale ou multiple de celui de la base)

      Dans Les fichiers .pre, les données sont codifiées en utilisant le code TX en décimal de la station
      concernée.

                                           134

---

## Page 135

MANUEL UTILISATEUR

                                                      Aquaréel

        Les fichiers générés peuvent être exportés dans le format compressé 7z (7-zip).

              6.14.1 Présentation

Cette interface permet la gestion des différents imports présents dans l’application.

Elle est accessible via le menu « Paramétrage / Exports » ou en appuyant sur le bouton « Exports ».

              6.14.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

• le nom de l’export,

• le format du fichier d’export,

• le protocole de transfert utilisé,

• L’indicateur d’activation de l’import.

              6.14.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                Entrée Obligatoire Fonction

         Nom Oui Libellé de l’export

         Actif Non Indicateur d’activation de l’export
         Description Non Texte descriptif qualifiant l’export

         Format du fichier Oui Format d’export de fichier (BS3, CSV, OPAL, OPAL avec
                                               configuration, PRE, XML Sandre)

         Protocole de Oui Protocole de transfert choisi (CIFS, FTP ou SFTP)
         transfert

         Capteurs exportés Oui Modèle associé à l’export
         Dépend de Non Collecte déclenchant automatiquement cet export

         Date et heure dans Non Ajout de la date et de l’heure dans le nom du fichier
         le nom du fichier

                                               Le format dépend du type d'export.
                                               BS3, CSV, OPAL avec configuration, PRE et PRE en litre : <nomFichier><date>.<ext>

                                               où <date> a la forme suivante : aaaa-mm-jj-HH-MM
                                               OPAL :
                                               <nomFichier><date>.<ext>

                                               où date a la forme suivante : aaaa-mm-jj
                                               XML SANDRE :

                                                    135

---

## Page 136

MANUEL UTILISATEUR

                                                    Aquaréel

                                             <date><_><nomFichier><_><001>.<ext>

                                             où date a la forme suivante : aaaammjjHHMMSS
        Transfert

        Machine distante Oui Adresse de la machine distante

        Partage Non Chemin du partage
        Nom de fichier Oui Nom du fichier à exporter. Dans le cas d’un export d’image ou
                                             de vidéo, le paramètre « Nom de fichier » devient le modèle

                                             des noms des fichiers exporter.
        Login Non Login de connexion à la machine distante

        Mot de passe Non Mot de passe de connexion à la machine distante
        Paramétrage

        Nombre de Oui Nombre de tentatives successives d’export avant
        tentatives déclenchement d’un échec

        Nombre d’échecs Oui Nombre d’échecs successifs avant déclenchement d’une
                                             alarme

        Délais entre Oui Délais entre deux tentatives successives
        tentatives

        Coefficients de Non Coefficient appliqué à l’ensemble des données exportées.
        conversion
        Horodatage TU Non Indicateur d’horodatage des données contenues dans le

                                             fichier exporté (local ou TU).
        Alarme Non Indicateur de transmission des alarmes sur messagerie vocale
        Transmissible

        Compression du Non Indicateur de compression du fichier : permet d’exporter un
        fichier fichier compressé au format 7z

        Destinataire XML SANDRE ( cas du format SANDRE)
        Code du Oui Identifiant du service destinataire du fichier ( identifiant du

        destinataire SCHAPI pour export vers PHYC-PHYL)
        Type de destinataire Oui Choix par menu déroulant (SANDRE pour exports vers PHYC-
                                             PHYL)

        Nom du destinataire Oui nom du service destinataire du fichier ( SCHAPI pour export
                                             vers PHYC-PHYL)

        Planifications

        Planifications Non Gestion des planifications pour l’export courant

             6.14.4 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives à l’export courant puis sélectionner le format de fichier
attendu ainsi que le protocole de transfert utilisé, éventuellement le modèle associé et la collecte
responsable du déclenchement de l’export, puis saisir les informations de transfert de fichier, ceux de

gestion des échecs / alarmes puis finalement gérer les planifications associées.

                                                  136

---

## Page 137

MANUEL UTILISATEUR
                                                       Aquaréel

Il est possible de déclencher un export via l’interface de gestion des exports en appuyant sur le bouton

« Exporter » ou à partir du menu contextuel « Exporter l’item sélectionné ». L’export correspondant à la
ligne sélectionnée est alors déclenché manuellement.

Seuls les exports actifs peuvent être déclenchés manuellement, autrement, le bouton est « grisé ».

              6.14.5 Particularités

Si aucune planification n’est réalisée ni aucun profil référencé, l’export est considéré comme non actif.

De même, si l’on supprime la dernière planification rattachée à un export, il est automatiquement
désactivé. Dans le cas du protocole CIFS, il n’est pas possible de saisir le login et le mot de passe de
connexion, les champs automatiquement sont grisés.

                                                     137

---

## Page 138

MANUEL UTILISATEUR

                                                       Aquaréel

    • format de fichier de type « PRE » : il ne peut y avoir dans le modèle sélectionné qu’au plus un seul
        capteur DEBIT, qu’un seul capteur LIMNI et qu’un seul capteur PLUVIO pour une station donnée.

    • Formats de type XML SANDRE : des champs de paramétrages spécifiques apparaissent

    • Format XML-LNS : il s’agit d’exporter en l’état un fichier qui été collecté et stocké dans Aquaréel

    • Formats csv : Par défaut le format d’export csv de l’application contient 4 colonnes : « date

        heure » ; « nom de la station » ; « type de mesures » ; « valeur »

        ◦ Il est possible faire ajouter au support technique de nouveaux formats csv contenant des
            colonnes complémentaires adaptées à leur besoin ( Ajout du code capteur, du bassin versant)

              6.14.6 Les exports des images et des vidéos

Lorsque le format d’export de fichier est de type « IMAGE » ou « VIDEO », le nom de fichier de l’export
permet de spécifier le modèle de génération du nom des fichiers exportés.

Les parties dynamiques du modèle sont paramétrables en utilisant les caractères spéciaux suivants :

    • # : Le nom de la station

    • [Format de la date] : La date de création du fichier

Le bouton d’aide situé à droite du champ de saisi du « Nom de fichier » ouvre l’assistant de saisi du modèle

d’export des images et des vidéos. Cet assistant liste les modèles préenregistrés dans la base de données.

Par exemple

Le Nom de fichier « Export_#_[dd MM yyyy-HH mm ss] » permet par exemple d’exporter pour la station de
Montpellier, le fichier image « Export_Montpellier_10 12 2016-05 44 59.jpg ».

Principaux formats des dates

    • dd : Jour du mois, de 01 à 31.

    • HH : Heure, au format de 12 heures, de 01 à 12.

    • mm : Minute, définie entre 00 et 59.

    • MM : Mois, de 01 à 12.

                                                      138

---

## Page 139

MANUEL UTILISATEUR

                                           Aquaréel

• ss : Seconde, de 00 à 59.

• yyyy : Année, en tant que nombre à quatre chiffres.

                                         139

---

## Page 140

MANUEL UTILISATEUR
                                                       Aquaréel

         6.15 Alimentation du référentiel de l’application



        Focus sur le référentiel:

        Aquaréel contient des informations référentielles permettant de faciliter et rendre cohérente la saisie
        des informations de paramétrage :

        Certaines de ces informations sont paramétrables depuis le client Aquaréel.

             Les bassins de regroupement et les cours d’eau pour classifier les stations dans le tableau des
                dernières mesures. Les bassins contiennent plusieurs cours d’eau. Un cours d’eau n’est
                rattaché qu’à un seul bassin

             Les types de capteurs pour inventorier les types de matériels rencontrés en précisant le type
                de mesure (limni, débit,pluie) ainsi que l’unité de la mesure par défaut.

             Les voies par type de station pour identifier chaque capteur sur la station. (Nota : Seules les
                stations de type PLQ2000 sont gérées dans Aquaréel)

             Les types de seuil utilisé pour la détection d’alarmes hydrologiques

             Les types de rubrique hydrologiques :

            Les types de rubrique hydrologiques permettent par association avec les capteurs de créer des
            rubriques, outil d’exploitation des données dans Aquaréel.

            On distingue 2 types de rubrique

                         Les rubriques simples qui classifient les mesures fournies par les capteurs (ex :
                            Limni1, Limni2, Pluie 5mn, Débit…)

                         Les rubriques calculées qui classifient et transforment, à partir de fonctions de
                            calculs, les mesures fournies par les capteurs pour proposer de nouvelles
                            grandeurs hydrologiques (ex : Cuml1h, Cumul24h, Gradient1h, débit calculé….)

                            Les fonctions utilisées pour les rubriques calculées sont :

                                o Cumul : calcul de cumul pluviométrique sur une profondeur paramétrable
                                o Débit : Calcul des débits à partir des courbes de tarage

                                o Gradient : Calcul du gradient entre 2 valeurs séparées d’un intervalle
                                    paramétrable

                                                     140

---

## Page 141

MANUEL UTILISATEUR

                                           Aquaréel

  Les types de protocole :

 Les types de protocoles permettent de définir des types de canaux de collecte par association
 aveclestypes demédia. Par exemple,letypede protocolePLQ2000 associé autype demédiaRTC
 permet de définir le type de canal de collecte RTC/PLQ2000/pull. Aquaréel exploite 4 types de

 protocole : le PLQ2000, le SMI, le XML-LNS et le SMS-LNS
  Pour les types de protocole PLQ2000, XML-LNS et SMS-LNS certains paramètres communs à la

  collecte de toutes les stations sont paramétrables
  Les types de rubriques techniques :

Les types de rubrique technique permettent par association avec les capteurs, les stations ou les
canaux de collecte, de créer des rubriques, outil d’exploitation des données techniques dans
Aquaréel.

Un certain nombre de type de rubriques techniques sont pré-paramétrées. L’utilisateur peut en
ajouter d’autres sur la base de fonctions de calculs prédéfinies.

Les rubriques sont créées ou modifiées automatiquement dès qu’un élément participant à sa
définition est mis à jour dans l’application (type de rubrique, capteur, canal de collecte...)

Comme pour l’exploitation hydrologique, on distingue 2 grands types de rubriques :
    • Les types de Rubriques simples permettent de classifier les informations techniques

        stockées
        ◦ Tensions

        ◦ Température système

        ◦ Indicateurs d’états liés aux capteurs, stations et canaux
    • Les types de rubriques calculées pour élaborer :

        ◦ le taux de données manquantes : à partir d’un capteur
        ◦ le taux d’échec de collecte (profondeur): à partir d’un canal

        ◦ le volume de données (profondeur) : à partir d’un canal

        ◦ le delta entre 2 capteurs: à partir d’un capteur
        ◦ le délai de disponibilité des mesures: à partir d’un capteur

Pour chacune des types de rubriques techniques, excepté pour les indicateurs d’états, des seuils
par défaut peuvent être paramétrés. Ces seuils par défaut permettent de définir une même
appliquer la même valeur de seuil à l’ensemble des rubriques du même type. Quelques seuils par

défauts sont pré-paramétrés.

                                         141

---

## Page 142

MANUEL UTILISATEUR

                                                        Aquaréel

              6.15.1 Paramétrage des bassins versants

                   6.15.1.1 Présentation

Cette interface permet la gestion des différents bassins versants présents dans l’application.

Elle est accessible via le menu « Paramétrage / Référentiels » ou en appuyant sur le bouton « Référentiels »
puis en choisissant l’onglet « Paramétrage des bassins versants ».

                   6.15.1.2 Composition de la liste

Au niveau de la liste des éléments créés, seul le libellé du bassin est affiché.

                   6.15.1.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                 Entrée Obligatoire Fonction

         Libellé Oui Libellé du bassin versant

                   6.15.1.4 Utilisation du formulaire

L’utilisateur doit saisir le libellé du bassin versant.

                   6.15.1.5 Particularités

Il n’est pas possible de supprimer un bassin versant si des cours d’eau y sont encore rattachés.

                                                      142

---

## Page 143

MANUEL UTILISATEUR

                                                       Aquaréel

              6.15.2 Paramétrage des cours d’eau

                  6.15.2.1 Présentation

Cette interface permet la gestion des différents cours d’eau présents dans l’application.

Elle est accessible via le menu « Paramétrage / Référentiels » ou en appuyant sur le bouton « Référentiels »
puis en choisissant l’onglet « Paramétrage des cours d’eau ».

                  6.15.2.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

• le libellé du cours d’eau,

• le bassin versant de rattachement.

                  6.15.2.3 Composition du formulaire de saisie

Le formulaire de saisie se compose des éléments suivants :

                 Entrée Obligatoire Fonction

         Libellé Oui Libellé du cours d’eau
         Bassin versant Oui Bassin versant associé

                  6.15.2.4 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives au cours d’eau puis sélectionner un bassin versant parmi

ceux disponibles au sein de l’application.

                                                      143

---

## Page 144

MANUEL UTILISATEUR
                                             Aquaréel

               6.15.2.5 Particularités

Il n’est pas possible de supprimer un cours d’eau si des stations y sont encore rattachées.

                                           144

---

## Page 145

MANUEL UTILISATEUR
                                                     Aquaréel

             6.15.3 Paramétrage des voies

                  6.15.3.1 Présentation

Cette interface permet la gestion des différentes voies (ou canaux de communication) présentes dans
l’application.

Elle est accessible via le menu « Paramétrage / Référentiels » ou en appuyant sur le bouton « Référentiels »

puis en choisissant l’onglet « Paramétrage des voies ».

                  6.15.3.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

• le type de voie,

• l’indice,

• le type de station

                  6.15.3.3 Composition du formulaire de saisie

Le formulaire de saisie se compose des éléments suivants :

                Entrée Obligatoire Fonction

         Type de voie Oui Choix des types de voies exploitables dans la station
         Indice Oui Numéro d’indice pour le type de voie choisi

         Type de station Oui Type de station associé (LNS ou CPL)
         Code so Code de la voie (ex : A3, 60, …) déduit du type de voie et de

                                              l’indice par l’application( lecture)
         Discriminant so Discriminant de la voie (ex : 256,258, …) déduit du type de
                                              voie et de l’indice par l’application( lecture)

                  6.15.3.4 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives à la voie puis sélectionner un type de station parmi ceux
disponibles au sein de l’application.

Le type LNS permet d’étendre la codification des capteurs.

                                                    145

---

## Page 146

MANUELUTILISATEUR
                                              Aquaréel

               6.15.3.5 Particularités

Il n’est pas possible de supprimer une voie si des capteurs y sont encore rattachés.

Le code de la voie doit obligatoirement être unique.

                                             146

---

## Page 147

MANUEL UTILISATEUR

                                                    Aquaréel

             6.15.4 Paramétrage des types de rubrique

                 6.15.4.1 Présentation

Cette interface permet la gestion des différents types de rubriques présents dans l’application.

Elle est accessible via le menu « Paramétrage / Référentiels » ou en appuyant sur le bouton « Référentiels »
puis en choisissant l’onglet « Paramétrage des types de rubrique ».

                 6.15.4.2 Composition de la liste
Les types de rubriques sont scindées en deux groupes :

• Hydrologique,

• Technique.

Au niveau de la liste des éléments créés, sont affichés :

• le libellé du type de rubrique,

• son code interne,

• Son ordre d’affichage

• Son type de mesure,

• La fonction de calcul utilisée

• Le type de mesure source utilisée pour alimenter la rubrique

• La profondeur du calcul.

                 6.15.4.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                Entrée Obligatoire Fonction

        Libellé Oui Libellé du type de rubrique
        Libellé phonétique Non Libellé phonétique utilisé pour les alarmes vocales

        Code Oui Le code interne du type de rubrique

        Type Oui La constitution de chaque type de rubrique fait référence à :
                                                 • un type de mesure

                                                 • une fonction de calcul (pour les rubriques calculées)

                                                  147

---

## Page 148

MANUEL UTILISATEUR

                                                      Aquaréel

                                                   • un type de mesure source (pour les rubriques
                                                       calculées s’il peut être différent de celui de la
                                                       rubrique)

         Ordre Oui Numéro d’ordre d’affichage du type de rubrique courant par

                                               rapport au référentiel. Est utilisé uniquement pour l’affichage
                                               au sein de l’application cliente.
         Profondeur Non Permet de déterminer, pour les calculs de cumul ou de

                                               gradient la profondeur (ou intervalle) de calcul.

                  6.15.4.4 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives au type de rubrique puis sélectionner dans la boite de
dialogue sa constitution et finalement insérer un ordre d’affichage, puis éventuellement un nombre de
points.

                              Paramétrage des types de rubrique hydrologique

                                                    148

---

## Page 149

MANUEL UTILISATEUR

                                                   Aquaréel

                            Paramétrage des types de rubrique technique

              6.15.4.5 Particularités

• Le code du type de rubrique doit obligatoirement être unique.

• Pour les types de rubriques techniques :

    ◦ le bouton « Lancement Réinitialisation » force la suppression puis la création de toutes les
        rubriques techniques d’une instance de base Aquaréel.

    ◦ Selon le type d’indicateur choisi, l’utilisateur devra paramétrer des éléments complémentaires
        suivants:

        ▪ la rubrique hydrologique associée pour les types de rubriques techniques référençant un
            capteur

                                                 149

---

## Page 150

MANUEL UTILISATEUR

                                           Aquaréel

▪ le type de canal de collecte associé pour les types de rubriques techniques référençant un
    canal de collecte

▪ la profondeur pour les types de rubriques nécessitant une profondeur de calcul

                                         150

---

## Page 151

MANUEL UTILISATEUR

                                                      Aquaréel

              6.15.5 Paramétrage des types de seuil

                  6.15.5.1 Présentation

Cette interface permet la gestion des différents types de seuils utilisés au sein de l’application afin

d’identifier un épisode de crue ou .

Elle est accessible via le menu « Paramétrage / Référentiels » ou en appuyant sur le bouton « Référentiels »
puis en choisissant l’onglet « Paramétrage des types de seuil ».

                  6.15.5.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

    • le libellé du type de seuil,

    • son code interne,

    • l’ordre d’affichage des seuils dans l’application.

    • La couleur d’affichage du type de seuil dans le tableau des dernières mesures

                  6.15.5.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                 Entrée Obligatoire Fonction
         Seuil oui Choix d’affichage des types de seuils Hydrologique ou

                                               technique
         Libellé Oui Libellé du type de seuil

         Code Oui Code interne du type de seuil
         Ordre Oui L’ordre d’affichage du type de seuil courant dans les interfaces

                                               de l’application. Détermine notamment la couleur du
                                               pictogramme à afficher dans le tableau des dernières mesures
                                               lorsque plusieurs seuils sont dépassés pour une même
                                               rubrique.

         Couleur Oui La couleur d’affichage du type de seuil dans le tableau des
                                               dernières mesures. (pictogramme) ou dans la carte du client
                                               léger

         Description Non Texte de description du type de seuil
         Hydrologique Oui Indique si le type seuil est hydrologique. Lorsque la case est

                                               décochée il s’agit d’un type seuil technique.

                                                    151

---

## Page 152

MANUEL UTILISATEUR

                                                        Aquaréel

                   6.15.5.4 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives au type de seuil puis saisir l’ordre d’affichage de l’élément
dans la liste.

Il n’est pas possible de supprimer un type de seuil si des seuils y sont encore rattachés.

                   6.15.5.5 Particularités

Le code du type de seuil doit obligatoirement être unique.

Certains types de seuils sont pré-paramétrés :

    • Types de seuils hydrologiques

        ◦ Seuil alarme station : Non valué dans Aquaréel mais permettant d’exploiter les alarmes
             hydrologiques envoyées par les stations.
        ◦ Seuil jaune

        ◦ Seuil Orange

        ◦ Seuil Rouge
    • Type de seuil technique :

        ◦ Seuil critique

                                                      152

---

## Page 153

MANUEL UTILISATEUR

                                                     Aquaréel

             6.15.6 Paramétrage des types de capteur

                  6.15.6.1 Présentation

Cette interface permet la gestion des différents types de capteurs présents dans l’application.

Elle est accessible via le menu « Paramétrage / Référentiels » ou en appuyant sur le bouton « Référentiels »
puis en choisissant l’onglet « Paramétrage des types de capteur ».

                  6.15.6.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

• le libellé du type de capteur,

• son code interne,

• le type de mesure associé,

• l’unité de mesure par défaut.

                  6.15.6.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

                Entrée Obligatoire Fonction
         Libellé Oui Libellé du type de capteur

         Code Oui Code interne du type de capteur

         Type de mesure Oui Type de mesure associé
         Unité de mesure par Oui Unité de mesure par défaut.
         défaut
                                              Le système propose les unités disponibles pour le type de
                                              mesure choisi.

         Mesure cumulée Non Indicateur précisant s’il s’agit d’un type de capteur contrôlant
                                              des mesures cumulées ou non.

                  6.15.6.4 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives au type de capteur puis sélectionner un type de mesure et
une unité de mesure par défaut parmi ceux disponibles au sein de l’application. Il indique finalement si le
type de capteur utilise ou non des mesures cumulées.

                                                   153

---

## Page 154

MANUEL UTILISATEUR
                                                       Aquaréel

                  6.15.6.5 Particularités

Il n’est pas possible de supprimer un type de capteur si des capteurs y sont encore rattachés.

Le code du type de capteur doit obligatoirement être unique.

              6.15.7 Paramétrage des types de protocoles

                  6.15.7.1 Présentation

Cette interface permet la gestion des différents types de protocole présents dans l’application.

Elle est accessible via le menu « Paramétrage / Référentiels » ou en appuyant sur le bouton « Référentiels »
puis en choisissant l’onglet « Paramétrage des types de protocole ».

                  6.15.7.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

• Le libellé du type de protocole

                  6.15.7.3 Composition du formulaire de saisie

Le formulaire de saisie se compose des éléments spécifiques au type de protocole choisi.

    • pour le type de protocole PLQ2000 les éléments suivants sont à renseigner :

                                                     154

---

## Page 155

MANUEL UTILISATEUR

                                                Aquaréel

            Entrée Obligatoire Fonction
     CodePLQ2000CC Oui Code hexadécimal présentant le code PLQ2000 du

                                         concentrateur. Il est constitué de 3 parties:
                                             • CC limité à 63 (Code pays)

                                             • COM limité à 4095
                                             • TX limité à 4095

                                         Particularité : Deux stations ne peuvent pas disposer d’un
                                         média avec le même code d’accès.

     TAC Oui Temps d'acquittement (ms). Ce paramètre définit le temps
                                         maximum

                                         pendant lequel une station attend un acquittement avant de
                                         répéter le message ou le groupe de messages précédemment

                                         émis

     TALT Oui Temps (ms) devant s’écouler entre le positionnement du

                                         signal RTS
                                         par la station et le début de l’émission du premier bloc de

                                         données d’un message.

     TT Oui Temps maximum d'émission (ms). Ce paramètre est utilisé par
                                         le

                                         protocole pour déterminer le nombre de blocs constituant un

                                         message, ou le nombre de messages constituant un groupe de
                                         messages

     Nombre messages Oui Définit l’acquittement du récepteur tous les n messages ceci
     avant acquittement afin de limiter le nombre de messages à réémettre en cas

                                         d'erreur de transmission

• Pour le type de protocole SMS-LNS les éléments suivants sont à renseigner :

            Entrée Obligatoire Fonction

     Commande Reboot Oui Texte de commande pour « rebooter » la station LNS. A saisir
                                         en conformité avec celui configuré sur les stations

     Commande Oui Texte de commande pour déclencher la connexion de la
     Connexion station LNS sur le réseau IP. A saisir en conformité avec celui
                                         configuré sur les stations

     Commande 3 Oui Autre texte de commande

                                               155

---

## Page 156

MANUELUTILISATEUR
                                      Aquaréel

Commande 4 Oui Autre texte de commande

        6.15.7.4 Utilisation du formulaire

                                    156

---

## Page 157

MANUEL UTILISATEUR

                                                       Aquaréel

             6.15.8 Paramétrage des frontaux de collecte IP

Focus sur le frontal de collecte IP :

Le frontal de collecte IP est un composant d’Aquaréel ( application Web) en charge de collecter les
stations communiquant en TCP-IP sur le protocole http via le port TCP8080.

En cas d’architecture en haute disponibilité chaque Service Frontal IP est à déclarer dans la base active en
référençant son site d’appartenance. A noter que contrairement aux autres services Aquaréel, une

instance peut disposer de plusieurs frontaux IP

Chaque Service Frontal IP dispose d’un module de collecte IP push qui est constitué d’un service web qui
réalise la communication avec les stations LNS (collecte des données, adressage des commandes) en

relation avec la base de données d’Aquaréel.

Pour que le frontal de collecte IP fonctionne, l’utilisateur doit au préalable le configurer dans l’application
au travers du client windows. Pour chaque frontal les informations suivantes doivent être saisies :

    • le site de rattachement : Instance Aquaréel à laquelle appartient le frontal IP

    • le libellé du frontal : en cohérence avec celui choisi lors de l’installation du frontal
        (SIC_1,SIC_2,SIC_3 ou SIC_4)

    • pour le module de collecte IP, les identifiants et mot de passe permettant aux stations de

        s’authentifier lors de l’envoi de leurs mesures.

- Démarrage du frontal IP :

Dès son démarrage le Frontal IP vient récupérer dans la base de données à laquelle il est rattaché ses
informations de références puis insère un événement de démarrage dans le journal des événements. S’il

ne trouve pas ses références :

  • Si la base référencée n’est pas disponible : le service trace dans son fichier de log cette indisponibilité
et retente périodiquement d’interroger cette base pour récupérer ses références

  • Il ne trouve pas ses références en base ( incohérence entre les paramètres saisis dans l’application et

ceux saisis dans le frontal) : il renvoie dans le journal des événements de la base active, un événement
d’erreur de démarrage indiquant qu’il n’est pas correctement référencé.

- Activation du module de collecte IP :

L’activation du module de collecte IP est gérée par l’utilisateur depuis le menu des composants comme les
autres modules de l’application. Lors de son activation, le module de collecte IP vient récupérer son

identifiant et son mot de passe. Lorsqu’il est activé les collectes IP sur le canal IP/XM-LNS/Push peuvent
être exploitées.

                  6.15.8.1 Présentation

                                                      157

---

## Page 158

MANUEL UTILISATEUR

                                                     Aquaréel

Cette interface permet la gestion des différentes instances de frontal de collecte IP définis sur AquaReel.

Elle est accessible via le menu « Paramétrage / Référentiels » ou en appuyant sur le bouton « Référentiels »
puis en choisissant l’onglet « Paramétrage des frontaux de collecte IP ».

                  6.15.8.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

le code du frontal de collecte ,

son libellé,

son site de rattachement.

                  6.15.8.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

         Entrée Obligatoire Fonction

         Propriétés du frontal de Collecte IP

         Code Lecture Code du frontal de collecte IP

         Libellé Lecture Libellé du frontal de collecte IP

         Site de Non Site de rattachement du frontal de collecte.
         rattachement

         Module de collecte IP

         Module Lecture Code du module de collecte IP. Mis à jour automatiquement
                                              selon le nom du Sic sélectionné

         Libellé Lecture Libellé du module de collecte IP

         Identifiant Non Identifiant de connexion au module

         Mot de passe Non Mot de passe de connexion au module

                  6.15.8.4 Utilisation du formulaire
Par défaut le système est configuré pour fonctionner avec au maximum 4 frontaux de collecte IP pour une

instance d’AquaReel.

                                                    158

---

## Page 159

MANUELUTILISATEUR
                                              Aquaréel

Pour chaque frontal IP déployé, l’utilisateur doit saisir les informations de configuration nécessaire au

fonctionnement.

Nota : Le paramétrage des frontaux doit être réalisé en cohérence avec le déploiement du composant
frontal_IP ( Site de rattachement et nom du SIC)

               6.15.8.5 Particularités
N/A

                                             159

---

## Page 160

MANUEL UTILISATEUR
                                                     Aquaréel

             6.15.9 Paramétrage des services

                  6.15.9.1 Présentation

L’exploitation des stations hydrologiques est répartie entre différents services du réseau d’hydrométrie et
de prévision des crues. AquaReel permet de configurer, sur chaque station, les services ayant une activité

sur la station ( collecte, maintenance, gestion...) afin de pouvoir filtrer dans le client léger les stations à
consulter selon le service d’appartenance de l’utilisateur.

                  6.15.9.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

le code du service gestionnaire

son libellé.

                  6.15.9.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

         Entrée Obligatoire Fonction

         Code Oui Code du service gestionnaire

         Libellé Oui Libellé du service

                  6.15.9.4 Utilisation du formulaire

L’utilisateur doit saisir un code et un libellé associés à un nouveau service.

Il n’est pas possible de supprimer un service existant si des éléments lui sont rattachés.

                                                    160

---

## Page 161

MANUELUTILISATEUR
                                              Aquaréel

               6.15.9.5 Particularités

Tous les services du réseau d’hydrométrie et de prévision des crues du réseau Vigicrues sont pré-
paramétrés.

                                             161

---

## Page 162

MANUEL UTILISATEUR
                                                   Aquaréel

     7 Configuration diverse

         7.1 Paramétrage des modèles

             7.1.1 Paramétrage des modèles

Cette interface permet la gestion des différents modèles présents dans l’application.

L’interface est accessible via le menu « Paramétrage / Divers » ou en appuyant sur le bouton « Divers » puis

en choisissant l’onglet « Paramétrage des modèles ».

             7.1.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

• le libellé du modèle,

• la période associée.

             7.1.3 Composition du formulaire
Le formulaire de saisie se compose des éléments suivants :

                Entrée Obligatoire Fonction

        Type Oui Type de modèle : Rubriques hydrologiques ou rubriques
                                            techniques
        Libellé Oui Libellé du modèle

        Description Oui Texte de description du modèle

        Plage de temps Oui Plage de temps conservé pour le modèle ( exprimée par
                                            période glissante ou bornée)
        Pas de temps Oui Pas de temps appliqué au capteur lors de l’export.

        Rubriques Non Liste des rubriques disponibles sur l’ensemble de toutes les
        disponibles stations.

        Rubriques Oui Liste des rubriques concernées par le modèle en cours.
        sélectionnées

             7.1.4 Utilisation du formulaire

L’utilisateur doit saisir les informations relatives au modèle puis sélectionner une plage de temps.

                                                 162

---

## Page 163

MANUEL UTILISATEUR
                                                       Aquaréel

Pour la plage de temps, il peut soit :

• Choisir une date de référence (sélection de type « Depuis ») puis un nombre et finalement une unité de

    temps parmi la liste proposée (minutes, heure, jour, mois, année). Le modèle reste actif sur une
    période glissante.

• Choisir une période de temps (sélection de type « Entre ») en sélectionnant une date et heure de début

    et une date et heure de fin.

L’utilisateur peut affecter ou supprimer des rubriques pour le modèle courant en sélectionnant une ou

plusieurs rubriques puis en appuyant sur les boutons respectifs « Ajouter » ou « Supprimer ».

Le bouton « afficher » permet d’éditer une fenêtre de paramétrage de rapport préremplie avec les
éléments du modèle

              7.1.5 Particularités
Un modèle doit obligatoirement être relié à une rubrique.

En cas de sélection d’un modèle de type « hydrologique » seules les rubriques hydrologiques sont

proposées à l’utilisateur

En cas de sélection d’un modèle de type «technique» seules les rubriques techniques sont proposées à
l’utilisateur

                                                      163

---

## Page 164

MANUEL UTILISATEUR

                                                       Aquaréel

Il n’est pas possible de supprimer un modèle s’il est utilisé par un export.

Un modèle déjà utilisé par un export de type « PRE » ne peut avoir qu’au plus un seul capteur DEBIT, qu’un
seul capteur LIMNI et qu’un seul capteur PLUVIO pour une station donnée.

Un modèle contenant plus de 60 rubriques ne peut être affiché pour une question de capacité d’affichage.

Rubrique images
 Ajout d’un bouton « Ajouter les rubriques images » permettant d’ajouter à la sélection courante
    l’ensemble des rubriques de type « images » appartenant aux stations des rubriques déjà

    sélectionnées.

 Ajout d’un bouton « Supprimer les rubriques images » permettant de retirer à la sélection courante
    l’ensemble des rubriques de type « images ».

                                                     164

---

## Page 165

MANUEL UTILISATEUR
                                                      Aquaréel

         7.2 Paramétrage des vues

              7.2.1 Présentation
Cette interface permet la gestion des différentes vues de regroupement présentes dans le tableau des

dernières mesures de du client windows et du client léger. Chaque vue désigne un ensemble de stations
ayant des propriétés communes (géographiques, …).

L’interface est accessible via le menu « Paramétrage / Divers » ou en appuyant sur le bouton « Divers » puis
en choisissant l’onglet « Paramétrage des vues ».

              7.2.2 Composition de la liste
Au niveau de la liste des éléments créés, sont affichés :

• le libellé de la vue,

• le type de regroupement associé,

• l’ordre d’affichage.

              7.2.3 Composition du formulaire
Le formulaire de saisie se compose des éléments suivants :

                 Entrée Obligatoire Fonction

         Libellé Oui Libellé de la vue de regroupement
         Type de Oui Type de regroupement associé à la vue (Aucun, bassin versant
         regroupement ou cours d’eau)

         Ordre d’affichage Oui Ordre d’affichage des vues dans les interfaces de l’application
                                               (onglets du tableau des mesures courantes, …).

         Stations disponibles Non Liste des stations non affectées à la vue de l’application
         Stations affectées Oui Liste des stations affectées à la vue.

              7.2.4 Utilisation du formulaire
L’utilisateur doit saisir les informations relatives à la vue puis sélectionner un type de regroupement et une

liste de stations parmi ceux disponibles au sein de l’application et finalement saisir un numéro d’ordre
d’affichage.

L’utilisateur peut affecter ou supprimer des stations pour la vue de regroupement courante en
sélectionnant une ou plusieurs stations puis en appuyant sur les boutons respectifs « Ajouter » ou

« Supprimer ».

                                                    165

---

## Page 166

MANUEL UTILISATEUR

                                                       Aquaréel

              7.2.5 Particularités
Une vue doit obligatoirement disposer d’au moins une station.

Par défaut le système affiche une vue générale non paramétrable qui n’est pas modifiable par l’utilisateur.

L’utilisateur ne peut ajouter plus de 9 vues.

         7.3 Paramètres généraux

              7.3.1 Présentation

Cette interface permet la gestion des différents paramètres applicatifs présents dans l’application cliente.

Chaque paramètre peut être utilisé soit par l’application cliente, soit par un autre service (collecte,
import/export, alarmes, …).

L’interface est accessible via le menu « Paramétrage / Divers » ou en appuyant sur le bouton « Divers » puis
en choisissant l’onglet « Paramétrage de l’application ».

Certains paramètres sont affichés à titre informatif et ne sont pas modifiables au sein de l'interface

graphique.

L’utilisateur peut modifier les paramètres suivants :

                                                   description Valeur par
 Type de paramètre
                                                                                                  défaut
                      Durée d’activation du mode crise 800

                      (en minute)
      Affinage nombre maximal d’alarmes du même type et par bassins, transmises par appel vocal
                      (format : entier) 2

                                                     166

---

## Page 167

MANUEL UTILISATEUR

                                                                 Aquaréel

                                                            description Valeur par
Type de paramètre
                                                                                                                    défaut

                         Antériorité de prise en compte des alarmes du même type transmises par bassin 12
                         (en heure)

                         Monitoring du système:
                                                                                                               60
                          Seuil d'avertissement de durée anormalement longue d'affinage en base
                          (secondes)

                         Discriminant de la voie température : 1055
                         Discriminant du capteur réservé pour le stockage et l’exploitation de la mesure de
                         température fournie par la station LNS. ( Ce discriminant ne pourra pas être utilisé
                         pour d’autres types de capteurs)

                         Discriminant de la voie tension:
                                                                                                               1054
                         Discriminant du capteur réservé pour le stockage et l’exploitation de la mesure de
                         tension fournie par la station LNS. ( Ce discriminant ne pourra pas être utilisé pour
                         d’autres types de capteurs)

                         nombre maximal d’alarmes du même type et par bassins, transmises par appel vocal 2
                         (format : entier)

                         Numéro de sms de test :
                                                                                                               330000000000
                         Numéro de sms utilisé pour tester l’envoi de sms lors du démarrage du service
       Alarmes d’alarme

                         Antériorité de prise en compte des alarmes du même type transmises par bassin 12
                         (en heure)

                         Le téléphone par défaut de l’opérateur d’astreinte 0

                         Antériorité de rétention des mesures dans la base de prod (j) avant purge ou 90
                         archivage
                         (jours)

                         Antériorité de rétention des mesures techniques dans la base de prod (j) avant purge 15
                         ou archivage
                         (jours)

                         Antériorité de rétention des indicateurs d’état dans la base de prod (j) avant purge ou
                         archivage 15

                         (jours)

      Archivage Antériorité de rétention des fichiers dans la base de prod (j) avant purge ou archivag90
                         (jours)

                         Activation/désactivation de la conservation en base archive des mesures dépassant
                         l'antériorité de conservation en production 0

                         (0= Archivage désactivé / 1= Archivage activé)
                         géré également depuis le menu d’activité des composants

                         Le site principal est l'instance Aquaréel accueillant la base Archive. En cas de « Nom du site »
                         configuration en haute disponibilité ( multi sites), la base archive n'est présente que
                         sur 1 site (saisi lors de
                                                                                                               l’installation)
                         (code de la table des sites)

        Client Intervalle de rafraîchissement automatique des menus de consultation du client 60
                         (en seconde)

                                                               167

---

## Page 168

MANUEL UTILISATEUR

                                                                  Aquaréel

                                                             description Valeur par
Type de paramètre
                                                                                                                      défaut

                         Durée d’activation du mode crise 800
                         (en minute)

                         Profondeur par défaut de recherche des événements dans le menu surveillance
                                                                                                                1
                         (en nombre de jours)

                         Profondeur de données du graphe radio affiché depuis le menu de surveillance 2880
                         (en minutes)

                         nombre maximal d’alarmes du même type et par bassins, transmises par appel vocal 2

                         (format : entier)

                         Antériorité de prise en compte des alarmes du même type transmises par bassin 12
                         (en heure)

                         Activation de l’affichage de la colonne des images dans le tableau des mesures. 1
                         1 : affichage activé

                         0 : affichage désactivé

                         Profondeur par défaut de recherche des fichiers dans le menu de consultation des 3
                         images
                         (en nombre de jours)

                         Nombre max de fichiers à afficher dans le menu de consultation des images
                                                                                                                30
                         (format : entier)

                         Fréquence de mise à l'heure PLQ2000 des stations en RTC et GSM (jours) 3
                         Valeur 0 pour déscativer la mise à l’heure

                         Fréquence de mise à l'heure de l’équipement Radio Scorpion connecté au 1
                         concentrateur
                         (en jour)

                         Fonction référence d’horloge du réseau Scorpion

                         Persistance maximale des ordres de collecte et d’échange non traités avant 15
                         suppression auto
                         (en minute)
       Collecte
                         Nombre de périodes sans collecte (Ptn ou Pta) déclenchant une alarme sur la station
                         concernée 5

                         (entier)

                         Nombre maximal de collectes simultanées autorisées 100
                         (format : entier)

                         Marque indiquant que si l'on doit faire la mise à l'heure RTC quand la station possède
                         une collecte radio 1

                         1 : faire mise à l’heure
                         0 : Ne pas faire de mise à l’heure

                         Le téléphone par défaut de l’opérateur d’astreinte 0

    composants secours de secours Force la réalisation systématique des échanges par le service de 0

                           (1= forçage activé, 0= forçage désactivé)
                         géré également depuis le menu d’activité des composants

                                                               168

---

## Page 169

MANUEL UTILISATEUR

                                                              Aquaréel

                                                          description Valeur par
Type de paramètre
                                                                                                               défaut

                        échange de secours: Délai de prise en compte de l'ordre d'échange avant 30
                        récupération par le service de secours

                         (en minutes)

                        Export XML Sandre: Valeur du noeud SCENARIO/EMETTEUR/CDINTERVENANT
                        ( format : texte)

                        Export XML Sandre: Attribut schemeAgencyID du noeud
                        SCENARIO/EMETTEUR/CDINTERVENANT SANDRE

                        ( format : texte)

                        Export XML Sandre: Attribut SCHEMEID du noeud
                        SCENARIO/EMETTEUR/CDINTERVENANT
                        (??)

                        Export XML Sandre: Valeur du noeud SCENARIO/EMETTEUR/CDCONTACT

                        (format : entier)

                        Export XML Sandre: Système altimétrique 31
                        (format : entier)

                        Export XML Sandre: Contact des données pluvio

                        (format : entier)

      echanges Export XML Sandre: Valeur du noeud SCENARIO/EMETTEUR/NOMSERVICE
                        (format : texte)

                        Nombre maximal d'échanges traités simultanément par le service d'échange
                                                                                                          3
                        (format : entier)

                        Nombre maximal d'échanges simultanés autorisés 40
                        (format : entier)

                        Export XML Sandre: Valeur du noeud SCENARIO/EMETTEUR/NOMINTERVENANT

                        (Format : texte)

                        échange de secours Force la réalisation systématique des échanges par le service d0
                        secours
                         (1= forçage activé, 0= forçage désactivé)

                        géré également depuis le menu d’activité des composants

                        échange de secours: Délai de prise en compte de l'ordre d'échange avant 30
                        récupération par le service de secours
                         (en minutes)

                        Activation de l’affichage de la colonne des images dans le tableau des mesures.
                                                                                                          1
                        1 : affichage activé
                        0 : affichage désactivé

                        Profondeur par défaut de recherche des fichiers dans le menu de consultation des
       Images images 3

                        (en nombre de jours)

                        Nombre max de fichiers à afficher dans le menu de consultation des images 30
                        (format : entier)

                                                            169

---

## Page 170

MANUEL UTILISATEUR

                                                                Aquaréel

Type de paramètre description Valeur par
                                                                                                                   défaut

                         Monitoring du système:
                                                                                                             20
                          Délai de persistance d'échec de réplication avant la génération d'une alarme
                          (en Minutes)

                         Maintenance du système:
                                                                                                             15
                          Seuil d'avertissement de durée anormalement longue de recalcul de statistiques en
                         base
                          (Minutes)

 Maintenance de la bdd Maintenance du système:
                                                                                                             15
                          Seuil d'avertissement de durée anormalement longue de vérification d'intégrité en
                         base
                          (Minutes)

                         Maintenance du système: C:\Cct\Databases\B
                                                                                                             ackup
                          Répertoire de stockage des fichiers de sauvegarde quotidienne des bases de
                         données sur le serveur
                          (Chemin répertoire)

                         Emplacement du répertoire contenant les fichiers résultant des purges/archivage des C:\Concentrateur\p
                         événements urge\evenements

                         (chemin)

                         Déclaration du Niveau maximal des événements non significatifs purgés 1
                         quotidiennement la nuit
                         1: information

                         2: notification
                         3: important

                         4 : sévère

                         Profondeur de conservation des événements non significatifs purgés quotidiennement 15
                         la nuit
                         ( en jour)

                         Profondeur de conservation des données en base tampon (mesures et fichiers purgés 15
       Purges quotidiennement la nuit)
                         (en jour)

                         Profondeur de conservation des événements significatifs purgés/archivés à la 2
                         demande

                         (en mois)

                         Antériorité de rétention des fichiers dans la base de prod (j) avant purge ou archiv90e
                         (jours)

                         Antériorité de rétention des mesures dans la base de prod (j) avant purge ou
                         archivage 90

                         (jours)

                         Activation/désactivation de la conservation en base archive des mesures dépassant 0
                         l'antériorité de conservation en production
                         (0= Archivage désactivé / 1= Archivage activé)

                         géré également depuis le menu d’activité des composants

                                                              170

---

## Page 171

MANUEL UTILISATEUR

                                                                Aquaréel

                                                            description Valeur par
 Type de paramètre
                                                                                                                  défaut

                         Le site principal est l'instance Aquaréel accueillant la base Archive. En cas de « Nom du site »
                         configuration en haute disponibilité ( multi sites), la base archive n'est présente que
                         sur 1 site (saisi lors de
                                                                                                            l’installation)
                         (code de la table des sites)

                         Export XML Sandre: Valeur du noeud SCENARIO/EMETTEUR/CDINTERVENANT
                         ( format : texte)

                         Export XML Sandre: Attribut schemeAgencyID du noeud
                         SCENARIO/EMETTEUR/CDINTERVENANT SANDRE

                         ( format : texte)

                         Export XML Sandre: Attribut SCHEMEID du noeud
                         SCENARIO/EMETTEUR/CDINTERVENANT
                         (??)

                         Export XML Sandre: Valeur du noeud SCENARIO/EMETTEUR/CDCONTACT

        SANDRE (format : entier)

                         Export XML Sandre: Système altimétrique 31
                         (format : entier)

                         Export XML Sandre: Contact des données pluvio

                         (format : entier)

                         Export XML Sandre: Valeur du noeud SCENARIO/EMETTEUR/NOMSERVICE
                         (format : texte)

                         Export XML Sandre: Valeur du noeud SCENARIO/EMETTEUR/NOMINTERVENANT

                         (Format : texte)

 REQUETE Nombre maximum de résultats retournés par le requêteur 1000

D’autres informations sont uniquement consultables :

 Type de paramètres Description Valeur par défaut

 Affinage Marque indiquant que l'affinage est en cours 0
                           (1=en cours)

                           Marque indiquant que le mode crise est activé 0

                           (1=activé)

                           Aquaréel est doté d’un référentiel temps (appelé table de chronodatation ) basé sur le pas de temps de la base.
                           Pour améliorer les performances d’accès aux données, les horodatages des mesures stockées en base font
                           référence à un identifiant de chronodatation

                           ID de la date de la dernière insertion des mesures pluvio.
                           (format : entier)

                           référence de date minimale acceptée en base de production lors de l'affinage de0
                           mesures ponctuelles

                            (chr_id)

                                                              171

---

## Page 172

MANUEL UTILISATEUR

                                                                 Aquaréel

                           référence de date minimale acceptée en base de production lors de l'affinage des 0
                           mesures cumulées
                            (chr_id)

                           référence de date minimale acceptée en base de production lors de l'affinage des 0
                           fichiers
                            (chr_id)

Archivage Nom de la base de données stockant les données archivées DB_SPC_ARCHIVE

                           (Nom système)

                           Aquaréel est doté d’un référentiel temps (appelé table de chronodatation ) basé sur le pas de temps de la base.
                           Pour améliorer les performances d’accès aux données, les horodatages des mesures stockées en base font
                           référence à un identifiant de chronodatation

                           référence de date minimale acceptée en base de production lors de l'affinage des 0
                           mesures ponctuelles
                            (chr_id)

                           référence de date minimale acceptée en base de production lors de l'affinage des 0
                           mesures cumulées
                            (chr_id)

                           référence de date minimale acceptée en base de production lors de l'affinage des 0
                           fichiers
                            (chr_id)

Client Marque indiquant que le mode crise est activé 0
                           (1=activé)

                           Mode d'affichage par défaut du synoptique dans le client léger GRID

Collecte Date de la dernière mise à l'heure de l’équipement Radio Scorpion connecté au
                           concentrateur.
                           Fonction référence d’horloge du réseau Scorpion

Horodatage Pas de temps de stockage des mesures en base 5
                           (en minute)

                           Date minimale de stockage des mesures en base 20000101

                           (format : yyyymmjj)

                           Identifiant de la date minimale de stockage des mesures en base 1

                           Code Fuseau horaire du concentrateur A

                           (format : texte)

                           Nom Zone Fuseau horaire du concentrateur France

                           (format : texte)

Images Mode d'affichage par défaut du synoptique dans le client léger GRID

Maintenance de la bdd Maintenance du système: 0

                             Information sur l'activité de la procédure de Maintenance"
                             (1: en cours; 0: non en cours )

Purges Date de la dernière purge des événements

                                                               172

---

## Page 173

MANUEL UTILISATEUR

                                                       Aquaréel

                        référence de date minimale acceptée en base de production lors de l'0ffinage des
                        mesures ponctuelles

                        (chr_id)
                        référence de date minimale acceptée en base de production lors de l'0ffinage des
                        mesures cumulées

                        (chr_id)
                        référence de date minimale acceptée en base de production lors de l'0ffinage des
                        fichiers

                        (chr_id)

              7.3.2 Composition du filtre de recherche
Les trois filtres disponibles sont les suivant :

    • Une liste déroulante des différents types de paramètre

    • Un champ textuel de recherche permettant de filtrer sur le libellé du paramètre

    • Une case à cocher permettant d’afficher seulement les paramètres modifiables

              7.3.3 Composition de la liste

Dans la liste les paramètres sont regroupés par type de paramètre, ils sont affichés suivant le format
suivant : « libellé du paramètre : valeur du paramètre ».

              7.3.4 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :

    • Un entête composé du libellé du paramètre

    • La description du paramètre (prenant en compte les retours à la ligne)

    • Le champ de valeur (éditable en fonction du paramètre)

    • Le bouton valider (cliquable en fonction du paramètre)

                                                      173

---

## Page 174

MANUEL UTILISATEUR
                                                 Aquaréel

           7.3.5 Particularités
 • Deux paramètres ne peuvent pas disposer d’un même code.

 • Un paramètre peut appartenir à plusieurs types de paramètre.

      7.4 Les purges et Archivages

Focus sur les purges et archivages :

         La base de données Aquaréel stocke des informations relatives aux données, fichiers et
         évènements de collecte qui peuvent générer des volumes de données importants.
Des dispositifs de purge sont mis en place pour réduire ces volumes et garantir la stabilité des

performances. En effet certaines informations dont la conservation n’est pas considérée comme
importante sont systématiquement supprimées dès qu’elles dépassent une antériorité paramétrable.
Les informations les plus importantes sont archivées sous forme de fichier ou dans une base de
données. Parmi les informations purgées et/ou archivées, on peut lister :

• Les fichiers (images), les mesures hydrologiques et les données techniques

        o purgés dans le cadre d’une gestion de base glissante sans conservation de l’historique des
            données si l’option gestion de l’historique n’a pas été activée ( Voir activité des
            composants)
        o Archivés dans une base historique si l’option a été activée ( Voir activité des composants)

                                               174

---

## Page 175

MANUEL UTILISATEUR

                                                    Aquaréel

  • Les évènements :
          o Purge des événements non significatifs (inférieurs à un niveau paramétrable)

          o Archivage des événements significatifs suppression sur une antériorité paramétrable et
              qui s’accompagne de l’archivage des données via la création sur le serveur de 2 fichiers au
              format BCP.

  • Les mesures de la base tampon ; purge des mesures antérieures à une profondeur paramétrable
  • Les références de fichiers obsolètes : suppression des références de fichiers déjà échangés dans le

      cas d’un échange multi-fichiers
  • Les mesures dont la station ou les capteurs ont été supprimés : En cas de suppression de station
      ou capteur par l’utilisateur, les mesures associées sont supprimées de la base, en différé dans la

      nuit, pour éviter de surcharger en journée le fonctionnement de l’application par des suppressions
      massives

               L’exécution des purges/archivages est lancée automatiquement toutes les nuits.

Le paramétrage des purges est réalisé par défait lors de l’installation de l’application.

Certains paramètres sont modifiables par l’utilisateur depuis le menu de paramétres généraux de
l’application

                                                  175

---

## Page 176

MANUEL UTILISATEUR

                                                      Aquaréel

         7.5 Paramétrage des pools

 Focus sur les unités et pool :

  Dans Aquaréel, les collectes et la transmission des alarmes sont réalisées au travers d’unités
  périphériques regroupées en pool.

  Les unités et pool utilisés pour la collecte ou la transmission d’alarme par le concentrateur font référence
  à un type de média afin de collecter des stations sur un média équivalent (ou compatible).

  Le site d’appartenance de l’unité est précisé pour que l’application ,en cas d’architecture en multi-sites,
  utilise les périphériques sur le site chargé des taches de concentration ( site actif).
  Les services remontent les détections d’indisponibilité d’unités dans le journal des événements. Si le

  nombre d’unités indisponible dans un pool dépasse un taux paramétrable, une alarme est déclenchée
  Type d’unités et pools disponibles selon les types de médias:

      • modems RTC
      • modems GSM

      • Radio SMI (FH)
      • IP

      • Speech unit

      • sms
      • mail

              7.5.1 Présentation

Cette interface permet la gestion des pools. Chaque pool désigne un ensemble d’unités géré de façon
commune.

L’interface est accessible via le menu « Paramétrage / Divers » ou en appuyant sur le bouton « Divers » puis

en choisissant l’onglet « Paramétrage des pools ».

              7.5.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :
• Le code,

• Le libellé,

• Le type de media,
• Le taux maximum d’indisponibilité.

                                                    176

---

## Page 177

MANUEL UTILISATEUR

                                                    Aquaréel

             7.5.3 Composition du formulaire

Le formulaire de saisie se compose des éléments suivants :
Informations générales aux pools :

                Entrée Obligatoire Fonction
         Type de media Oui Type de media du pool

         Code Oui Code permettant d’identifier le pool

         Libellé Oui Libellé du pool
         Ordre d’affichage Oui Ordre du pool dans la liste

         Taux maximum Non Taux de bascule vers le pool de secours et de déclenchement
         d’indisponibilité d’une alarme de dysfonctionnement du pool

         Est Pull Non Défini le type de collecte du pool : pull ou push

             7.5.4 Particularités

Pour les pools RTC et GSM, la liste des unités et profils de collecte rattachés au pool est rappelée en bas de
formulaire.

                                                  177

---

## Page 178

MANUEL UTILISATEUR
                                                  Aquaréel

         7.6 Paramétrage des unités

             7.6.1 Présentation

Cette interface permet la gestion des unités. Les unités correspondent aux types de media suivants :

• RTC,

• GSM,

• radio (SMI (FH),

• Port IP,

• Speechunit.

L’interface est accessible via le menu « Paramétrage / Divers » ou en appuyant sur le bouton « Divers » puis

en choisissant l’onglet « Paramétrage des unités ».

             7.6.2 Composition de la liste

Au niveau de la liste des éléments créés, sont affichés :

• Le libellé,

• Le type de media,

• Le pool associé,

• Le site associé.

             7.6.3 Composition du formulaire
Le formulaire de saisie se compose des éléments suivants :

Informations générales aux unités :

                Entrée Obligatoire Fonction

        Type de media Oui Type de media de l’unité
        Pool Oui Le code du pool associé

                                                178

---

## Page 179

MANUEL UTILISATEUR

                                                       Aquaréel

         Site Oui Le code du site associé

         Libellé Oui Libellé de l’unité

         Ordre d’affichage Oui Ordre de l’unité

Informations relatives aux unités RTC et GSM :
Le menu de configuration des unités prévoit pour certains types de modem, la saisie assistée des éléments
de configurations. Les modems concernés sont :

     • Pour les modems RTC :

         ◦ GENINDUS
         ◦ ETIC MTI 133

     • Pour Les modems GSM

         ◦ GENPRO 20E (Coeur Wavecom)
         ◦ GENPRO 18E (coeur Enfora)

Pour les autres types de modems, la saisie des paramètres devra être réalisé manuellement. Das ce cas un
accompagnement du support technique est fortement recommandé.

              ...

Le bouton « Configuration rapide de l’unité » permet de faire apparaître une liste de type de modem. Le
bouton « appliquer » permet de saisir automatiquement les éléments de configuration relatifs au type de
modem choisi

                      Entrée Obligatoire Fonction

                                                     179

---

## Page 180

MANUEL UTILISATEUR

                                             Aquaréel

Port Oui le port série système
Parite Non la parité "none"/"sans", "even"/"paire"

                                               "odd"/"impaire"
                                               valeur par défaut "none"
Vitesse Non vitesse de communication en bps

                                               valeur par défaut: "9600"
Stopbits Non le nombre de bits de stop "1", ou "2"

                                               valeur par défaut: "1"
Databits Non Les bits de données "7" ou "8"

Handshake Non la gestion de l'interface série pour contrôler les flux
                                               de données entre le DTE (Cct) et le DCE(le modem)

                                               valeurs possibles: "rtscts"/"rts" "sans/none"
TypeModem Non valeurs possibles "hayes" ou "nullmodem"

                                               Utiliser le type "hayes" pour configurer tous les
                                               modems rtc et GSM et "nullmodem" lorsqu’il n'y a
                                               pas de modem
                                               valeur par défaut: "hayes"

cmdStartInit1, 2, 3, 4 Non la commande d'initialisation initiale;
                                               rappel de la configuration usine (at&f) ou d'un profil

                                               stockée (at&y).
                                               valeur par défaut AT&F0, "ATE0","" (E&GGI)

cmdStartDumpConfig Non la commande d'affichage de la configuration du
                                               modem;
                                               une ou plusieurs commandes AT en général

                                               valeur par défaut: "AT&V\S" (E&GGI)

cmdTest1,2,3,4 Non Arrêter le mode test de boucle analogique /
                                               numérique. le test de boucle (locale étant spécifié
                                               par chaineTestBoucle

                                               sinon vide, spécifie la commande du test de boucle
                                               locale doit être effectue lors de l'initialisation du
                                               modem;
                                               le test de boucle doit retourner OK. Si le test de

                                               boucle est spécifié, cmdResetTest spécifie la
                                               commande d'arêt d'un test de boucle locale
                                               valeur par défaut: "AT&T3" (E&GGI)

                                               valeurs par défaut cmdTest1,2,3,4 : AT&T3, AT&T0,
                                               ATD;, AT (E&GGI)

cmdCallInit1,2,3 Non séquences AT comprenant plusieurs commandes
                                               d'initialisation;

                                               voir le manuel de configuration du concentrateur
                                               pour les caractéristiques attendues des
                                               configurations hayes

                                           180

---

## Page 181

MANUEL UTILISATEUR

                                                       Aquaréel

                                                         le comportement attendu du modem est :
                                                         sans echo E0, verbose V1, modulation V32-9600 bps,

                                                         correction des erreurs - N3
                                                         valeur par défaut : cmdCallInit1,..,4
                                                         "ATE0V1S0=0&I1+MS=9,1,1,1200,9600\N3", "", "", ""

                                                         (E&GGI)
         callInitGardePostCnxMilli Non Période de garde post connexion, après que le
                                                         modem est connecté et en cas de connexion réussie

                                                         Il permet d'évacuer les décalages entre le site cct et
                                                         tms dû à la négociation du protocole d'erreur

                                                         valeur par défaut: 0
         callEndDtrDisable Oui si "true", mettre la sortie DTR (Data Terminal Ready)

                                                         à un niveau bas pour la période indiquée en
                                                         callEndDtrDisablePeriodMilli. Le modem doit être
                                                         initialisé avec "AT&D2" en général pour que le
                                                         mécanisme soit effectif.

                                                         Observation: l'utilisation d'un serveur de terminal ne
                                                         permet pas en général de manipuler le signal DTR.

         callEndDtrDisablePeriodMilli Non la valeur de la période de maintien du signal DTR à u
                                                         niveau bas, en millisecondes
                                                         valeur par défaut: "500"

         callEndEsc Oui si true, le cct exécute une séquence d'échappement
                                                         indiquée par la suite dans callEndEscSeq, encadrée
                                                         par des periodes de garde indiquée en

                                                         callEndEscPeriodeGardeMilli, puis raccroche la ligne
                                                         par ATH.
                                                         le modem doit être configuré "usine" pour s'assurer

                                                         que la séquence d'échappement est bien prise en
                                                         compte l'utilisation des séquences d'échappement
                                                         peut entrer en conflit avec le protocole data utilisé,
                                                         cependant l'utilisation des périodes de garde

                                                         minimisent les interférences possibles
                                                         valeur par défaut: "false"

         callEndEscSeq Non valeur de la séquence d'échappement par défaut:
                                                         "+++"

         callEndEscPeriodeGardeMilli Non durée de la période de garde avant et après
                                                         l'exécution

                                                         valeur par défaut="1000"

Informations relatives aux unités SMI :

                                                     181

---

## Page 182

MANUEL UTILISATEUR

                                                      Aquaréel

                     Entrée Obligatoire Fonction
         adresseIPFH Oui Adresse IP du serveur de Port (Moxa) assurant
                                                       l’interface avec le FH.

         portIPFH Oui Port TCP utilisé pour communiquer avec le FH en

                                                       SérialOverIP

         AdresseSMIConcentrateur Non Adresse du concentrateur ( code SMI)
         SMIMesuresValidesApres8 Oui Considérer les mesures dans un bloc de télémesure

                                                       SMI comme valides à partir de la 9ème, malgré
                                                       l'absence des bits de validités (8 seulement)
                                                       true - considérer les valeurs 9, 10, etc

                                                       false - ne pas considérer 9, 10, ...

                                                       optionnel, par défaut: true

Informations relatives aux unités Speech Unit :

                                                    182

---

## Page 183

MANUEL UTILISATEUR

                                                       Aquaréel

                     Entrée Obligatoire Fonction
         Partagé Oui Indique si le speech unit peut être exploité par un
                                                        autre service d’alarme. (fonction de haute

                                                        disponibilité en multi sites)
         Adresse API Oui Adresse IP du serveur hébergeant le service d’alarme

                                                        qui exploite le Speech Unit (fonction de haute
                                                        disponibilité en multi sites)
         mode Oui Choix du mode de communication de l’application

                                                        avec le Speech Unit SérialOverIP ou Ethernet
         Adresse SU Oui Adresse IP du serveur de Port (Moxa) assurant

                                                        l’interface avec le Speech Unit.
         Port Su Oui Port TCP utilisé pour communiquer avec Speech Unit
                                                        en SérialOverIP

Informations relatives aux unités IP :
N/A

Informations relatives aux unités mail :

L’application peut référencer un serveur SMTP afin de pouvoir transmettre les alarmes par ce canal.

Cette information est pré-paramétrée lors de l’installation avec un serveur SMTP utilisable par l’ensemble
des services du réseau Vigicrues.

                                                     183

---

## Page 184

MANUEL UTILISATEUR

                                                  Aquaréel

                    Entrée Obligatoire Fonction

        AlerteAmpPrefixOjet Oui Indique le préfixe à intégrer au titre du mail

        MaxMailByMessage Oui Nombre maximal de mail envoyé par message

        NbTentative Oui Nombre de tentatives pour l’envoi de mail

        TimeOutentreTentatives Oui Délai entre 2 tentatives

        SmtpHostName Oui Nom ou adresse IP du serveur SMTP utilisé pour
                                                    l’envoi
        SmtpLogin Oui Adresse mail de l’expéditeur

        SmtPwd Non Mot de passe du serveur SMTP

Informations relatives aux unités sms :

Les envois de sms sont réalisés au travers d’un abonnement à un service tiers d’envoi de sms. Dans
Aquareél les envois sont réalisés depuis la plateforme OVHCloud.
L’abonnement forfaitaire donne droit à l’envoi d’un nombre limité de sms. Les identifiants sont à configurer

dans l’unité sms d’Aquaréel.

                                                184

---

## Page 185

MANUEL UTILISATEUR

                                           Aquaréel

            Entrée Obligatoire Fonction
ApiUrl Oui URL de l’API OVH pour l’envoi de SMS

ApiApplicationKey Oui Identifiant d’ApplicationKey pour accès à la
                                            plateforme OVH

ApiApplicationSecret Oui Identifiant d’ApplicationSecret pour accès à la
                                            plateforme OVH

ApiConsumerKey Oui Identifiant du ConsumerKey pour accès à la
                                            plateforme OVH

FournisseurLogin Oui Login du fournisseur SMS
FournisseurPwd oui Mot de passe du fournisseur SMS

FournisseurCompte oui Compte du fournisseur smsNuméro d’expéditeur du
                                            fournisseur SMS

FournisseurNumExpediteur oui Numéro d’expéditeur du fournisseur SMS
EmailEnvoiSms oui Mail de l’envoi de sms

MaxSmsByMessage oui Nombre maximum de sms par message

                                         185

---

## Page 186

MANUEL UTILISATEUR

                                                       Aquaréel

         7.7 Activité des composants

Focus sur la notion de composant :

Aquaréel est une application site orientée services centrée sur une base de données. Le schéma ci-après
présente l’architecture Aquaréel avec ces composants applicatifs et les périphériques qu’il exploite.
On appelle composants, les applications qui composent le concentrateur Aquaréel:

     • Les bases de données

     • Les Services Windows et leurs modules fonctionnels
     • le frontal de collecte IP

     • Le client Windows
     • Le client léger

Les composants sont dotés d’un ou plusieurs modules fonctionnels dont l’activation est gérée par

l’utilisateur depuis le client. Parmi les modules fonctionnels, on peut lister :
    • Pour le service de collecte

        ◦ le module de Collecte radio
        ◦ le module de Collecte GSM/RTC

        ◦ le module de Collecte PLQ/IP

    • Pour le service d’échange
        ◦ le module Import/Export

    • Pour le service d’alarme
        ◦ le module de Transmission des alarmes mail

        ◦ le module de Transmission vocale par internet

        ◦ le module de gestion de la supervision locale
    • Pour le service internet :

        ◦ le module de transmission des SMS à la station
        ◦ le module de transmission des alarmes SMS

    • Pour le frontal IP :

        ◦ le module de collecte IP

Par ailleurs d’autres options fonctionnelles peuvent être modifiées par l’utilisateur
    • Choix du mode de stockage ( glissant ou gestion historique)

    • Le fuseau horaire

    • Le service gestionnaire de l’application

La gestion des démarrages et arrêt des services n’est pas accessible depuis le client. Les services
composant Aquaréel démarrent automatiquement après installation ou redémarrage du serveur.

                                                     186

---

## Page 187

MANUEL UTILISATEUR

                                                       Aquaréel

 Un événement de démarrage est inséré par chaque service dans le journal des événements de
 l’application: Service de collecte, service d’échange, service d’alarme.

 Ces événements sont consultables dans le menu de surveillance du client.

              7.7.1 présentation

Cette interface permet de consulter l’activité des composants (services et modules) et de gérer l’activation
des modules.

L’État des composants est stocké en base.

     • pour les services : démarré ou arrêté

     • pour les modules fonctionnels : activé/désactivé/en cours d’activation/ en cours de désactivation/
         erreur

Il permet également de paramétrer des options fonctionnelles générales

     • Mode de stockage

     • Fuseau horaire

Forçage des échanges de secours (en cas d’architecture en multi-sites)

L’interface est accessible via le menu « Paramétrage / Divers » ou en appuyant sur le bouton « Divers » puis
en choisissant l’onglet « Activité des composants ».

              7.7.2 Utilisation de l’interface
Les services principaux ainsi que les secours sont listés. Pour chacun d’entre eux les différents modules
associés sont listés et par l’intermédiaire de bouton permettant de réaliser une demande d’activation ou de

désactivation d’un module.

Les informations d’activation/désactivation se rafraîchissent automatiquement mais une demande
manuelle d’actualisation des informations peut être réalisée par l’intermédiaire du bouton « Actualiser ».

                                                     187

---

## Page 188

MANUELUTILISATEUR
                                              Aquaréel

Lorsqu’un service est démarré, l’utilisateur peut activer ou désactiver les modules fonctionnels qui y sont
rattachés
Sur demande d’activation le menu affiche l’information demande d’activation en cours .

                                             188

---

## Page 189

MANUEL UTILISATEUR

                                                      Aquaréel

Un événement de demande d’activation est inséré dans le journal des événements

Le résultat de l’activation est ensuite affichée dans le menu d’activité des composants et le journal des
événements

     • Cas d’activation réussie

Le menu indique que le module est activé

Un événement d’activation est inséré dans le journal des événements du menu surveillance

     • Cas d’activation réussie avec fonctionnement dégradé
Pour les modules de collecte RTC, radio et le module de transmission des alarmes ; lorsqu’une alarme pool
est détectée, un message apparaît pour le module concerné pour indiquer un risque de fonctionnement

dégradé

          L’utilisateur peut consulter dans le journal des événements du menu surveillance les unités

          détectées comme indisponibles.
     • Cas d’activation en échec

Le menu indique l’échec d’activation du composant.

Un événement d’échec d’activation est inséré dans le journal des événements du menu surveillance

                                                    189

---

## Page 190

MANUEL UTILISATEUR
                                                        Aquaréel

          7.8 Gestion de la réplication

 Focus sur la Réplication :
 Pour les installations d’Aquaréel en haute disponibilité réparties en multi-sites(cluster), les bases de

 données des sites passifs sont mises à jour en temps réel par celle du site actif, via un processus de
 réplication transactionnelle. L’initialisation est réalisée par un instantané de base de données ( copie de
 l’ensemble des données de la base) qui est recopié sur le serveur passif.

 La réinitialisation et le suivi du fonctionnement de réplication la réplication est réalisée depuis le client.

              7.8.1 Présentation
Cette interface permet la gestion des différents sites passifs de la plateforme, ainsi que de la réplication

associée à chacun.

L’interface est accessible via le menu « Paramétrage / Divers » ou en appuyant sur le bouton « Divers » puis
en choisissant l’onglet « Gestion de la réplication ».

                                                      190

---

## Page 191

MANUEL UTILISATEUR
                                                     Aquaréel

             7.8.2 Composition de la liste
Au niveau de la liste des éléments créés, sont affichés :

• Le libellé de chaque site passif,

• Le nom du serveur qui héberge le site passif,

• L’état de la réplication.

             7.8.3 Utilisation du formulaire

Pour chaque site passif un bouton « Réinitialiser » est à disposition et permet de réinitialiser la réplication
avec le site correspondant. Une fois sélectionné une fenêtre de validation apparaît et demande à

l’utilisateur de rentrer le mot de passe de l’utilisateur « sa » pour valider la demande de réinitialisation de
la réplication.

En cas d’échec de réplication ou lorsque la réinitialisation a échoué, un descriptif de l’erreur apparaît.

Un événement d’échec est inséré dans le journal des événements

Lorsque lorsque l’échec de réplication est persistant au-delà d’un délai admissible, une alarme est générée

                                                    191

---

## Page 192

MANUELUTILISATEUR
                                              Aquaréel

    8 Installation du client Windows

        8.1 Prérequis technique

Pour installer Aquaréel vous devez disposer de privilèges Administrateur système.

Le Poste doit être doté du système d’exploitation Windows 10

        8.2 Installation du client

   1. Exécuter en tant qu’Administrateur en cliquant sur le fichier « SetupAquareelClient.bat ».

   N.B. : le lancement de l’assistant d’installation peut prendre quelques secondes avant d’afficher une
   interface utilisateur – il ne faut pas double cliquer plusieurs fois.
   2. Après quelques secondes, l’assistant d’installation démarre :
                                        Ecran de bienvenue

   3. Cliquer sur « Suivant » pour afficher l’étape suivante.

                                         Accord de licence

                                             192

---

## Page 193

MANUEL UTILISATEUR

                                                    Aquaréel

4. Accepter l’accord de licence et cliquer sur « Suivant » pour afficher l’étape suivante.
                                              Choix du lecteur

5. Choisir la lettre du lecteur sur lequel sera installé Aquaréel et cliquer sur « Suivant » pour afficher

    l’étape suivante.
N.B. :

- ne pas choisir de lecteur de CD/DVD car cela provoquera une erreur.
- vérifier que l’espace libre est suffisant sur le lecteur choisi (au moins 50 mega-octets)

6. Cliquer sur « Suivant » pour afficher l’étape suivante.

                                      Connectivité à SQL Serveur

                                                  193

---

## Page 194

MANUEL UTILISATEUR

                                           Aquaréel

7. Saisir le nom ou l’adresse IP du serveur SQL et cliquer sur « Tester la connexion ». Si le test réussit,
   cliquer sur « Suivant » pour afficher l’étape suivante.

                                 Lancement de l’installation

8. Cliquer sur « Lancer l’installation ». La fenêtre de suivi de progression s’affiche.

                                         194

---

## Page 195

MANUEL UTILISATEUR
                                             Aquaréel

   9. Redémarrage de Windows car l’installation du .NET Framework 4.7.1 nécessite un redémarrage.

   10. Après le redémarrage, l’installation de Aquaréel est terminée.

        8.3 Gestion d’erreur
En cas d’erreur, le suivi d’avancement affiche une icône rouge :

                                           195

---

## Page 196

MANUEUTILISATEUR
   Aquaréel

  196

---

## Page 197

MANUELUTILISATEUR

                                      Aquaréel

    9 Annexes

      9.1 Rapport tableau
Exemple d'un rapport Tableau sur différentes rubriques d'une station :

      9.2 Rapport graphes
Exemple d'un rapport Graphe superposé:

                                    197

---

## Page 198

MANUEL UTILISATEUR
                                             Aquaréel

Exemple de graphes simples

                                           198
