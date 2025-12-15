# CCTP_Aquareel_2025_vd

> Converti automatiquement depuis le PDF source
> Pages: 25

---

## Page 1

CAHIER DES

                           CLAUSES

                           TECHNIQUES

                           PARTICULIERES

                     en date du 18 septembre 2025 relatif à l’appel d’offres pour

              la tierce maintenance applicative du concentrateur
                        des mesures hydrométriques Aquaréel

                       Le présent document comporte 25 pages numérotées de 1 à 25

---

## Page 2

SOMMAIRE

Table des matières

 1 CONTEXTE ET OBJET...............................................................................................................3

     1.1 Contexte..............................................................................................................................3
     1.2 Objet et périmètre du marché..............................................................................................3
 2 DESCRIPTION DU CONCENTRATEUR AQUARÉEL.................................................................4
     2.1 Fonctionnalités et configuration...........................................................................................4
         2.1.1 La collecte et le stockage................................................................................................................................4
              2.1.1.1 La collecte..............................................................................................................................................4
              2.1.1.2 Le stockage des données affinées.........................................................................................................6
         2.1.2 L'exploitation des données affinées................................................................................................................6
         2.1.3 Le suivi du fonctionnement et les alarmes......................................................................................................6
         2.1.4 Diffusion des données : fonction d'export.......................................................................................................6

     2.2 Architecture générale...........................................................................................................7
         2.2.1 Architecture unitaire........................................................................................................................................7
         2.2.2 Les applications clientes.................................................................................................................................8
              2.2.2.1 Le client Windows..................................................................................................................................8
              2.2.2.2 Le client léger.........................................................................................................................................9
         2.2.3 Architecture matérielle et logicielle.................................................................................................................9
         2.2.4 Intégration d’une instance dans le SI..............................................................................................................9
         2.2.5 Principes de développements.......................................................................................................................10
              2.2.5.1 Utilisation des fonctions natives des SGBDR......................................................................................10
              2.2.5.2 Optimisation de la configuration matérielle..........................................................................................10
              2.2.5.3 Optimisation du stockage.....................................................................................................................11
              2.2.5.4 Description du code et des langages de programmation.....................................................................11
         2.2.6 Architecture multi-site et haute disponibilité..................................................................................................12
              2.2.6.1 Principe de fonctionnement :................................................................................................................12
              2.2.6.2 Surveillance du système :....................................................................................................................13
              2.2.6.3 Positionnement de l’application HD dans le SI....................................................................................15
   3 ORGANISATION GÉNÉRALE DES PRESTATIONS ET EXIGENCES DU MAÎTRE
D'OUVRAGE..................................................................................................................................16

     3.1 Organisation générale :......................................................................................................16
     3.2 Livrables Aquaréel.............................................................................................................16
     3.3 Exigences et bonnes pratiques logicielles pour Aquaréel...................................................17
         3.3.1 Evolution du modèle de données :...............................................................................................................17
         3.3.2 Développements en base :...........................................................................................................................17
         3.3.3 Développements des services:.....................................................................................................................17

 4 PHASE D'INITIALISATION........................................................................................................17
 5 MAINTENANCE ÉVOLUTIVE...................................................................................................18
     5.1 Déroulement......................................................................................................................18
     5.2 Étape 2 : spécifications et conception................................................................................18
     5.3 Étape 3 : réalisation et tests de validation..........................................................................19

     5.4 Étape 4 : recette.................................................................................................................19
 6 L'EXPLOITATION ET LA MAINTENANCE CORRECTIVE........................................................20
     6.1 organisation du support.....................................................................................................20
     6.2 les interventions urgentes..................................................................................................20

     6.3 la maintenance corrective..................................................................................................21
     6.4 le forfait support.................................................................................................................21
     6.5 les audits............................................................................................................................21
     6.6 les interventions ponctuelles..............................................................................................23

     6.7 installation du fonctionnement d'ensemble.........................................................................23
 7 CLAUSES ENVIRONNEMENTALES.........................................................................................24
 8 PÉRIODE DE TRANSITION (TRANCHE OPTIONNELLE).......................................................24

                                                                   ANNEXES
Annexe 1 : manuel utilisateur Aquaréel

---

## Page 3

1 CONTEXTE ET OBJET

     1.1 Contexte

Créé par arrêté du 2 juin 2003, le Service Central Vigicrues (anciennement SCHAPI) est un
service à compétence nationale rattaché, au sein du Ministère de la transition écologique, de la
biodiversité, de la forêt, de la mer et de la pêche, au Service des Risques Naturels de la Direction

Générale de la Prévention des Risques.

Les missions du service central Vigicrues sont les suivantes :
    • Établir et publier tous les jours, en liaison avec les Services de Prévision des Crues, une
       carte de vigilance « crues » nationale avec la mise en ligne en temps réel des données
       hydrométriques des cours d’eaux, sur le site http://www.vigicrues.gouv.fr
    • Piloter le réseau Vigicrues des Services de Prévision des Crues (SPC) et des unités

       d’hydrométrie (UH) répartis sur le territoire national : pilotage, animation, assistance,
       conseil, formation, développement et maintenance d’outils opérationnels.
    • Collecter à un niveau national et en temps réel les données hydrométéorologiques des
       différents producteurs de données.

Dans le cadre du pilotage du réseau Vigicrues, le service central Vigicrues coordonne la maîtrise
d'ouvrage du concentrateur des mesures hydrométéorologiques Aquaréel. Il est assisté dans cette

mission du Service de Prévisions des Crues Grand Delta (SPC GD), qui est à l'origine du
développement du concentrateur Aquaréel, et qui a un rôle de responsable technique du projet
Aquaréel.

Aquaréel est l'outil unique de collecte du réseau Vigicrues, déployé dans les Services de
Prévisions des Crues ainsi que dans les Cellules de Veille Hydrologique CVH du réseau Vigicrues.
Les précédents accord-cadres ont permis de faire d'Aquaréel un outil national de collecte des

données hydrométriques, adapté à la collecte IP sécurisée du Ministère, adapté à la collecte
LoRaWan, adapté à l'ensemble des services du réseau Vigicrues, et de réaliser son déploiement
dans l'ensemble des services.
Le présent accord-cadre s'inscrit dans la continuité des précédents, avec pour objet de poursuivre
les évolutions en cours, comme l'abandon du client lourd au profit du client léger, de poursuivre les
efforts de résorption de la dette technique, et de suivre les évolutions des réseaux de
communication, par exemple pour s'adapter à la collecte avec des nouveaux réseaux radio ou des

satellites IoT.

     1.2 Objet et périmètre du marché

Le présent CCTP organise la maintenance applicative du concentrateur des mesures
hydrométriques Aquaréel afin de répondre aux besoins des services prévisions des crues
utilisateurs et de la maîtrise d'ouvrage nationale.

Il comprend des prestations de :
    • maintenance évolutive
    • maintenance corrective
    • exploitation qui comprend :
       ◦ des audits périodiques
       ◦ les interventions urgentes
       ◦ les interventions ponctuelles

       ◦ le déploiement de la haute disponibilité

Toutes les opérations de maintenance de ce marché se feront aux jours et heures ouvrés. Les
délais indiqués dans le présent CCTP sont donc en jours et heures ouvrés.
L'exploitation hors périodes ouvrées est prise en charge par les SPC, notamment par la gestion de
la haute disponibilité, de modes dégradés ou de procédures de secours.

Les progiciels et matériels (unité centrale, système d’exploitation, pare-feu, etc.) sont exclus du
présent marché.

---

## Page 4

2 DESCRIPTION DU CONCENTRATEUR AQUARÉEL

      2.1 Fonctionnalités et configuration
Le concentrateur Aquaréel assure les tâches suivantes :

    • acquisition, via des médias de communication, des informations de stations hydrologiques
        (mesures et images), exploitation et stockage.
    • suivi en temps réel de la situation hydrologique au travers des fonctions d'alarmes
        hydrologiques, d'édition de tableaux et graphes.
    • exportation des données pour alimenter en temps réel la base de données nationale, des
        sites internet ou des applications locales.
