# Questions-Réponses pour candidats

**Référence consultation** : MF_2025_TMA_AQUAREEL

**Objet de la consultation** : Tierce maintenance applicative portant sur l'outil Aquareel

**Date et heure limite de remise des plis** : 18/12/2025 15:00

---

## Question n°1 du 08/12/2025

**Question** : Pouvez-vous préciser le volume annuel moyen d'anomalies traitées dans le cadre du marché actuel, par catégorie (bloquantes, majeures, mineures) sur les années 2023, 2024 et 2025 ?

### Réponse n°1

Voici le volume des anomalies traitées hors recette, principalement en garantie :

| Type | 2023 | 2024 | 2025 |
|------|------|------|------|
| Bloquantes | 0 | 5 | 1 |
| Majeures | 11 | 12 | 8 |
| Mineures | 23 | 16 | 16 |

---

## Question n°2 du 08/12/2025

**Question** : Quel est le volume d'opérations techniques réalisé chaque année (mises en production, opérations de maintenance, rafraîchissement de données, réinitialisations de réplication) ?

### Réponse n°2

- Les **mises en production** sont réalisées par les administrateurs sur chaque site. Le titulaire se "contente" de fournir les setups propres à chaque nouvelle version.

- Les **opérations réalisées par le titulaire sur site** se font à distance. Elles consistent principalement en un **audit** décrit au §6.5 du CCTP. Nous préconisons aux utilisateurs une **fréquence d'audit annuelle**.

- Le titulaire pourra également réaliser à distance des interventions pour **qualifier et diagnostiquer des anomalies** lorsque la maîtrise d'œuvre n'a pas réussi à le faire. Ce volume d'intervention n'est pas chiffré, mais il est **très faible**.

---

## Question n°3 du 08/12/2025

**Question** : Disposez-vous d'un indicateur de dette technique ou d'une estimation du nombre de procédures stockées, vues, triggers et services nécessitant une mise à niveau ?

### Réponse n°3

La dette technique identifiée sur cette application consiste essentiellement en une **migration sur des plate-formes Windows server et SQL server à jour**, nécessitant des tests de non-régression.

---

## Question n°4 du 08/12/2025

**Question** : Le lot d'évolutions décrit dans l'étude de cas couvre-t-il l'intégralité des fonctionnalités du client lourd devant être migrées vers le client léger, ou subsiste-t-il d'autres fonctionnalités à prévoir au cours du marché ?

### Réponse n°4

Une **première moitié de client lourd a déjà été migrée** sur le client léger.

Le lot d'évolution décrit dans le cadre de réponse représente la **seconde moitié du contenu du client lourd**.

Le **client lourd pourra disparaître** à l'issue de ce lot.

---

## Question n°5 du 08/12/2025

**Question** : Quel est le nombre annuel d'incidents liés aux mécanismes de collecte, de réplication SQL et de haute disponibilité ?

### Réponse n°5

- Les **incidents de collecte** ne sont généralement pas liés à l'application mais aux incidents sur des composants externes à l'application, en particulier les **réseaux de transmission**, et éventuellement les **centrales d'acquisition** et les **capteurs**.

- Récemment, **une seule anomalie** a été traitée sur l'application concernant le service de collecte.

- Idem pour la **haute disponibilité**, les incidents sont liés aux réseaux et gérés généralement directement par les utilisateurs.

---

## Question n°6 du 08/12/2025

**Question** : Le CCTP attire l'attention sur la forte volumétrie. Afin d'établir des objectifs de performance clairs pour le nouveau client léger, pourriez-vous nous fournir des métriques de performance actuelles du client lourd (temps de chargement moyen des vues complexes, temps d'exécution de requêtes représentatives) qui serviraient de "baseline" à ne pas dépasser ?

### Réponse n°6

Le CCTP fait en effet référence à la volumétrie. Cependant, cette question est de **moins en moins actuelle**.

Nous allons tendre vers une **suppression des bases historiques** pour ne conserver que la **base glissante "temps réel"**, l'historique étant maintenant déjà stocké par ailleurs.

**Les requêtes avec le client léger ne dépassent pas actuellement 3 secondes** pour les plus volumineuses.

Au §3.3.2 du CCTP, nous insistons sur les **bonnes pratiques des développements en base de données** qui garantissent ces performances.

---

## Question n°7 du 08/12/2025

**Question** : Le CCTP demande un rapport annuel sur la politique environnementale. Concernant les "principes d'écoconception mis en œuvre", attendez-vous des métriques spécifiques (ex: réduction du poids des pages, nombre de requêtes serveur, score GreenIT-Analysis) ou une description qualitative des bonnes pratiques appliquées ?

### Réponse n°7

Ces **critères environnementaux sont nouveaux** pour nous. Nous n'avons pas d'attentes spécifiques.

Les candidats sont **libres de répondre selon la forme qu'ils souhaitent**, qualitative ou quantitative.
