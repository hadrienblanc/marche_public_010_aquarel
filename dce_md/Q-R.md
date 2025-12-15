# Questions-Réponses pour candidats

**Référence consultation** : MF_2025_TMA_AQUAREEL

**Objet de la consultation** : Tierce maintenance applicative portant sur l'outil Aquareel

**Date et heure limite de remise des plis** : 18/12/2025 15:00

---

## Question n°1 (08/12/2025)

**Question** : Pouvez-vous préciser le volume annuel moyen d'anomalies traitées dans le cadre du marché actuel, par catégorie (bloquantes, majeures, mineures) sur les années 2023, 2024 et 2025 ?

**Réponse** :

Volume des anomalies traitées hors recette, principalement en garantie :

| Type | 2023 | 2024 | 2025 |
|------|------|------|------|
| **Bloquantes** | 0 | 5 | 1 |
| **Majeures** | 11 | 12 | 8 |
| **Mineures** | 23 | 16 | 16 |

---

## Question n°2 (08/12/2025)

**Question** : Quel est le volume d'opérations techniques réalisé chaque année (mises en production, opérations de maintenance, rafraîchissement de données, réinitialisations de réplication) ?

**Réponse** :

- **Mises en production** : réalisées par les administrateurs sur chaque site. Le titulaire se "contente" de fournir les setups propres à chaque nouvelle version.

- **Opérations sur site** : réalisées à distance par le titulaire, principalement des audits (§6.5 du CCTP). Fréquence préconisée : **annuelle**.

- **Interventions diagnostic/qualification** : volume non chiffré mais **très faible** (quand la maîtrise d'œuvre n'a pas réussi à qualifier).

---

## Question n°3 (08/12/2025)

**Question** : Disposez-vous d'un indicateur de dette technique ou d'une estimation du nombre de procédures stockées, vues, triggers et services nécessitant une mise à niveau ?

**Réponse** :

La dette technique identifiée consiste essentiellement en une **migration sur des plateformes Windows Server et SQL Server à jour**, nécessitant des tests de non-régression.

---

## Question n°4 (08/12/2025)

**Question** : Le lot d'évolutions décrit dans l'étude de cas couvre-t-il l'intégralité des fonctionnalités du client lourd devant être migrées vers le client léger, ou subsiste-t-il d'autres fonctionnalités à prévoir au cours du marché ?

**Réponse** :

- Une **première moitié** du client lourd a déjà été migrée sur le client léger.
- Le lot d'évolution décrit dans le cadre de réponse représente la **seconde moitié** du contenu du client lourd.
- Le **client lourd pourra disparaître** à l'issue de ce lot.

---

## Question n°5 (08/12/2025)

**Question** : Quel est le nombre annuel d'incidents liés aux mécanismes de collecte, de réplication SQL et de haute disponibilité ?

**Réponse** :

**Incidents de collecte** :
- Généralement **non liés à l'application** mais aux composants externes (réseaux de transmission, centrales d'acquisition, capteurs)
- Récemment : **une seule anomalie** traitée sur l'application concernant le service de collecte

**Haute disponibilité** :
- Incidents liés aux réseaux
- Gérés généralement **directement par les utilisateurs**

---

## Question n°6 (08/12/2025)

**Question** : Le CCTP attire l'attention sur la forte volumétrie. Afin d'établir des objectifs de performance clairs pour le nouveau client léger, pourriez-vous nous fournir des métriques de performance actuelles du client lourd (temps de chargement moyen des vues complexes, temps d'exécution de requêtes représentatives) qui serviraient de "baseline" à ne pas dépasser ?

**Réponse** :

- La question de volumétrie est **de moins en moins actuelle**
- Tendance : **suppression des bases historiques** pour ne conserver que la base glissante "temps réel" (historique stocké par ailleurs)
- **Temps de requête actuel** avec client léger : max **3 secondes** pour les plus volumineuses
- Référence : §3.3.2 du CCTP (bonnes pratiques développements en BDD)

---

## Question n°7 (08/12/2025)

**Question** : Le CCTP demande un rapport annuel sur la politique environnementale. Concernant les "principes d'écoconception mis en œuvre", attendez-vous des métriques spécifiques (ex: réduction du poids des pages, nombre de requêtes serveur, score GreenIT-Analysis) ou une description qualitative des bonnes pratiques appliquées ?

**Réponse** :

- Critères environnementaux **nouveaux** pour le maître d'ouvrage
- **Pas d'attentes spécifiques**
- Les candidats sont **libres de répondre selon la forme souhaitée** (qualitative ou quantitative)

---

## Points clés à retenir

| Sujet | Information clé |
|-------|-----------------|
| Volume anomalies | ~30-35/an (hors recette) |
| Fréquence audits | Annuelle recommandée |
| Dette technique | Migration Windows/SQL Server |
| Client lourd | Disparition prévue après migration complète |
| Incidents HA | Gérés par utilisateurs, liés aux réseaux |
| Performance requêtes | Max 3 secondes |
| Critères environnementaux | Forme libre |