L’application informatique peut être découpée en 4 grands pôles fonctionnels listés ci-dessous et

détaillés dans les paragraphes qui suivent :
    • la collecte et le stockage
    • l'exploitation et le traitement des données
    • le suivi du fonctionnement
    • la diffusion

Deux niveaux de configuration existent pour Aquaréel :

    • la configuration standard qui propose les fonctionnalités de concentration sur un site
        unitaire
    • la configuration HD (Haute Disponibilité) qui dispose de toutes les fonctionnalités de la
        configuration standard et adresse la haute disponibilité par :
       ◦ le déploiement des modules Aquaréel sur un nœud actif, un nœud passif et un nœud de
           surveillance
       ◦ la réplication de la base de données entre le nœud actif et le nœud passif

La configuration HD est celle recommandée par le maître d'ouvrage auprès des services
utilisateurs

         2.1.1 La collecte et le stockage

La fonction de " collecte et stockage " comprend l'acquisition des données des stations de
télémesure (hauteur, débit et Pluvio) ainsi que des images issues de caméras et leur intégration
dans l'unité de stockage du concentrateur pour exploitation.

             2.1.1.1 La collecte
Aquaréel réalise l'acquisition des mesures hydrologiques :
    • soit par collecte des stations via des médias (radio, RTC/GSM et IP) utilisant des

        protocoles définis
    • soit par import de fichiers de mesures ou d’images

On distingue 2 grands types de collectes :
    • collecte automatique : le système lance lui-même des collectes planifiées par l'utilisateur
        ou en secours après l'échec d'une collecte principale. Les tâches de collecte sont
        planifiées sur une fréquence paramétrée ou à une date programmée.

    • Collecte manuelle : l'utilisateur demande une collecte particulière sur une ou plusieurs
        stations. La collecte manuelle est notamment utilisée pour la réalisation de rattrapages.

    ➔ La collecte radio
Aquaréel est conçu pour exploiter les données au travers du réseau radio « SCORPION 2 ». Ce
réseau, développé par la société COMATIS, présente une interface de raccordement au
concentrateur basée sur un protocole de communication propriétaire appelé protocole « SMI ». La

description de ce protocole est fournie au titulaire.

Sur chaque site opérationnel, l'équipement radio est relié au concentrateur par une liaison RS232.
Sur ce port, le réseau radio met cycliquement à disposition du concentrateur le résultat de ses
collectes.

---

## Page 5

Le concentrateur collecte par radio simultanément en mode automatique et en mode manuel
(collecte de rattrapage d’une station).

    ➔ La collecte par communication téléphonique (RTC ou GSM)
Certaines stations hydrologiques disposent d'un abonnement téléphonique et peuvent donc être

collectées par ce média en mode normal ou en secours d'une collecte principale.
Le concentrateur lance automatiquement ou sur demande de l'utilisateur des collectes RTC ou
GSM via des pools de modems.
La communication entre le concentrateur et la station est réalisée selon le protocole de
communication PLQ. Le PLQ est un protocole propriété du Ministère de la transition écologique. Il
est basé sur la norme européenne I-ETS 300 230. Sa description précise est disponible dans le

cahier des charges de 2017 pour la fourniture de centrales d'acquisition de mesures
hydrométriques. Ce cahier des charges est remis au titulaire.

    ➔ La collecte IP
La majorité des stations hydrologiques est connectée à un réseau privé de collecte mettant en
œuvre des communications IP sécurisées entre les stations et les sites de concentration
hébergeant l’application Aquaréel. La plupart des stations accèdent à ce réseau par des

connexions GPRS-3G-4G. Certaines utilisent des connexions ADSL/fibre.

En collecte IP, la station est à l’initiative de la transmission des données. Elle envoie
périodiquement ses informations vers le frontal IP d’Aquaréel.

Ces envois concernent :

      • des flux XML contenant des mesures, des alarmes techniques et des informations d’état
          de la station
      • des images (photos et vidéos) acquises par une caméra

Lors de l’envoi de flux, la station interroge le frontal IP pour récupérer des demandes à traiter. Ces
demandes concernent des modifications de paramètres de collecte, des collectes de rattrapage,

des rendez-vous de maintenance et des mises à jour logicielles.

Aquaréel peut également envoyer des sms de commandes à la station LNS si cette dernière
dispose du média SMS.

    ➔ La collecte LORAWAN
Le réseau LoRaWAN est une technologie de communication apparue dans le cadre de l’internet

des objets (IoT : internet of things) pour déployer des réseaux étendus à basse consommation
LPWAN (low power wide area network). Il s’appuie sur un protocole radio bas débit, utilisant la
fréquence libre de 868MHz.
Il existe sous forme de réseaux opérés (Orange ou Netmore) ou de réseaux propriétaires.
Les stations hydrologiques équipées de module LORAWAN déposent via ce réseau, leurs
mesures sous formes de trames, sur un serveur hébergé chez un opérateur. Ce dernier expose

sur internet une API Http permettant à Aquaréel de récupérer périodiquement les trames de
mesures et de les exploiter.

Les trames de mesures ( ou payloads) transmises sont codées dans un format spécifiquement
créé pour le besoin de collecte des stations hydrologiques. Le contenu des trames de données
utiles diffère selon le type de module LORAWAN équipant la station.

La description des payloads et de l’API du serveur SoM2M sont remis au titulaire.

    ➔ L'import de fichiers de mesures ou d’images
Aquaréel peut importer des données présentes dans des fichiers ou des images.
L'acquisition de ces données est réalisée par import automatique ou manuel de fichiers présents
sur des répertoires partages CIFS ou sur des serveurs FTP.

Les fichiers importés respectent des formats et des standards prédéfinis dont la description est
fournie au titulaire.

---

## Page 6

2.1.1.2 Le stockage des données affinées
Les données collectées (mesures et images) sont affinées et puis stockées à des fins

d'exploitation en temps réel ou en temps différé.
Aquaréel conserve également sur une période glissante les données brutes issues des collectes.

L'attention du candidat est attirée sur la volumétrie des bases de données Aquaréel. Cette
volumétrie est engendrée par le nombre important de mesures stockées actuellement. 1 mesure
par capteur stockée toutes les 5mn et ceci pour 250 stations possédant chacune 3 capteurs ; le

nombre de capteurs pouvant augmenter.

         2.1.2 L'exploitation des données affinées

Les mesures affinées sont exploitées en tant que telles mais peuvent servir également pour
calculer des indicateurs complémentaires utilisés en temps réel pour le suivi de l'épisode de crue,
la génération d'alarmes hydrologiques ou la diffusion de données. Les données calculées sont :
    • Les débits instantanés, calculés à partir des niveaux mesurés par les stations via des
        relations hauteur d'eau - débit appelées courbes de tarage (relations établies en temps

        différé et spécifiques à chaque site de mesure).
    • Les cumuls pluviométriques calculés à partir des mesures pluviométriques élémentaires.
    • Les gradients de montée des eaux entre deux valeurs de hauteur consécutives

Les données brutes ou calculées sont exploitées :
    • par le système pour la diffusion de données ou la détection d'alarmes hydrologiques sur
        dépassement d'une valeur seuil en valeur ou en gradient

    • par l'utilisateur depuis le client pour visualiser des chroniques de données

         2.1.3 Le suivi du fonctionnement et les alarmes

    ➔ Le journal de bord : journalisation des opérations
Le journal de bord permet de stocker et visualiser en temps réel l'ensemble des informations liées
au fonctionnement du concentrateur. À savoir :
    • Le fonctionnement des collectes (déclenchement, réalisation, échecs, rattrapages...)

    • La réalisation des exports (génération, transmission, échec)
    • l'affinage des données (détection de valeurs aberrantes et invalides)
    • les alarmes (ouverture, transmission, acquittement, fermeture)
    • Les connexions-déconnexions des utilisateurs
