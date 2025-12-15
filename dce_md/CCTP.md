# CAHIER DES CLAUSES TECHNIQUES PARTICULIÈRES

**Date** : 18 septembre 2025

**Objet** : Tierce maintenance applicative du concentrateur des mesures hydrométriques Aquaréel

**Émetteur** : DGPR/SRN/SCV

---

## SOMMAIRE

1. [Contexte et objet](#1-contexte-et-objet)
2. [Description du concentrateur Aquaréel](#2-description-du-concentrateur-aquaréel)
3. [Organisation générale des prestations et exigences du maître d'ouvrage](#3-organisation-générale-des-prestations-et-exigences-du-maître-douvrage)
4. [Phase d'initialisation](#4-phase-dinitialisation)
5. [Maintenance évolutive](#5-maintenance-évolutive)
6. [L'exploitation et la maintenance corrective](#6-lexploitation-et-la-maintenance-corrective)
7. [Clauses environnementales](#7-clauses-environnementales)
8. [Période de transition (tranche optionnelle)](#8-période-de-transition-tranche-optionnelle)

---

## 1. CONTEXTE ET OBJET

### 1.1 Contexte

Créé par arrêté du 2 juin 2003, le **Service Central Vigicrues** (anciennement SCHAPI) est un service à compétence nationale rattaché, au sein du Ministère de la transition écologique, de la biodiversité, de la forêt, de la mer et de la pêche, au Service des Risques Naturels de la Direction Générale de la Prévention des Risques.

**Missions du service central Vigicrues** :
- Établir et publier tous les jours, en liaison avec les Services de Prévision des Crues, une carte de vigilance « crues » nationale avec la mise en ligne en temps réel des données hydrométriques des cours d'eaux, sur le site http://www.vigicrues.gouv.fr
- Piloter le réseau Vigicrues des Services de Prévision des Crues (SPC) et des unités d'hydrométrie (UH) répartis sur le territoire national : pilotage, animation, assistance, conseil, formation, développement et maintenance d'outils opérationnels.
- Collecter à un niveau national et en temps réel les données hydrométéorologiques des différents producteurs de données.

Le service central Vigicrues coordonne la maîtrise d'ouvrage du concentrateur des mesures hydrométéorologiques Aquaréel. Il est assisté par le **Service de Prévisions des Crues Grand Delta (SPC GD)**, qui est à l'origine du développement du concentrateur Aquaréel et qui a un rôle de responsable technique du projet.

**Aquaréel** est l'outil unique de collecte du réseau Vigicrues, déployé dans les Services de Prévisions des Crues ainsi que dans les Cellules de Veille Hydrologique CVH du réseau Vigicrues.

**Objectifs du présent accord-cadre** :
- Poursuivre les évolutions en cours (abandon du client lourd au profit du client léger)
- Poursuivre les efforts de résorption de la dette technique
- Suivre les évolutions des réseaux de communication (nouveaux réseaux radio, satellites IoT)

### 1.2 Objet et périmètre du marché

Le présent CCTP organise la maintenance applicative du concentrateur des mesures hydrométriques Aquaréel.

**Prestations incluses** :
- Maintenance évolutive
- Maintenance corrective
- Exploitation :
  - Audits périodiques
  - Interventions urgentes
  - Interventions ponctuelles
  - Déploiement de la haute disponibilité

**Conditions d'exécution** :
- Toutes les opérations de maintenance se feront aux **jours et heures ouvrés**
- Les délais sont en jours et heures ouvrés
- L'exploitation hors périodes ouvrées est prise en charge par les SPC (haute disponibilité, modes dégradés, procédures de secours)

**Exclusions** :
- Progiciels et matériels (unité centrale, système d'exploitation, pare-feu, etc.)

---

## 2. DESCRIPTION DU CONCENTRATEUR AQUARÉEL

### 2.1 Fonctionnalités et configuration

Le concentrateur Aquaréel assure les tâches suivantes :
- **Acquisition** via des médias de communication des informations de stations hydrologiques (mesures et images), exploitation et stockage
- **Suivi en temps réel** de la situation hydrologique (alarmes hydrologiques, édition de tableaux et graphes)
- **Exportation des données** pour alimenter en temps réel la base de données nationale, des sites internet ou des applications locales

**4 pôles fonctionnels** :
1. La collecte et le stockage
2. L'exploitation et le traitement des données
3. Le suivi du fonctionnement
4. La diffusion

**Deux niveaux de configuration** :
- **Configuration standard** : fonctionnalités de concentration sur un site unitaire
- **Configuration HD (Haute Disponibilité)** :
  - Toutes les fonctionnalités standard
  - Déploiement sur un nœud actif, un nœud passif et un nœud de surveillance
  - Réplication de la base de données entre nœud actif et passif
  - **Configuration recommandée par le maître d'ouvrage**

#### 2.1.1 La collecte et le stockage

##### 2.1.1.1 La collecte

Aquaréel réalise l'acquisition des mesures hydrologiques :
- Par collecte des stations via des médias (radio, RTC/GSM et IP) utilisant des protocoles définis
- Par import de fichiers de mesures ou d'images

**Types de collectes** :
- **Collecte automatique** : planifiées par l'utilisateur ou en secours
- **Collecte manuelle** : sur demande de l'utilisateur (rattrapages)

**Modes de collecte** :

| Mode | Description |
|------|-------------|
| **Radio** | Réseau SCORPION 2 (COMATIS), protocole SMI, liaison RS232 |
| **RTC/GSM** | Protocole PLQ (norme européenne I-ETS 300 230), pools de modems |
| **IP** | Réseau privé sécurisé, connexions GPRS-3G-4G ou ADSL/fibre, flux XML |
| **LoRaWAN** | IoT, fréquence 868MHz, réseaux opérés (Orange, Netmore) ou propriétaires |
| **Import fichiers** | Répertoires CIFS ou serveurs FTP |

##### 2.1.1.2 Le stockage des données affinées

- Données collectées affinées puis stockées pour exploitation temps réel ou différé
- Conservation sur période glissante des données brutes

**Attention volumétrie** : 1 mesure par capteur toutes les 5mn pour 250 stations × 3 capteurs chacune

#### 2.1.2 L'exploitation des données affinées

**Données calculées** :
- Débits instantanés (via courbes de tarage)
- Cumuls pluviométriques
- Gradients de montée des eaux

**Exploitation** :
- Par le système : diffusion, détection d'alarmes hydrologiques
- Par l'utilisateur : visualisation de chroniques depuis le client

#### 2.1.3 Le suivi du fonctionnement et les alarmes

**Journal de bord** :
- Fonctionnement des collectes
- Réalisation des exports
- Affinage des données
- Alarmes (ouverture, transmission, acquittement, fermeture)
- Connexions/déconnexions des utilisateurs

**Supervision des données** :
- État de fonctionnement des collectes
- Disponibilité et cohérence des mesures
- État de fonctionnement des stations

**Transmission des alarmes** :
- Par téléphone (synthèse vocale via opérateur externe)
- Par mail
- Par SMS (via opérateur externe)

#### 2.1.4 Diffusion des données : fonction d'export

Export sur partages CIFS Windows ou FTP :
- Manuel (sur demande) ou automatique (fin de collecte ou planification)
- Plusieurs formats de fichiers disponibles

### 2.2 Architecture générale

#### 2.2.1 Architecture unitaire

Architecture orientée service (SOA) s'appuyant fortement sur un SGBD.

**Services** :
- Service de collecte
- Service d'échange (import et export)
- Service d'alarme (transmission téléphonique, mail, supervision)
- Service internet (SMS, interrogation serveur LoRaWAN)
- Serveur web (Frontal de collecte IP)

**3 instances de bases de données corrélées** :

| Base | Contenu |
|------|---------|
| **Base tampon** | Mesures brutes sur période glissante |
| **Base de production** | Mesures et images exploitables, paramétrage, journal d'événements |
| **Base archive** | Historique au-delà de l'antériorité de production (à supprimer prochainement) |

**Processus d'affinage** : intégration des données depuis base tampon vers production après vérification d'exploitabilité.

#### 2.2.2 Les applications clientes

**2 applications clientes** :
1. **Client Windows** (client lourd) : gestion de l'ensemble des fonctionnalités
2. **Client léger** (application web) : consultation et paramétrage des tâches de concentration

**Objectif** : abandonner le client Windows au profit du client léger

Pré-requis de connexion : identifiant et mot de passe

#### 2.2.3 Architecture matérielle et logicielle

**Configuration type pour 1 site** :

| Machine | Composants |
|---------|------------|
| **Machine principale** | SGBD, Service alarme/supervision, Service collecte, Frontal IP, Client léger |
| **Machine d'échange** | Service d'échange, Service internet |
| **Serveur de terminal** | Pilotage ports COM (modems RTC, modem radio) |
| **Postes bureautiques** | Client Windows |

**Stack technologique** :
- SQL Server 2016 SP2 Standard Edition
- Windows 2016 Server Standard Edition 64bits
- Windows 10 ou Windows 11 (postes clients)
- Framework .NET 4.5, .NET Core 3.1
- Serveur web IIS 10

#### 2.2.4 Intégration d'une instance dans le SI

**2 zones séparées par pare-feu** :

| Zone | Accès | Composants |
|------|-------|------------|
| **Zone de collecte** | Réseau privé de collecte | SGBD, Services collecte/alarme, Frontal IP, Périphériques |
| **Zone métier** | RIE et internet | Services échanges et internet |

#### 2.2.5 Principes de développements

##### 2.2.5.1 Utilisation des fonctions natives des SGBDR

**Principe** : SGBD comme épine dorsale du système
- Procédures stockées, triggers, planificateur, réplication, Filestream
- Simplifie les développements, limite les interactions entre processus

##### 2.2.5.2 Optimisation de la configuration matérielle

**Serveur principal (zone de collecte)** :
- 2 processeurs octo-cœur 1,8GHz
- 16 Go RAM
- 600 Go stockage (RAID 1 ou RAID 10, 15000 tr/min)

**Machine zone métier** : PC Windows 11 suffisant

**Objectif** : conserver cette architecture matérielle sur la durée de vie du projet

##### 2.2.5.3 Optimisation du stockage

**Principes** :
- Non-stockage des données calculées
- Non-stockage des valeurs cumulatives égales à 0 (pluies) - reconstituées à la volée
- Purge systématique d'informations non significatives
- Possibilité d'archivage/purge des informations significatives

##### 2.2.5.4 Description du code et des langages de programmation

**Environnement de développement** :

| Domaine | Outil |
|---------|-------|
| Langage métier | C# |
| Framework | .Net 4.7.2, .Net 8 |
| IDE | Visual Studio 2022 |
| Librairie WPF | WPFToolkit Mars 2009 |
| Client web | jQuery, Js_flot-chart, Bootstrap, Datatable, AdminLTE |
| SGBD | SQL Server 2016 SP2 |
| Développement SGBD | Transact-SQL |
| Modélisation | PowerAMC 10 (MERISE et UML) |

**Métrique base de données** :
- 150 tables réparties en 11 schémas
- Volume ~15Go/an pour 200 stations
- ~10 000 lignes de code T-SQL
- 200 procédures stockées, 100 vues, 20 triggers
- 50 jobs de planification
- 1 publication de réplication

**Métrique des modules** :

| Module | Fichiers | Lignes | Classes |
|--------|----------|--------|---------|
| Client Windows | 1344 | 269477 | 1703 |
| Client Web | 1049 | 220003 | 1361 |
| Service d'alarme | 1050 | 95925 | 1180 |
| Service de collecte | 832 | 228963 | 1340 |
| Service d'import/export | 815 | 207829 | 1194 |
| Frontal IP | 194 | 11260 | 203 |
| Gestionnaire de bascule | 2 | 1500 | 2 |
| Service Internet | 1033 | 81054 | 1106 |
| API Web | 943 | 64832 | 959 |

**Patrons de conception** : Factory, Singleton, DAO, DTO, DATA BINDING

#### 2.2.6 Architecture multi-site et haute disponibilité

##### 2.2.6.1 Principe de fonctionnement

**Criticité** : missions de sécurité civile, prévisions des crues et inondations

**Architecture HA** :
- Redondance à chaud sur 2 sites géographiquement distincts
- 1 site actif + 1 à plusieurs sites passifs (lecture seule)
- Réplication en temps réel de la base de données

**Prise en charge en secours** :

| Type | Mode |
|------|------|
| Collectes et échanges | **Automatique** |
| Basculement complet | **Manuel** (via gestionnaire de bascule) |

##### 2.2.6.2 Surveillance du système

**Supervision permanente** :
- Vérification croisée par services de supervision sur 3 sites distincts
- Principe du quorum

**Surveillance** :
- Sites de concentration : ressources locales + autres services de supervision
- Site de surveillance : autres services de supervision uniquement

**En cas de dysfonctionnement** : alarme téléphonique vers opérateur d'astreinte

##### 2.2.6.3 Positionnement de l'application HD dans le SI

- 2 instances Aquaréel corrélées communicant via réseau privé de collecte ou réseau ministériel
- Solution de routage dynamique sur pare-feux pour disposer de 2 réseaux de communication

---

## 3. ORGANISATION GÉNÉRALE DES PRESTATIONS ET EXIGENCES DU MAÎTRE D'OUVRAGE

### 3.1 Organisation générale

**Structure du marché** :
- **Tranche ferme** : 24 mois, maintenance d'Aquaréel
- **Tranche optionnelle** : réversibilité

**Tranche ferme** :
- Phase d'initialisation (max 4 mois)
- Maintenance évolutive
- Maintenance corrective
- Exploitation (audits, interventions urgentes, interventions ponctuelles, déploiements HD)

**Reconduction** : tacite, 24 mois supplémentaires (hors phase d'initialisation)

**Répartition des responsabilités** :

| Service | Prestations gérées |
|---------|-------------------|
| Service central Vigicrues + SPC GD | Initialisation, maintenance évolutive et corrective |
| Service central Vigicrues | Forfait support |
| Services coordonnés (utilisateurs) | Audits, interventions ponctuelles, déploiements HD |

### 3.2 Livrables Aquaréel

**Documentation existante** :
- Manuel d'exploitation
- Manuel utilisateur
- Manuel d'installation
- Modèle de données

**Livraison complète** :
- Document traçant les modifications
- Setup d'installation
- Code source
- Document de procédure d'installation
- Documentation mise à jour

**Livraison de mise à jour** :
- Document traçant les modifications
- Setup de mise à jour
- Document de procédure d'installation
- Documentation impactée mise à jour
- Code source des composants concernés

### 3.3 Exigences et bonnes pratiques logicielles pour Aquaréel

#### 3.3.1 Évolution du modèle de données

- MERISE pour le dessin de la base de données relationnelle
- Interdiction de réutiliser les mêmes identifiants SQL pour différentes tables (sauf clés étrangères)
- Respect de la norme de développement initiale
- **Validation préalable du maître d'ouvrage** avant modification du modèle conceptuel

#### 3.3.2 Développements en base

- Utilisation des fonctions applicatives du SGBDR
- Soin particulier à l'élaboration des requêtes
- **Interdiction** : fonctions scalaires (standard et UDF), curseurs
- Appel systématique à procédure stockée ou vue pour UPDATE, DELETE, INSERT
- Validation « au fil de l'eau » par le maître d'ouvrage

#### 3.3.3 Développements des services

- Cohérence avec les développements existants
- Respect des normes et conventions de nommage
- Respect de la modélisation des composants

---

## 4. PHASE D'INITIALISATION

**Objectif** : appropriation par le titulaire du logiciel Aquaréel

**Documents remis par le maître d'ouvrage** :
- Sources du code d'Aquaréel
- Documentation existante (§ 3.2)

**Démarrage** : séance de travail de 2 jours (démonstration, présentation fonctionnelle et technique) menée par le SPC Grand Delta

**Obligations du titulaire** :
- Installer une plateforme de développement et une plateforme de test distinctes
- Installer une plateforme de suivi du projet (gestion tickets et anomalies)
- Réaliser une analyse fonctionnelle et technique
- Rédiger un rapport d'analyse (résultats analyse code, diagnostic, propositions d'évolutions/corrections)

**Livrables** :
- Plateformes de développement et de test
- Rapport d'analyse

**Plateforme de test** :
- Reproduction du fonctionnement HD (2 sites de concentration + 1 site de surveillance)
- Collecte des stations de test
- Virtualisation admise
- Périphériques : 2 stations d'acquisition (LNS + AQUACJ), 1 modem 3G (mis à disposition par la MOA)

**Plateforme de test radio** : disponible au SPC GD à Privas (accessible à distance)

---

## 5. MAINTENANCE ÉVOLUTIVE

### 5.1 Déroulement

**Interlocuteurs** : service central Vigicrues et SPC GD

**Méthode** : cycle en V, évolutions regroupées en lots (2 versions max/an indicatif)

**Étapes** :
1. Spécifications générales fonctionnelles (maître d'ouvrage)
2. Spécifications fonctionnelles et techniques détaillées + conception (bon de commande 1)
3. Développement : conception, codage, tests unitaires, intégration, validation interne, documentation (bon de commande 2)
4. Recette : VA, VSR, documentation

### 5.2 Étape 2 : spécifications et conception

- Dossier de spécifications techniques et fonctionnelles détaillées
- Soumis à approbation du maître d'ouvrage
- **Double objet** : exigences fonctionnelles + solutions de développement (impact modèle de données)
- Jalons intermédiaires sous forme de réunions techniques

### 5.3 Étape 3 : réalisation et tests de validation

- Codage des évolutions
- Tests unitaires, d'intégration et de validation
- Mise à jour de la documentation
- **Tests de non-régression obligatoires**
- Cahier de recette rédigé par le titulaire, validé par le maître d'ouvrage
- Recette "usine" possible (1 journée max)

**Livraison** : complète + mise à jour

### 5.4 Étape 4 : recette

**VA (Vérification d'Aptitude)** :
- Conformité au dossier de spécifications
- Documentation complète
- Réalisée par le SPC GD

**VSR (Vérification de Service Régulier)** :
- Fonctionnement en conditions réelles d'exploitation
- Documentation adaptée au fonctionnement opérationnel
- Réalisée par sites pilotes SPC + SPC GD

**Classification des anomalies** :

| Type | Description |
|------|-------------|
| **Bloquante** | Empêche l'utilisation de l'application |
| **Majeure** | Fonctions importantes inaccessibles |
| **Mineure** | Application fonctionnelle malgré fonction mineure impactée |

**Délais d'intervention** :
- Anomalies bloquantes : 2 jours ouvrés
- Anomalies non bloquantes : regroupées en lot

**Validation VSR** : fonctionnement opérationnel continu pendant 1 mois minimum sans anomalie bloquante ni majeure

---

## 6. L'EXPLOITATION ET LA MAINTENANCE CORRECTIVE

**Réunion annuelle de suivi** : titulaire, service central Vigicrues, SPC GD

**Accès distant** : OpenVPN au réseau privé de collecte

### 6.1 Organisation du support

**2 organismes** :
- SPC Grand Delta : support « métier »
- Titulaire : interventions urgentes + demandes de prestations spécifiques

**Plateforme de suivi** : mise en place par le titulaire, accès pour les gestionnaires des services

**Interventions urgentes** : saisie plateforme + appel téléphonique au titulaire

### 6.2 Les interventions urgentes

- Diagnostic et résolution de problèmes bloquants
- Résolvables en moins d'une journée (définitif ou contournement provisoire)
- **Délai d'intervention** : 1 jour ouvré
- Rapport d'intervention obligatoire

### 6.3 La maintenance corrective

- Correction des anomalies non détectées lors des recettes et garanties
- Bons de commande par le service central Vigicrues
- Diagnostic initial sur forfait support

**Contenu de la demande** :
- Description de l'anomalie
- Qualification (mineure, majeure, bloquante)
- Données et étapes pour reproduire

**Délais** :
- Bloquantes/majeures : 2 jours ouvrés
- Mineures : regroupées, max 1 mois

### 6.4 Le forfait support

**15 jours/an** (commun à tous les utilisateurs) :
- Interventions urgentes
- Qualification des anomalies (diagnostic et suivi)

**Délai de qualification** : 1 semaine

### 6.5 Les audits

**Fréquence recommandée** : 1 à 2 fois/an

**Vérifications** :
- Version des composants déployés
- Configuration des composants
- Processus de supervision et maintenance
- Purges et archivage
- Journaux d'activités (Windows, SQL Server, application, périphériques)
- Fonctionnement d'ensemble HD (avec service utilisateur)

**Durée** :
- Audit : 1 journée/instance
- Tests HD : ½ journée

**Délais** :
- Réalisation : 4 semaines après bon de commande
- Rapport : 3 semaines après audit

### 6.6 Les interventions ponctuelles

**Exemples** :
- Diagnostic hors maintenance corrective
- Remise en ordre de marche
- Administration spécifique BDD
- Reprise de données historiques
- Mise à jour documentation
- Installation sur site (si pas d'accès distant)

Commandées par les services utilisateurs.

### 6.7 Installation du fonctionnement d'ensemble

- Réalisée à distance
- **Audit préalable recommandé**
- Durée estimée : 2 jours
- Délai : 4 semaines après audit + 4 semaines après bon de commande
- Validation : 1 mois après mise en service

**Contenu** :
- Déclaration des sites du cluster HD
- Identification et paramétrage du site principal
- Récupération paramétrage périphériques site passif
- Paramétrage et mise en œuvre réplication
- Installation gestionnaire de bascule
- Installation et paramétrage supervision inter-sites
- Tests de bascule

---

## 7. CLAUSES ENVIRONNEMENTALES

**Rapport annuel** (avant fin T1 de l'année N pour N-1) :
- Formations réalisées (écoconception, numérique responsable)
- Principes d'écoconception mis en œuvre
- Suivi annuel des actions ayant un impact sur le projet

---

## 8. PÉRIODE DE TRANSITION (TRANCHE OPTIONNELLE)

**Objectif** : transfert de compétence vers maître d'ouvrage (réversibilité) ou tiers (transférabilité)

**Durée max** : 2 mois

**Contenu** :
- Transfert de compétence
- Actualisation de la documentation
- Journal des corrections (garantie et maintenance corrective)
- Assistance installation plateforme de développement
- Assistance installation plateforme de test
- Présentation architecture technique, organisation code source et BDD
- Démonstration administration et exploitation

---

## ANNEXES

- Annexe 1 : Manuel utilisateur Aquaréel
