# Marché Public AQUAREEL - TMA 2025

## Contexte du marché

- **Acheteur** : Service Central Vigicrues (SCV) - Ministère de la Transition Écologique
- **Objet** : Tierce Maintenance Applicative (TMA) de l'application AQUAREEL
- **Type** : Marché public français - Procédure adaptée
- **Application** : Système critique de sécurité civile (prévision des crues)

## Documents du DCE

### Documents contractuels (DCE_2025_TMA AQUAREEL_ (1)/)

| Document | Fichier | Description |
|----------|---------|-------------|
| **CCTP** | `CCTP_Aquareel_2025_vd.pdf` | Cahier des Clauses Techniques Particulières - Document de référence pour le mémoire technique |
| **CCAP** | `CCAP_2025 TMA AQUAREEL_vd.pdf` | Cahier des Clauses Administratives Particulières |
| **AE** | `AE_2025_TMA AQUAREEL_vd.odt/.pdf` | Acte d'Engagement |
| **BPU** | `BPU_Aquareel_2025_vd.odt/.pdf` | Bordereau des Prix Unitaires |
| **DPF** | `DPF_Aquareel_2025_vd.odt/.pdf` | Décomposition du Prix Forfaitaire |
| **Annexe 1** | `CCTP_Aquareel_annexe1_Manuel_Utilisateur.pdf` | Manuel Utilisateur AQUAREEL |

### Autres documents

| Document | Fichier | Description |
|----------|---------|-------------|
| **Q-R** | `Q-R_DCE_TMA_AQUAREEL_2025-2.pdf` | Questions/Réponses du DCE |

## Structure du projet

```
010-aquarel/
├── CLAUDE.md                           # Ce fichier
├── DCE_2025_TMA AQUAREEL_ (1)/         # Documents du DCE
├── Q-R_DCE_TMA_AQUAREEL_2025-2.pdf     # Questions/Réponses
├── notes perso/                        # Notes de travail
├── rendu/                              # Fichiers à rendre (BPU, DPF)
└── memoire/                            # Mémoire technique (chapitres .md)
```

## Mémoire technique - Structure

Le mémoire technique est organisé dans le dossier `memoire/` avec les chapitres suivants :

| Fichier | Chapitre |
|---------|----------|
| `00-a-cover.md` | Page de garde |
| `00-b-menu.md` | Sommaire |
| `01.md` | Compréhension du contexte et du périmètre du marché |
| `02.md` | Description synthétique de l'architecture existante AQUAREEL |
| `03.md` | Organisation générale des prestations |
| `04.md` | Phase d'initialisation et transfert de connaissance |
| `05.md` | Maintenance évolutive |
| `06.md` | Maintenance corrective |
| `07.md` | Exploitation et support |
| `08.md` | Haute disponibilité et contraintes associées |
| `09.md` | Assurance qualité et tests |
| `10.md` | Sécurité, confidentialité et RGPD |
| `11.md` | Organisation de l'équipe et continuité de service |
| `12.md` | Réversibilité et transférabilité (tranche optionnelle) |
| `13.md` | Engagements du titulaire |

## Principes de rédaction du mémoire

### Ce qui fait gagner
- Alignement parfait avec le CCTP
- Vocabulaire rassurant et technique
- Absence totale de prise de risque
- Ton de notice d'exploitation sérieuse

### Ce qui fait perdre
- Créativité hors périmètre
- Promesses de modernité
- Propositions non demandées

### Règles strictes
- **JAMAIS** : modernisation, refonte, cloud, containers, microservices
- **TOUJOURS** : stabilité, fiabilité, continuité, traçabilité
- Respecter le périmètre exact de la TMA
- Ne pas proposer de changements d'architecture

## Caractéristiques techniques AQUAREEL

- Architecture SQL Server centrale
- Logique métier majoritairement en base de données
- Client léger / client lourd
- Haute disponibilité multi-sites (réplication SQL Server)
- Traitements batch et temps réel

## Points d'attention

1. **Application critique** : Sécurité civile - prévision des crues
2. **Haute disponibilité** : Toute modification doit être compatible réplication SQL
3. **Périmètre strict** : TMA uniquement, pas d'infra/matériel/OS
4. **Processus formalisé** : Validation MOA systématique