Pour faciliter leur exploitation, les informations stockées sont typées selon leur origine et graduées
par ordre d'importance.

Certaines informations critiques peuvent déclencher des alarmes.

    ➔ La supervision des données :
La supervision des données permet, au travers d’indicateurs techniques, de s’assurer en temps
réel de la disponibilité de la donnée dans Aquaréel et de détecter rapidement un
dysfonctionnement sur la chaîne d’acquisition.

Cette supervision concerne :
      • l’état de fonctionnement des collectes
      • la disponibilité et la cohérence des mesures
      • l’état de fonctionnement des stations

    ➔ Transmission des alarmes

Chaque alarme générée, qu'elle soit fonctionnelle ou hydrologique, peut être transmise vers un
utilisateur
     • par téléphone : la synthèse vocale et les appels téléphoniques sont réalisés par un
         opérateur externe
     • par mail
     • par sms : l’envoi de sms est réalisé par un opérateur externe.

         2.1.4 Diffusion des données : fonction d'export

La fonction d'export permet de diffuser sur des partages (CIFS windows ou FTP) situés sur des

---

## Page 7

unités locales ou distantes, des fichiers contenant des informations issues du concentrateur.
L'export peut être manuel (sur demande de l'utilisateur) ou automatique (à la fin d'une collecte ou
sur planification).
Plusieurs formats de fichiers peuvent être générés. Leur description est fournie au titulaire.

      2.2 Architecture générale

Remarque préalable : ce chapitre ne présente que les principes généraux d’architecture et de
fonctionnement d’Aquaréel dans le but de donner au candidat une vue d’ensemble de l’application
lui permettant de comprendre les prestations attendues dans le présent marché en vue de
préparer son offre.
L’architecture et le fonctionnement de l’application sont détaillés dans les documents techniques
qui sont fournis au titulaire.

         2.2.1 Architecture unitaire

Aquaréel dispose d’une architecture orientée service (SOA) s’appuyant fortement sur un système
de gestion de base de données (SGBD).
Les fonctionnalités de collecte (radio, RTC, IP et LORAWAN), d’échange (import et export), de
transmission d’alarme (au travers du serveur d’appel) et de supervision sont assurées par des
services ou par un serveur web :

            • service de collecte
            • service d'échange (import et export)
            • service d'alarme (transmission téléphonique et mail et supervision)
            • service internet ( envoi de sms et interrogation du serveur LORAWAN)
            • serveur web (Frontal de collecte IP)
Ces composants utilisent des périphériques ou des communications réseaux (TCP IP) pour les

échanges avec l’extérieur

Les autres fonctionnalités sont assurées par le SGBD (exploitations hydrologiques et
événementielles, planification de tâches…).

L’application s’appuie sur trois instances de bases de données corrélées :
    • Une base tampon qui contient, sur une période glissante, uniquement les mesures brutes
        issues des stations,
    • Une base de production qui contient les mesures et images exploitables et l’ensemble des

---

## Page 8

informations nécessaires au fonctionnement de l’application (paramétrage, journal
        d’événement…) sur une antériorité glissante paramétrable.
    • Une base archive qui, lorsque la fonction d’archivage est activée dans l’application, stocke
        l’historique des données au-delà de l’antériorité de la base de production. Cette base
        devrait être prochainement supprimée.

Cette séparation est mise en place pour dissocier le processus d’acquisition de celui de mise en
production et de conservation. L'intégration des données en production depuis la base tampon est
réalisée par une procédure d'affinage qui s'assure de l'exploitabilité des données avant leur mise
en production.

Le stockage des données en base d’archivage est réalisé par migration des données de la base
de production dépassant l’antériorité de conservation. Cette fonctionnalité, dont l’exécution est
quotidienne, est optionnelle dans l’application.

        2.2.2 Les applications clientes

Aquaréel dispose de 2 applications clientes.
    • Un client Windows permettant de gérer l’ensemble des fonctionnalités de l’application.
    • Un client léger, de type application web, pour la consultation et le paramétrage des tâches
        de concentration.
L’objectif est d’abandonner le client Windows au profit du client léger

Pour des raisons de sécurité, les utilisateurs doivent posséder en pré-requis de connexion un
identifiant et un mot de passe pour accéder à l’application.

Le client léger ne se connecte qu’à la base de production.
Le client WIndows peut se connecter :
    • à la base de production
    • à la base archive pour avoir accès à l’intégralité des données : des vues partitionnées

        agrègent les données de la base de production et de la base archive.
Les mesures de la base tampon ne sont donc pas accessibles via les clients.

             2.2.2.1 Le client Windows

L’application cliente, de type client lourd, permet principalement d’assurer les fonctionnalités
suivantes :
    • Exploitation des mesures issues des stations hydrologiques,
    • Surveillance du fonctionnement du système,

    • Paramétrage de l’application et des référentiels associés.

---

## Page 9

Le manuel utilisateur détaillant l'ensemble des fonctionnalités de l'application cliente est fourni en
annexe.

            2.2.2.2 Le client léger
Une application cliente, de type client Web, permet principalement d’assurer les fonctionnalités de
consultation suivantes :

    • Exploitation des mesures issues des stations hydrologiques,
    • Surveillance du fonctionnement du système,
    • lancement de commandes vers les stations
    • Paramétrage du référentiel station et des tâches de concentration ( collectes, échanges et
       alarmes)

        2.2.3 Architecture matérielle et logicielle

La configuration matérielle type d'une installation du concentrateur sur 1 site est la suivante :
    • 1 machine principale
       ✗ SGBD
       ✗ Service de transmission d’alarme et de supervision
       ✗ service de collecte
       ✗ Frontal de collecte IP

       ✗ application client léger
    • 1 machine d’échange
       ✗ service d'échange (imports et exports)
       ✗ service internet ( sms et collecte LORAWAN)
    • 1 serveur de terminal pour le pilotage des ports de com vers les périphériques:
       ✗ modems RTC

       ✗ modem radio
    • Client windows (client lourd) déployé sur des postes bureautiques
Nota : dans certaines configurations, le service d’échange peut être installé sur le serveur
principal. Le serveur principal peut être installé au choix du service utilisateur sous la forme d'une
machine virtuelle ou physique.

La solution est basée sur l'offre Microsoft :

        • Serveur de base de données SQL Server 2016 SP2 Standard Edition
        • Système d’exploitation Windows 2016 Server Standard Edition 64bits
            ◦ machine principale
            ◦ machine d’échange
        • Service d’exploitation Windows 10 ou Windows11
            ◦ postes clients

            ◦ machine d’échange
        • Framework .NET 4.5Framework netcore 3.1
        • Serveur web IIS 10

        2.2.4 Intégration d’une instance dans le SI

Le schéma ci-après présente la solution recommandée pour le positionnement des composants
d’une instance Aquaréel dans l’architecture SI des services. L’objectif est de séparer, pour des
questions de sécurité, les composants devant accéder au réseau ministériel et à internet de ceux

rattachés au réseau de collecte privé.

Les composants sont donc répartis dans 2 sous réseaux, ou zones, définis autour d’un parefeu qui
contrôle les flux entre ces zones et vers l’extérieur :
    • La zone de collecte permettant d’accéder au réseau privé de collecte et qui accueille
       ◦ Le serveur de gestion de base de données (SGBD)

       ◦ Les services de collecte et d’alarme
       ◦ le frontal IP
       ◦ Les périphériques ( modems RTC et radio)

---

## Page 10

• La zone métier qui a accès au réseau ministériel (RIE) et à internet via ce dernier qui
       accueille
       ◦ les services échanges et internet

        2.2.5 Principes de développements

            2.2.5.1 Utilisation des fonctions natives des SGBDR

