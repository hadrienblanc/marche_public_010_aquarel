# Synthèse exécutive (lecture jury)

Cette synthèse met en avant les éléments différenciants et les preuves associées pour faciliter l'évaluation de l'offre.

## 1) Compréhension et enjeu opérationnel

AQUAREEL est un système critique de collecte/exploitation hydrométrique. La réponse du titulaire vise à sécuriser la continuité de service, la non‑régression et la compatibilité haute disponibilité, tout en respectant strictement le cadre contractuel (CCTP/CCAP) et l'organisation multi-acteurs (SCV / SPC GD / services utilisateurs).

**Sigles (rappel)** : SCV (Service Central Vigicrues), SPC GD (maîtrise d'œuvre), CVH (Cellule de Veille Hydrologique), COPIL (comité de pilotage), HD (haute disponibilité), ME (maintenance évolutive), MC (maintenance corrective), VA/VSR (recette).

## 2) Différenciateurs techniques “orientés preuves”

- **Non‑régression industrialisée (base + applicatif)** : tests automatisés SQL (procédures, triggers, jobs) + scénarios applicatifs + contrôles HD, rejoués avant chaque livraison, avec rapport de tests transmis. (cf. Chapitre 9, Annexe A.2)
- **Compatibilité systématique HD / réplication** : analyse d'impact dès les spécifications, checklist réplication, Go/No‑Go et rollback, contrôles dédiés sur plateforme HD. (cf. Chapitre 8, Annexe A.1)
- **Traçabilité et pilotage “ticket‑first”** : un ticket = un historique (qualification, décisions, livrables, validations), suivi hebdo + COPIL mensuel, indicateurs partagés. (cf. Chapitre 7, Annexe A.6 / Annexe A.9)
- **Livraisons reproductibles et auditables** : note de livraison, scripts, procédure d'installation, procédure de rollback, documentation mise à jour, empreintes d'intégrité. (cf. Chapitre 6, Annexe A.1)
- **Continuité malgré un titulaire unique** : capitalisation, runbooks, renfort identifié activable, validations finales conservées par le titulaire. (cf. Chapitre 11)

## 3) Où sont les preuves ? (raccourcis jury)

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
| Matrice de conformité | Annexe B (15.md) |

## 4) Prise en compte des Q/R (08/12/2025)

- Volumétrie d'anomalies hors recette principalement en garantie : intégrée dans le pilotage MC et les indicateurs. (cf. Chapitre 6 / Chapitre 7)
- MEP réalisée par les administrateurs : le titulaire fournit setups/procédures et assiste à distance si nécessaire. (cf. Chapitre 6)
- Baseline perf client léger ~3s (requêtes volumineuses) : utilisée comme point de départ de suivi, sans promesse absolue. (cf. Chapitre 9)

## 5) Délais clés (extraits)

| Sujet | Délai |
|---|---|
| Intervention urgente (diagnostic / remise en service) | 1 jour ouvré |
| Anomalie bloquante / majeure (intervention) | 2 jours ouvrés |
| Anomalie mineure (délai maximum) | 1 mois |
| Relevé de décisions | 5 jours ouvrés |

## 6) Complétude (points DCE à ne pas oublier)

- **BEGES / plan de transition (CCAP art. 5)** : attestation de non‑assujettissement fournie (`rendu/ATTESTATION_BEGES_L229-25.md`).
