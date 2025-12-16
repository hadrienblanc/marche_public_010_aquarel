# Sécurité AQUAREEL - Approche Pragmatique

## 1. Analyse de Risques (Sans méthode complexe)

### Menaces principales identifiées
```
🚨 Panne électrique sur site principal
🚨 Corruption base de données SQL Server
🚨 Ransomware sur serveurs Windows
🚨 Erreur humaine lors mise à jour
🚨 Panne réseau inter-sites
```

### Impacts pour AQUAREEL
```
⚠️ Indisponibilité prévision crues
⚠️ Perte données historiques
⚠️ Fausse prévision (danger mortel)
⚠️ Perte confiance utilisateurs
```

## 2. Mesures de Sécurité Concrètes

### Sécurité Base de données
```sql
-- Audit des accès (SQL Server natif)
CREATE SERVER AUDIT Audit_AQUAREEL
TO FILE (FILEPATH = 'C:\Audit\');

-- Audit connexions
CREATE DATABASE AUDIT SPECIFICATION Audit_DB
FOR SERVER AUDIT Audit_AQUAREEL
ADD (SUCCESSFUL_LOGIN_GROUP);
```

### Sécurité Windows (Simple)
```
✅ Mots de passe complexes + expiration 90j
✅ Antivirus Windows Defender (gratuit)
✅ Mises à jour automatiques Windows
✅ Pare-feu Windows avancé
✅ Sauvegardes externes chiffrées
```

### Sécurité Réseau
```
✅ VPN OpenVPN (déjà en place)
✅ Ports TCP/IP filtrés (que le nécessaire)
✅ Monitoring connexions suspectes
✅ Cloisonnement réseau inter-sites
```

## 3. Plan de Réponse aux Incidents

### Scénario 1 : Ransomware
```
⏱️ 0-15min : Isoler serveurs infectés
⏱️ 15-30min : Bascule site de secours
⏱️ 30-2h : Restaurer dernière sauvegarde saine
⏱️ 2-4h : Validation intégrité données
⏱️ 4-8h : Remise en production progressive
```

### Scénario 2 : Corruption BDD
```
⏱️ 0-30min : Arrêt réplication
⏱️ 30-1h : Analyse corruption (DBCC CHECKDB)
⏱️ 1-2h : Restauration jusqu'à dernière transaction
⏱️ 2-3h : Validation avec SPC GD
⏱️ 3-4h : Redémarrage réplication
```

### Contacts d'urgence
```
📞 SPC GD : [Téléphone direct]
📞 RSSI Interne : [Contact]
📞 Expert sécurité externe : [Prestataire]
📞 ANSSI : [En cas de cyberattaque]
```

## 4. SIEM - Version Légère

### ELK Stack (Open Source)
```
Elasticsearch : Stockage logs
Logstash : Centralisation logs
Kibana : Visualisation
```

### Logs à collecter
```
- Windows Event Logs (sécurité)
- SQL Server Error Logs
- Logs application AQUAREEL
- Logs firewall/routeurs
- Logs tentatives intrusion
```

### Alertes automatiques
```
🚨 5 échecs connexion consécutifs
🚨 Modification schéma BDD hors déploiement
🚦 Perte connexion site distant
📊 CPU > 90% pendant 10min
💾 Espace disque < 10%
```

## 5. Rapport Sécurité Mensuel

### Indicateurs clés
```
- Nb incidents sécurité traités
- Temps moyen résolution
- Vulnérabilités identifiées
- Tests d'intrusion mensuels
- Mises à jour sécurité appliquées
```

### Pour la MOA
```
✅ "Pas d'incident critique ce mois"
✅ "Toutes mises à jour appliquées"
✅ "Backup testé et validé"
✅ "Formation utilisateur réalisée"
```