L'application est centrée sur la base de données.
Le principe est de considérer le SGBD comme l'épine dorsale du système en utilisant dès que
possible ses fonctions applicatives et fonctionnalités natives (procédures stockées, triggers,
planificateur, réplication, Filestream). Cette approche mettant le SGBD au cœur du système

permet de simplifier les développements et de limiter les interactions entre processus externes.
Excepté les fonctions d'acquisition, d'échanges et de transmission qui sont assurées par des
services externes spécifiques, les grandes fonctionnalités attendues dans le concentrateur sont
assurées par les fonctions applicatives du SGBD.

            2.2.5.2 Optimisation de la configuration matérielle
Les composants de l’application sont répartis dans 2 serveurs déployés dans des zones distinctes
de LAN ( cf §2.2.4 ci dessus).

Le serveur principal situé en zone de collecte accueille la base de données et la plupart des
composants de l’application. Sa configuration matérielle type est la suivante :
    • Processeur : 2 processeurs octo-coeur de 1,8GHz
    • Mémoire RAM :
       ◦ 16Go
    • disques durs 600 Go de stockage - vitesse de transfert 15 000 tr/min
       ◦ pour une installation en RAID 1 ou en raid 10

La machine située en zone métier accueille les services Internet et Echange. Un PC utilisateur en
Windows11 est suffisant pour le fonctionnement des composants.

L’objectif du maître d’ouvrage est de conserver cette architecture matérielle sur la durée de vie du
projet.

Le titulaire veillera à optimiser ses développements pour garantir à l’application le maintien de ses
performances dans la configuration matérielle décrite ci-dessus.

---

## Page 11

Si toutefois de nouveaux besoins fonctionnels exprimés par le maître d’ouvrage nécessitaient une
augmentation des ressources matérielles, ce dernier en serait averti par le titulaire dès la phase de

conception de l’évolution concernée.

             2.2.5.3Optimisation du stockage

Compte tenu du nombre important d’informations collectées et exploitées par l’application, un
mode de stockage spécifique est mis en place pour réduire la volumétrie, favoriser la performance
de l’accès aux données, et faciliter l’administration du système.

Les principes de stockage sont basés sur :
               • Le non-stockage des données calculées
               • Le non-stockage des valeurs cumulatives égales à 0 (pluies)
               • La purge systématique d’informations non significatives
               • La possibilité d’archivage /purge des informations significatives

   ➔ Le non-stockage des données calculées
L’application ne stocke que les mesures issues des capteurs.

Les autres grandeurs hydrologiques calculées ne sont pas stockées.

   ➔ Le non-stockage des valeurs cumulatives égales à 0

La très grande majorité des données de pluie collectées est égale à 0. Dans certaines régions, les
0 représentent plus de 98% des mesures de pluies.
La base de données Aquaréel ne stocke pas les 0. Seules les valeurs supérieures à 0 et les
valeurs manquantes sont stockées.
Les valeurs à 0 sont reconstituées à la volée lors de l’exploitation des données.

             2.2.5.4 Description du code et des langages de programmation

Le tableau ci-dessous reprend les spécifications de l’environnement de développement utilisé pour
le projet :
 Domaine Outil

 Modules

 Langage de développement métier C#
                                                   Framework .Net 4.7.2

                                                   .Net 8

 IDE Visual Studio 2022
 Librairie pour édition WPF (datagrid) WPFToolkit Mars 2009

 Developpement client web Jquery, Js_flot-chart, Bootstrap, Datatable,
                                                   AdminLTE

 Base de données
 SGBD SQL Server 2016 SP2

 Développement SGBD Transact-SQL
 Conception

 Outil de modélisation MERISE PowerAMC 10

 Outil de modélisation UML PowerAMC 10

   ➔ descriptif et métrique de la base de données :

    • 150 tables réparties en 11 schémas :
        ◦ Volume ~15Go/an pour 200 stations.

        ◦ L'essentiel du volume tient sur 6 tables

    • développements en T-SQL ( ~ 10 000 lignes de code) :
        ◦ 200 procédures stockées

---

## Page 12

◦ 100 vues
       ◦ 20 triggers
       ◦ 50 jobs de planification dont la plupart sont créés automatiquement par procédure

           stockée sur ajout de tâche de concentration (collecte - échange) par l'utilisateur
       ◦ 1 publication de réplication

   ➔ descriptif et métrique des modules :

La solution de l'application comporte 8 modules et 2 sous modules :
    • Commun
    • Client
    • Service de collecte

       ◦ Plugin Collecte
    • Service d'import/export
    • Service d'alarme
       ◦ Plugin Alarme
    • Service internet

    • Gestionnaire de bascule
    • Client web

Les développements sont orientés objets avec l'utilisation de patrons de conception de type
" Factory ", " Singeton ", " DAO ", " DTO " et " DATA BIDING ".

Le métrique du code est décomposé dans le tableau ci-dessous :

 Nom du module Nombre de fichiers Nombre de lignes Nombre de classes

 Client Windows 1344 269477 1703

 Client Web 1049 220003 1361

 Service d'alarme 1050 95925 1180

 Service de collecte 832 228963 1340
 Service d'import/export 815 207829 1194

 Frontal IP 194 11260 203

 Gestionnaire de bascule 2 1 500 2
 Service Internet 1033 81054 1106

 API Web 943 64832 959

        2.2.6 Architecture multi-site et haute disponibilité

            2.2.6.1 Principe de fonctionnement :

Compte tenu de l’aspect critique de l’application (missions de sécurité civile assurées par les SPC,
prévisions des crues et des inondations, rapidité des changements météorologiques sur le
périmètre couvert), sa fiabilité opérationnelle est primordiale.
C’est pour cela qu’une solution de haute disponibilité est mise en place.

La haute disponibilité de l’application est assurée par la redondance des concentrateurs tant au
niveau du matériel que des données.

Cette haute disponibilité repose essentiellement sur une redondance à chaud sur deux sites

géographiquement distincts (panne, désastre) :
    • 1 site actif
    • 1 à plusieurs sites passifs (en lecture seule)

La base de données du site passif est mise à jour en temps réel par le site actif par un processus

de réplication. Le site passif est en mesure, en permanence, de reprendre les fonctionnalités du
site actif en cas de défaillance de ce dernier.

---

## Page 13

La configuration en haute disponibilité permet, en cas de dysfonctionnement sur le site actif, de
garantir une continuité de l’activité des tâches de concentration par la prise en charge en secours
de tout ou partie des tâches de concentration

      • Automatiquement pour les tâches de collecte et d’échanges ( imports et exports)
          ◦ Collecte radio : le service de collecte reçoit également les collectes radio et les insère
              dans la base de données du site actif
          ◦ Collecte IP : les stations envoient en secours les mesures sur le frontal IP de secours
              qui les insère dans la base de données du site actif
          ◦ Collecte LORAWAN : réalisation des collectes en secours depuis le site passif

          ◦ Secours des échanges : réalisation des échanges en secours depuis le site passif
      • Manuellement pour un basculement de l’ensemble des tâches de concentration
          sur le site passif. L’activation complète du site passif est réalisée manuellement par
          l’utilisateur au travers d’un outil spécifique appelé gestionnaire de bascule.

             2.2.6.2 Surveillance du système :

La redondance multi-site avec basculement manuel implique une supervision permanente de
l’application pour détecter et transmettre les dysfonctionnements aux utilisateurs.

La surveillance générale des pannes et dysfonctionnements est effectuée par une vérification

croisée réalisée par les services de supervision présents sur 3 sites distincts.
Le pilotage de la supervision est réalisé par des services d’alarme/supervision présents sur les
serveurs principaux des deux sites de concentration ainsi que sur le site de surveillance.

Sur les sites de concentration, chaque service de supervision surveille les ressources locales
(SGBD, Speech Unit, service de collecte et service d’import/export) et les autres services de

supervision (principe du quorum dans un cluster système ou SGBD classique).
Sur le site de surveillance, le service ne surveille que les autres services de supervision.
Ce procédé permet de détecter l'indisponibilité d’un site (site actif, site passif, site de surveillance),
d'un service (service SGBD, service d’alarme, service de collecte, service d’import/export) ou du

