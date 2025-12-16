# Synthèse exécutive — lecture jury (10 minutes)

Cette synthèse met en avant les points d'évaluation clés, avec des engagements sous contrôle du titulaire et des preuves associées.

**Sigles (rappel)** : SCV (Service Central Vigicrues), SPC GD (maîtrise d'œuvre), CVH (Cellule de Veille Hydrologique), COPIL (comité de pilotage), HD (haute disponibilité), ME (maintenance évolutive), MC (maintenance corrective), VA/VSR (recette).

## 1) Lecture jury — 10 minutes

### 1.1 Les 5 risques majeurs du marché (et pourquoi ils comptent)

- **Rupture de service** sur un outil critique (collecte, échanges, supervision) : impact direct sur l'exploitation.
- **Régression** suite à une correction/évolution (base + applicatif) : réouvertures, incidents, perte de confiance.
- **Effets de bord sur la HD / réplication** lors d'évolutions SQL (schéma, triggers, jobs) : risque systémique.
- **Pilotage non maîtrisé** (demandes hors tickets, priorisation floue, forfait support opaque) : dérive délais/coûts.
- **Connaissance non capitalisée** (documentation incomplète, réversibilité théorique) : dépendance et risque opérationnel.

### 1.2 Les 5 réponses concrètes du titulaire

- **Pilotage “ticket‑first”** (aligné sur l'outillage SCV, sans outil imposé) + rituels (suivi hebdo + COPIL mensuel) + relevés de décisions.
- **Quality gate “non‑régression”** : tests automatisés SQL + scénarios applicatifs + contrôles HD, rejoués avant chaque livraison, avec rapport transmis.
- **Compatibilité systématique HD / réplication** : analyse d'impact dès les spécifications, checklist réplication, Go/No‑Go et rollback.
- **Livraisons reproductibles et auditables** : note de livraison, scripts, procédure d'installation, procédure de rollback, documentation synchronisée.
- **Continuité malgré un titulaire unique** : runbooks, capitalisation, dispositif de renfort (pilotage + technique) mobilisable sous 48h ouvrées.

### 1.3 5 engagements “sans sur‑promesse” (garanties de méthode)

- **Aucune évolution n'est lancée sans validation formelle de l'étape 2 (spécifications détaillées/conception)**.
- **Aucune livraison n'est transmise comme « prête à déployer » sans** note de livraison, procédure d'installation, procédure de rollback et **rapport de tests de non‑régression**.
- **Toute modification SQL à impact potentiel (schéma / trigger / job / volumétrie) inclut** une analyse d'impact HD/réplication et un contrôle associé dans la campagne de tests.
- **Toute difficulté pouvant impacter un délai contractuel est signalée** (ticket + alerte) avec options d'arbitrage (contournement, phasage, priorisation).
- **La réversibilité est préparée en continu** (documentation, scripts, “rejouabilité” des livraisons sur environnement de test), afin d'éviter une réversibilité “théorique”.

### 1.4 KPI visibles (pilotage simple et mesurable)

| Indicateur | Finalité | Source |
|---|---|---|
| Délais contractuels (urgence / majeure / mineure) | Vérifier la réactivité et anticiper les écarts | Tableau de bord (Annexe A.6) |
| Tickets ouverts / fermés / âge | Suivre la charge et éviter l'empilement | Tableau de bord (Annexe A.6) |
| Consommation du forfait support (15 j/an) | Transparence et arbitrages | Tableau de bord (Annexe A.6) |
| Livraisons avec rapport de tests NR | Prouver la non‑régression avant livraison | Rapport de tests (Annexe A.2) |
| Incidents critiques / RCA | Capitaliser et réduire la récurrence | RCA (Annexe A.5) |

## 2) Où sont les preuves ? (raccourcis jury)

| Preuve attendue | Où la trouver |
|---|---|
| Note de livraison (plan, rollback, Go/No‑Go) | Annexe A.1 |
| Rapport de tests de non‑régression | Annexe A.2 |
| Rapport d'intervention urgente | Annexe A.3 |
| Rapport d'audit périodique | Annexe A.4 |
| RCA incidents critiques | Annexe A.5 |
| Tableau de bord hebdo / COPIL | Annexe A.6 |
| Rapport annuel environnement (CCTP §7) | Annexe A.7 |
| Insertion (CCAP §4.5) : fiche + justificatifs | Annexe A.8 |
| Relevé de décisions | Annexe A.9 |
| Cahier de recette (VA/VSR) | Annexe A.10 |
| Journal des corrections (garantie + MC) | Annexe A.11 |
| Dispositif de renfort (profils + attestation) | Annexe C (16.md) |
| Exemples concrets (runbooks, supervision, tests) | Annexe D (17.md) |
| Matrice de conformité | Annexe B (15.md) |

## 3) Prise en compte des Q/R (08/12/2025)

- Volumétrie d'anomalies hors recette principalement en garantie : intégrée dans le pilotage MC et les indicateurs. (cf. Chapitre 6 / Chapitre 7)
- MEP réalisée par les administrateurs : le titulaire fournit setups/procédures et assiste à distance si nécessaire. (cf. Chapitre 6)
- Baseline perf client léger ~3s (requêtes volumineuses) : utilisée comme point de départ de suivi, sans promesse absolue. (cf. Chapitre 9)

## 4) Délais clés (extraits)

| Sujet | Délai |
|---|---|
| Intervention urgente (diagnostic / remise en service) | 1 jour ouvré |
| Anomalie bloquante / majeure (intervention) | 2 jours ouvrés |
| Anomalie mineure (délai maximum) | 1 mois |
| Relevé de décisions | 5 jours ouvrés |

## 5) Complétude (points DCE à ne pas oublier)

- **BEGES / plan de transition (CCAP art. 5)** : attestation de non‑assujettissement fournie (`rendu/ATTESTATION_BEGES_L229-25.md`).