---

## Page 14

serveur d’appel vocal

En cas de dysfonctionnement, une (ou des) alarme (s) téléphonique (s) est émise vers un
opérateur d’astreinte qui pourra décider de basculer vers le site passif.

La surveillance des services est réalisée au moyen de trames TCP envoyées sur des ports réseau.

La supervision cyclique des modules de l’application permet donc de déduire l’état de
fonctionnement :

    • Du matériel
    • Des logiciels (services et base de données)
    • Des accès réseau (LAN et VPN)

---

## Page 15

2.2.6.3 Positionnement de l’application HD dans le SI

La solution en haute disponibilité s’appuie sur 2 instances Aquaréel corrélées communiquant via le
réseau privé de collecte ou le réseau ministériel. Une solution de routage dynamique mise en
œuvre sur les parefeux permet aux 2 instances de disposer en permanence de 2 réseaux pour
communiquer entre elles et ainsi pallier une indisponibilité de l’un d’entre eux.

Le schéma ci dessous présente cette architecture de déploiement

---

## Page 16

3 ORGANISATION GÉNÉRALE DES PRESTATIONS ET EXIGENCES DU

MAÎTRE D'OUVRAGE

      3.1 Organisation générale :
Le marché comporte une tranche ferme de 24 mois, dédiée à la maintenance d'Aquaréel, et une

tranche optionnelle, dédiée à la réversibilité.

La tranche ferme comporte :
    • la phase d'initialisation
    • la maintenance évolutive
    • la maintenance corrective
    • l'exploitation incluant :

        ◦ les audits
        ◦ les interventions urgentes
        ◦ les interventions ponctuelles
        ◦ les déploiements de la haute disponibilité

La tranche ferme (hors phase d'initialisation) est reconductible une fois pour une période de 24
mois, par tacite reconduction, pour les prestations de maintenance évolutive et corrective et

d'exploitation.

Le service central Vigicrues commande et gère avec le SPC GD les prestations d'initialisation, de
maintenance évolutive et de maintenance corrective.
Le service central Vigicrues prend en charge le forfait annuel de support.
Les services coordonnés (utilisateurs) commandent et gèrent directement les prestations d'audit,
les interventions ponctuelles et les déploiements de la haute disponibilité.

La durée de la phase d’initialisation ne pourra pas dépasser 4 mois.

Les prestations de maintenance évolutive, de maintenance corrective (hors forfait annuel support)
et d'exploitation (hors forfait annuel support) font l'objet de bons de commande émis par le service
central Vigicrues ou les services utilisateurs au fur et à mesure de la survenance des besoins et
ce, jusqu'à la fin du marché, période de reconduction comprise.

Le forfait annuel support pour la maintenance corrective et les interventions urgentes démarre à la
validation de la phase d’initialisation.

      3.2 Livrables Aquaréel

La documentation existante est constituée de :
    • un manuel d'exploitation
    • un manuel utilisateur
    • un manuel d'installation

    • le modèle de données
Cette documentation devra être maintenue et mise à jour à chaque évolution ou correction.

Une livraison complète doit comprendre, au minimum :
    • un document traçant l'ensemble des modifications apportées par rapport à une version de
        référence
    • les setup d'installation de l'application

    • le code source de l'application
    • un document de description de la procédure d'installation
    • l'ensemble de la documentation mise à jour

Une livraison dite « de mise à jour » est composée au minimum de :
    • un document traçant l'ensemble des modifications apportées par rapport à une version de
        référence

    • les setup d'installation des mises à jour
    • un document de description de la procédure d'installation de la mise à jour
    • la documentation impactée mise à jour

---

## Page 17

• la mise à jour du code source des composants concernés par la mise à jour

Les prestations de maintenance évolutive feront l'objet d'une livraison complète et d'une livraison
de mise à jour.
Les prestations de maintenance corrective feront uniquement l'objet d'une livraison de mise à jour.

     3.3 Exigences et bonnes pratiques logicielles pour Aquaréel

        3.3.1 Evolution du modèle de données :

Certains développements à réaliser dans le cadre des prestations de maintenance évolutive vont
nécessiter une évolution du modèle de données de la base.
Le titulaire devra reprendre les formats et normes utilisés lors du développement initial de
l’application:
    • MERISE pour le dessin de la base de données relationnelle.
    • Les règles de l'art devront être scrupuleusement observées pour ce modèle notamment en

        interdisant la réutilisation des mêmes identifiants SQL pour différentes tables à l'exception
        des colonnes formant les clefs étrangères.
    • La norme de développement initialement élaborée sera reprise et respectée. Cette norme
        sera notamment reprise pour la formation des noms (domaines, entités, associations,
        tables, vues, procédures, fonctions, déclencheurs...), comme pour la documentation du
        code.
    • Les évolutions portées sur le modèle conceptuel seront soumises à validation préalable du

        maître d'ouvrage avant application des modifications et poursuite des développements.

        3.3.2 Développements en base :

    • Le titulaire veillera à respecter les axes forts de développement issus du marché initial à
        savoir l’utilisation dès que possible des fonctions applicatives du SGBDR pour le
        développement des évolutions.
    • Pour ce qui est du code SQL des procédures, fonctions, triggers et des requêtes en
        général, et compte tenu de la volumétrie et des nécessités de temps de réponse optimal, il
        sera accordé un soin particulier à l'élaboration des requêtes et au style de codage SQL,

        notamment en interdisant le plus possible le recours aux fonctions scalaires (standard et
        UDF) et aux curseurs.
    • L'utilisateur SQL spécifique à l'application au service ou à l'agent devra systématiquement
        appeler une procédure stockée ou une vue pour toute opération d'UPDATE, DELETE, ou
        INSERT.
    • Les développements réalisés en base seront validés " au fil de l'eau " par le maître
        d'ouvrage

        3.3.3 Développements des services:

Le titulaire veillera dans ces développements à assurer une cohérence avec les développements
existants en reprenant notamment les normes et convention de nommage utilisés ainsi que la
modélisation des différents composants.

 4 PHASE D'INITIALISATION

La phase d'initialisation vise à l'appropriation par le titulaire du logiciel Aquaréel.

Au lancement de cette phase, le maître d'ouvrage remettra au titulaire :
    • les sources du code d'Aquaréel
    • la documentation disponible à ce jour et détaillée au § 3.2 .

Le maître d'ouvrage propose de démarrer cette phase par une séance de travail de 2 jours de

présentation initiale (démonstration, présentation fonctionnelle et technique) pour l’appropriation
d’Aquaréel. Cette réunion sera menée par le SPC Grand Delta.

Durant la phase d'initialisation, le titulaire devra :

---

## Page 18

• installer une plate-forme de développement et une plate-forme de test distinctes
    • installer une plate-forme de suivi du projet : gestion des tickets de support et d'anomalies
    • réaliser une analyse fonctionnelle et technique (architecture, code, base de données,
        interfaces) d'Aquaréel
    • rédiger un rapport d'analyse dans lequel il rendra compte de son appropriation du logiciel.
        Ce rapport comprendra au moins les résultats de l'analyse du code, un diagnostic du

        logiciel et des propositions d'évolutions ou de corrections techniques.

Les livrables de cette phase sont les plate-formes de développement et de test et le rapport
d'analyse.

La plate-forme de test devra reproduire à minima un fonctionnement d'ensemble d'Aquaréel dans
sa configuration HD (2 sites de concentration et 1 site de surveillance). Elle mettra en œuvre la

collecte des stations de test.
Une installation d’Aquaréel dans un environnement virtualisé sera admise pour permettre au
titulaire de limiter le nombre de serveurs à acquérir.

Cette plateforme sera également composée des périphériques suivants :
    • 2 stations d’acquisition ( 1 station LNS et 1 station AQUACJ)
    • un modem 3G pour les stations

Les stations et le modem 3G seront mis à disposition par la maîtrise d'ouvrage pendant la durée
du marché. Les autres matériels sont à la charge du titulaire.

Pour des tests avec le réseau radio, le SPC GD dispose d'une plate-forme Aquaréel de test à
Privas (07), qui pourra être accessible à distance pour le titulaire, pour des tests spécifiques à la
radio ou des tests de validation plus généraux, utilisant la radio. Celle-ci sera disponible pour tous
les types de prestations, pour des tests intervenant après une validation interne.

 5 MAINTENANCE ÉVOLUTIVE

      5.1 Déroulement

Durant ces prestations, les interlocuteurs du titulaire sont le service central Vigicrues et le
SPC GD. Ces évolutions se déroulent selon une procédure de développement de cycle en V. Elles
sont regroupées en lot et font ainsi l’objet d’un phasage unique. A titre indicatif, 2 versions
maximum devraient être commandées par an.

Sauf directives contraires explicitement mentionnées par le maître d’ouvrage dans les bons de
commande, chaque lot d'évolutions fait l’objet des étapes suivantes :
    • étape 1 : des spécifications générales fonctionnelles des évolutions souhaitées sont
        rédigées par le maître d’ouvrage.
    • étape 2 : un premier bon de commande permet de réaliser un dossier de spécifications
        fonctionnelles et techniques détaillées et de conception des évolutions. Ce dernier est

        rédigé par le titulaire et soumis à l’approbation du maître d’ouvrage. Il permet également de
        chiffrer de manière plus détaillée les développements à venir
    • étape 3 : un deuxième bon de commande permet le développement qui comprend la
        conception, le codage, la réalisation des tests unitaires, l’intégration et la validation interne,
        ainsi que la mise à jour de la documentation
    • étape 4 : la recette comprend la vérification d’aptitude, la vérification de service régulier et
        la mise à jour de la documentation suite aux corrections réalisées pendant les phases de

        recette.

Le délai d’exécution de chaque étape est précisé dans le bon de commande.

       5.2 Étape 2 : spécifications et conception

Dans cette phase, le titulaire est chargé de transcrire les exigences du maître d’ouvrage dans un
dossier de spécifications techniques et fonctionnelles détaillées et de conception des évolutions.
Ce dossier est soumis à l'approbation du maître d'ouvrage.

Concernant Aquaréel, le maître d'ouvrage insiste sur ce double objet du document. Le SPC GD a

---

## Page 19

été très impliqué dans la conception des développements initiaux, et souhaite maintenir ce haut
niveau d'exigence et d'implication afin d'optimiser Aquaréel. Le livrable devra donc traduire les
exigences fonctionnelles du cahier des charges rédigé par le maître d'oeuvre, mais également
décrire les solutions de développement retenues et notamment l'impact sur le modèle de données.

Plusieurs jalons intermédiaires constitueront cette phase. Ils se dérouleront sous forme de
réunions techniques permettant au titulaire de présenter les orientations choisies pour validation
du maître d'ouvrage. Ces jalons, définis en début de phase, permettront notamment au maître
d'ouvrage de vérifier et valider :
    • la compréhension du besoin fonctionnel, des contraintes et exigences
    • l'adaptation des solutions techniques vis-à-vis de l'existant

       5.3 Étape 3 : réalisation et tests de validation
Cette phase comprend le codage des évolutions et la réalisation des tests unitaires, d'intégration

et de validation par le titulaire, ainsi que la mise à jour de la documentation.
Malgré un cycle en V, la maîtrise d'ouvrage souhaite que cette étape soit interactive et itérative,
grâce à la présentation régulière de résultats intermédiaires.
Le maître d'ouvrage accorde une importance particulière aux tests réalisés par le titulaire. Des
tests de non-régression devront être menés dans ce cadre. Les tests réalisés par le maître
d'ouvrage dans la phase suivante de recette ne doivent en aucun cas se substituer aux tests

internes du titulaire.
Pour cela, le titulaire devra rédiger un cahier de recette, qu'il utilisera lors de ses tests internes. Ce
cahier de recette sera soumis à validation du maître d'ouvrage et utilisé par ce dernier dans la
phase suivante de recette. Les tests devront notamment prendre en compte les interfaces
externes réelles (modems et stations prévues sur la plate-forme de test).
Pour les évolutions concernant la collecte radio, la plate-forme de test de Privas sera disponible

pour des tests de validation avant livraison au maître d'ouvrage.
A l'issue d'une phase de réalisation, le maître d’œuvre pourra réaliser une recette "usine", dans les
locaux du titulaire ou à distance. Cette recette "usine", d'une durée d'une journée maximum, a pour
objet de contrôler le fonctionnement global et la complétude des évolutions et de valider un
passage dans la phase suivante de recette VA.
A l'issue de cette phase de réalisation, le titulaire devra fournir une livraison complète et une
livraison de mise à jour, au sens du § 3.2 .

       5.4 Étape 4 : recette

La recette comprend 2 étapes, la Vérification d'Aptitude (VA) et la Vérification de Service Régulier
(VSR). Elle concerne le logiciel et la documentation associée.

La VA a pour objet de :
    • vérifier la conformité du logiciel au dossier de spécifications détaillées,

    • vérifier que la documentation est complète et apte à remplir les fonctions attendues vis-à-
        vis des utilisateurs et des administrateurs.
La VA sera réalisée par le SPC GD.

La VSR a pour objet de :
    • constater que le logiciel fourni est capable d’assurer un service régulier dans les conditions
        réelles d’exploitation.

    • vérifier que la documentation répond aux besoins d'un fonctionnement opérationnel.
Elle sera réalisée par des sites pilotes en SPC, en plus du SPC GD.

Une anomalie est considérée comme bloquante si elle empêche l'utilisation de l'application (par
exemple, absence de collecte ou absence d'alimentation de la base nationale PHyC).
Une anomalie est considérée comme majeure si certaines fonctions importantes ne sont plus

accessibles (par exemple, la gestion des alarmes n'est plus opérationnelle).
Une anomalie est considérée comme mineure si l'application peut fonctionner, malgré une fonction
mineure impactée.

---

## Page 20

Les anomalies bloquantes seront transmises immédiatement par le maître d'ouvrage. Un délai
d'intervention de 2 jours ouvrés est fixé pour les anomalies bloquantes.
Les anomalies non bloquantes pourront être transmises au fil de l'eau par le maître d'ouvrage,
mais seront regroupées en lot pour les livraisons de correction.

Pour valider la VSR, Aquaréel devra fonctionner en mode opérationnel pendant une durée
minimum d'un mois de manière continue sans anomalie bloquante, ni majeure.

La VA et la VSR comprennent les prestations de mise à jour éventuelle de la documentation des
logiciels.

A la fin de la recette, le titulaire devra fournir une livraison complète et une livraison de mise à jour,

au sens du § 3.2 .

Les modalités de validation de la recette sont décrites au CCAP.

 6 L'EXPLOITATION ET LA MAINTENANCE CORRECTIVE

Les prestations d'exploitation incluent les audits, les interventions urgentes, les interventions
ponctuelles et les déploiements du fonctionnement d'ensemble.
Elles feront l'objet d'une réunion annuelle de suivi, entre le titulaire, le service central Vigicrues et
le SPC GD. L'objet de cette réunion sera de faire un bilan du fonctionnement d'Aquaréel, et un
bilan des opérations de maintenance.

La maintenance corrective concerne la correction des anomalies qui n'ont pas été détectées lors
des recettes et garanties précédentes ou lors des recettes et garanties liées à la maintenance
évolutive décrite au § 5 . On définit une anomalie en référence aux spécifications, il s'agit de
dysfonctionnements techniques ou fonctionnels, de non-conformités ou de dégradations des
performances, imputables à Aquaréel.

Pour toutes ces prestations, le service central Vigicrues mettra à disposition du titulaire un accès

distant sécurisé de type OpenVPN au réseau privé de collecte du réseau Vigicrues.

     6.1 organisation du support

Le support technique est assuré par 2 organismes :
    • le SPC Grand Delta pour les demandes de support « métier »
    • le titulaire du présent accord-cadre, pour les interventions qualifiées d’urgentes ou pour des
       demandes donnant lieu à des commandes de prestations spécifiques.

Les demandes sont saisies par le gestionnaire du SPC dans la plateforme de suivi mise en place
par le titulaire dans le cadre du marché de maintenance Aquaréel. Les gestionnaires identifiés
dans les services disposent d’identifiants de connexion à cette plateforme.

Les demandes d’intervention qualifiées d’urgentes par le gestionnaire sont prises en charge
directement par le prestataire. En plus de la saisie sur la plateforme, elles sont doublées d’un
appel téléphonique de l’utilisateur au titulaire en raison de leur caractère urgent. Sont considérées

comme urgentes, les demandes relatives aux blocages ou dysfonctionnements majeurs de
l'application empêchant la réalisation des tâches de concentration (collecte, import-exports…).

Le manuel d'exploitation identifie les anomalies nécessitant une intervention urgente du titulaire.
Les autres demandes de support sont traitées en premier lieu par le SPC Grand Delta.
Les réponses aux demandes et le contenu des interventions sont tracées sur la plateforme de suivi
par le support technique.

     6.2 les interventions urgentes

Les services utilisateurs pourront directement solliciter le titulaire pour des interventions urgentes

---

## Page 21

et rapides. Celles-ci sont prises en charge par le forfait support décrit au § 6.4 . Elles concernent le
diagnostic et à la résolution de problèmes bloquants, qui n'ont pas été précédemment identifiés
dans la maintenance corrective, et pouvant être résolus en moins d'une journée (résolution
définitive ou solution de contournement provisoire). Au-delà, les prestations relèveront de la
maintenance corrective ou des interventions ponctuelles.
Chaque intervention fera l'objet d'un rapport d'intervention, décrivant le diagnostic, les tests

effectués, la solution mise en œuvre pour la remise en service, définitive ou provisoire, et si
nécessaire des préconisations pour une solution définitive.
Ces interventions sont soumises à un délai d'intervention d’1 jour ouvré à compter de la réception
de la demande d'intervention par le titulaire.

      6.3 la maintenance corrective
La maintenance corrective fait l’objet de bons de commande par le service central Vigicrues,
établis sur la base du bordereau des prix unitaires. Le diagnostic initial est pris en charge sur le

forfait support décrit au § 6.4 .
L'organisation suivante concerne également les corrections réalisées dans le cadre de la garantie
de la maintenance évolutive.

Durant ces prestations, les interlocuteurs du titulaire sont le service central Vigicrues et le SPC
GD, qui centralisent les anomalies remontées par les utilisateurs.

Pour la gestion des anomalies, le candidat proposera une plate-forme de suivi (déclaration, suivi,
traçabilité…).
Les anomalies seront décrites par le maître d'ouvrage en indiquant :
    • une description de l'anomalie constatée
    • la qualification de l’anomalie (mineure, majeure, bloquante)
    • les données et les étapes pour reproduire l’anomalie
Des copies d’écran explicitant l’anomalie peuvent être jointes.

Les anomalies bloquantes et majeures seront transmises immédiatement par le maître d'ouvrage.
Elles feront l'objet d'un délai d'intervention de 2 jours ouvrés.
Les anomalies mineures seront regroupées et dans la mesure du possible mutualisées avec
d'autres livraisons, sans dépasser un délai d’un mois.

Les prestations de maintenance corrective comprennent la conception, le développement et les

tests internes des corrections, la mise à disposition de patchs correctifs pour le déploiement, ainsi
que la mise à jour éventuelle de la documentation.

La fourniture comprend une livraison dite "de mise à jour" conformément au § 3.2

      6.4 le forfait support
Un forfait annuel de 15 jours (commun à tous les utilisateurs) est dédié :
    • aux interventions urgentes (décrites au § 6.2 ),

    • et à la qualification des anomalies : diagnostic et suivi des anomalies, jusqu'à la proposition
        de solutions, dans le cadre de la maintenance corrective décrite au § 6.3 .
Il est pris en charge par le service central Vigicrues. Le titulaire informera au fil de l'eau le maître
d'ouvrage des interventions décomptées sur ce forfait.

Pour les interventions non urgentes, le délai de qualification (diagnostic) d'une anomalie est fixé à
1 semaine.

      6.5 les audits

Cette action vient en complément des processus de maintenance et de supervision automatisés et
des actions de maintenance curatives associées.
Cet audit est préconisé une à deux fois par an selon la taille des instances déployées.

Il s’agit de faire une revue générale des instances Aquaréel par « un œil expert » en procédant à
un certain nombre de vérifications permettant d’anticiper des dysfonctionnements à venir et

---

## Page 22

proposer des pistes d’optimisation.

L’audit permet de procéder aux vérifications suivantes :
    • version des composants déployés au regard du niveau de version en cours
    • vérification de la configuration des composants par rapport à la configuration type attendue

    • vérification de l’état de fonctionnement des processus de supervision et de maintenance de
        l’application
        ◦ supervision base de données
        ◦ maintenance de la base de données
        ◦ supervision des composants
    • vérification du bon fonctionnement des purges et archivage :

        ◦ pour les tables purgées : comparaison de la donnée la plus ancienne disponible à
            l’antériorité de stockage paramétré.
        ◦ une suppression manuelle des fichiers bcp les plus anciens peut être réalisée en
            accord avec le gestionnaire
        ◦ en cas d’option d’archivage activée :
            ▪ comparaison de la donnée la plus récente en base archive et la plus ancienne en
               base de production en fonction des antériorités de stockage paramétrées

            ▪ vérification de la valeur des contraintes de validité dans les tables concernées
    • consultation du dernier mois des journaux d’activités permettant d’identifier des
        dysfonctionnements détectés
        ◦ journaux windows
        ◦ journaux SQL server
        ◦ traces de l’application

            ▪ tables de supervision et de maintenance BDD
            ▪ évènements
        ◦ journaux des périphériques (serveur MOXA- Speech Unit)
    • pour les architectures en haute disponibilité, des vérifications du fonctionnement
        d’ensemble seront réalisées en collaboration avec le service utilisateur:
        ◦ prise en charge automatique des tâches en secours par le site passif en cas d’échec ou

            d’indisponibilité de la fonctionnalité sur le site actif
        ◦ après bascules réalisées par le service utilisateur :
            ▪ vérification de la bonne reprise de tâches de concentration par le site nouvellement
               actif et de la bonne inversion des rôles actif/passif entre les instances suite à :
               • bascule vers le site de secours
               • bascule retour vers le site nominal

Cette action permet d’identifier tout dysfonctionnement ou anomalie n’ayant pas été détecté par
l’application et/ou n’ayant pas fait l’objet d’une action de maintenance curative. Il s’agit également
de proposer et mettre en œuvre des actions correctives :
       • correction immédiate et rapide spécifique dans le cadre de l’audit
       • action corrective spécifique plus importante sur la base d’une prestation spécifique
          (interventions urgentes ou ponctuelles, ou maintenance corrective selon leur nature).

Dans le cas contraire, lorsque le problème est lié à l’environnement informatique (machine, OS,
réseau...), l’action corrective relève de l’administrateur réseau.

La durée d’un audit est d’une journée par instance Aquaréel déployée. La durée des tests de
fonctionnement d’ensemble de la Haute disponibilité est de 1/2 journée

Le titulaire remettra au service utilisateur un rapport d’intervention décrivant les résultats des tests
et vérifications réalisés et des éventuelles corrections apportées ou prescrites.
Le délai de réalisation de l'audit est de 4 semaines à partir de la réception du bon de commande.
Le délai de fourniture du rapport est de 3 semaines après la réalisation de l'audit.
Les actions préconisées dans le rapport d'audit, et qui sont du ressort du titulaire, seront réalisées
dans les délais relatifs à chaque type de prestation et feront l'objet d'une mise à jour du rapport

d'audit.

Nota : L’audit périodique ne dégage pas le service en charge de l’application d’une vérification
quotidienne du bon fonctionnement afin de détecter rapidement des dysfonctionnements et

---

## Page 23

déclencher une action curative si besoin via le support technique. Ces vérifications concernent
notamment :
    • la bonne exécution des collectes et des échanges
    • la disponibilité des mesures
    • le suivi des détections et alarmes de surveillance remontées

      6.6 les interventions ponctuelles

Les interventions ponctuelles concernent toutes les interventions qui ne relèvent pas de la
maintenance préventive, corrective ou évolutive. Cela comprend par exemple un diagnostic hors
maintenance corrective pour un dysfonctionnement non bloquant, une remise en ordre de marche,
une administration spécifique de la base de données, la reprise de données historiques venant
d'une autre base de données, une mise à jour spécifique de la documentation, ou l'installation de
mises à jour (de maintenance corrective ou évolutive) sur site en cas d'indisponibilité d'un accès
distant.

Elles sont commandées par les services utilisateurs sur la base du bordereau des prix unitaires.
Le délai associé à ces interventions est précisé dans le bon de commande.
Chaque intervention fera l'objet d'un rapport d'intervention à destination de l'utilisateur à l'origine
de la commande.

      6.7 installation du fonctionnement d'ensemble
Cette prestation d'installation sera réalisée à distance. Elle est commandée par les services
utilisateurs. Il est demandé aux services utilisateurs de commander un audit en préalable à une

installation du fonctionnement d'ensemble.
Cette prestation se déroule selon la procédure d'installation fournie par le maître d'ouvrage.
Sa durée est estimée à 2 jours.
Le délai de réalisation de cette installation est de 4 semaines après la réalisation de l'audit
préalable, et 4 semaines à partir de la réception du bon de commande.
La validation de l'installation se fera dans un délai de 1 mois à compter de la mise en service.

Le fonctionnement d'ensemble concerne la mise en place des fonctionnalités de haute disponibilité
entre 2 sites de concentration préalablement installés.

La configuration en haute disponibilité est réalisée lorsque les instances Aquaréel composant
l’architecture en haute disponibilité (site actif et site passif) ont été installées et configurées par les
services utilisateurs.

Cette mise en œuvre consiste à :
    • déclarer, dans la base du site actif, les sites constituant le cluster en haute disponibilité.
    • identifier et paramétrer le site principal
    • récupérer dans le site actif le paramétrage des périphériques du site passif.
    • paramétrer et mettre en œuvre la réplication
    • installer et paramétrer le gestionnaire de bascule
    • installer et paramétrer la supervision entre les sites

    • tester et valider le fonctionnement d'ensemble avec un test de bascule
        ◦ prise en charge automatique des tâches en secours par chaque site passif
        ◦ réaliser des tests de bascule

         ➔ Paramétrage et mise en œuvre de la réplication :

La réplication transactionnelle est une fonctionnalité native de la base de données SQL server.
Elle commence avec la capture instantanée des objets et des données de la base de données de
publication (site actif Aquaréel). Dès que la première capture est effectuée et livrée, les
changements de données effectués ensuite au niveau du serveur de publication sont transmis à
l'abonné (Sites passifs et de consultations) à mesure qu'ils se produisent (presque en temps réel).

La configuration initiale de la réplication Aquaréel est réalisée par l’exécution de scripts prédéfinis.

En fonctionnement courant, les utilisateurs peuvent depuis le client Windows surveiller le
fonctionnement de la réplication et demander la réinitialisation de chaque abonné depuis le menu
réplication du client.

---

## Page 24

Le script ainsi que la documentation précise de la procédure seront fournis au titulaire.

         ➔ Installation et configuration du gestionnaire de bascule :

Le gestionnaire de bascule est une application cliente indépendante qui permet de basculer les
fonctionnalités de concentration du site actif vers le site passif et le retour à la normale de manière
aisée.
Lors de son exécution le gestionnaire de bascule réalise les grandes opérations suivantes :
    • désactive les tâches de concentration du site actif (collecte, échange) et les active sur le
        site passif
    • supprime la réplication des données du site actif

Le gestionnaire de bascule est un exécutable Windows qui est lancé par l'utilisateur.
Son fichier de configuration ne contient que les adresses IP de chaque serveur Bdd des sites de
concentration.

         ➔ Installation et configuration de la supervision :

Le système de supervision d'Aquaréel est réparti sur 3 sites distincts et surveille en permanence le
bon fonctionnement des modules composant l'application (Voir description au § 2.2.6.2)

Le module de supervision est un composant du service d'alarme qui est déployé par défaut lors de
l’installation des instances Aquaréel afin d’assurer la supervision des composants de chaque
instance

La mise en œuvre de la supervision en haute disponibilité consiste à :
    • nstaller le service d'alarme sur le site de surveillance et n'activer que le module de
        supervision
    • configurer les 3 modules de supervision pour la supervision inter-sites

La configuration de chacun des modules est réalisée dans un fichier de config (XML) et consiste,

pour chacun des modules, à déclarer les sites à surveiller.

 7 CLAUSES ENVIRONNEMENTALES
La Loi Climat et Résilience (loi n°2021-1104 du 22 août 2021), imposera, d'ici le 22 août 2026,
l'inclusion obligatoire de clauses environnementales dans les marchés publics et l'utilisation d'au

moins un critère d'attribution relatif aux caractéristiques environnementales des offres. Le présent
marché intègre des clauses environnementales destinées à promouvoir une gestion durable dans
les prestations objets du marché, visant notamment la réduction de l’impact énergétique et
environnemental des prestations.

Le service central Vigicrues demande au titulaire de fournir un rapport annuel de la politique
environnementale numérique du titulaire présentant :

    • les formations réalisées pour améliorer son impact environnemental, et en particulier les
        formations aux principes d'écoconception et de numérique responsable
    • les principes d'écoconception qui ont été mis en œuvre dans le cadre du projet
    • le suivi annuel de la liste des actions ayant un impact sur le projet de maintenance
        Aquaréel, dans le cadre des labels et certifications numériques obtenues.
Le titulaire transmettra ce bilan annuel avant la fin du premier trimestre de l'année N pour l'année
N-1.

 8 PÉRIODE DE TRANSITION (tranche optionnelle)
Une prestation de transfert de compétence est prévue en tranche optionnelle pour assurer ce
transfert du titulaire vers le maître d'ouvrage (réversibilité) ou vers un tiers (transférabilité). Elle

aura lieu à la fin du marché. Le transfert de compétences se déroule principalement dans les
locaux du maître d'ouvrage ou du tiers.

---

## Page 25

Cette prestation comprend :
    • un transfert de compétence à destination du maître d'ouvrage ou d'un tiers
    • le cas échéant, une actualisation de la documentation

    • la fourniture d'un journal des corrections effectuées lors de la garantie et de la maintenance
        corrective.
    • une assistance au maître d'ouvrage ou au tiers, dans ses locaux, pour l'installation d'une
        plate-forme de développement fonctionnelle et conforme à celle définie et utilisée par le
        titulaire.
    • une assistance au maître d'ouvrage ou au tiers, dans ses locaux, pour l'installation d'une

        plate-forme de test fonctionnelle et conforme aux documents en vigueur.
    • une présentation de l'architecture technique, de l'organisation du code source et de la base
        de données
    • une démonstration des éléments d'administration et d'exploitation. La présentation et la
        démonstration se feront sur la base d'une installation d'Aquaréel conforme aux documents
        en vigueur. Ils pourront reprendre tout ou partie des éléments des formations.

La durée de cette prestation de réversibilité ne doit pas dépasser 2 mois.
