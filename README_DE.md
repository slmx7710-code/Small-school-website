STUDENTENVERZEICHNIS MIT BENUTZERPROFILEN
(Online-Studierendenverzeichnis)
1. Projektidee

Dieses Projekt ist eine webbasierte Anwendung für eine Universität.

Das Ziel ist die Entwicklung eines Online-Studierendenverzeichnisses, das es Studierenden ermöglicht, sich gegenseitig besser kennenzulernen und die Zusammenarbeit zu erleichtern.

Jede Studentin und jeder Student kann ein persönliches Profil erstellen und folgende Informationen hinzufügen:

Fähigkeiten
Projekte
Interessen

Dadurch wird die Zusammenarbeit im Studium (Gruppenarbeit, Lernen und gegenseitige Unterstützung) verbessert.

2. Verwendete Technologien

Frontend:

HTML
CSS (responsives Design)
JavaScript (optional für Suche und Filter)

Backend:

PHP

Datenbank:

MySQL
3. Hauptfunktionen
3.1 Benutzerverwaltung
Registrierung mit Name, E-Mail, Studiengang und Fähigkeiten
Login- und Logout-System mit Fehlermeldungen
Erstellung eines persönlichen Benutzerprofils
Upload eines Profilbildes mit Validierung
Bearbeitung des eigenen Profils (nur für eingeloggte Nutzer)
3.2 Verzeichnis & Suche
Startseite mit allen Studentenprofilen
Suche nach Name oder Studiengang
Filter nach Fähigkeiten und Studiengang
Detailseite mit vollständigen Profilinformationen
Favoriten-System (Profile liken)
3.3 Kommunikation
Internes Nachrichtensystem zwischen Studierenden
Benachrichtigungen bei neuen Nachrichten
4. Datenbankstruktur (MySQL)

Benutzer

ID
Name
E-Mail
Passwort (verschlüsselt mit password_hash)
Studiengang
Foto
Fähigkeiten

Projekte

ID
Benutzer-ID (Foreign Key)
Titel
Beschreibung
Datum

Nachrichten

ID
Absender-ID
Empfänger-ID
Inhalt
Datum

Beziehungen:

Ein Benutzer → mehrere Projekte (1:N)
Ein Benutzer → mehrere Nachrichten (1:N)
Favoriten-System (N:M)
5. Lernziele

Dieses Projekt hat meine Motivation im Bereich der Softwareentwicklung deutlich gestärkt.

Ich habe gelernt:

Eine vollständige Webanwendung zu entwickeln
PHP und MySQL zu verwenden
Benutzerverwaltung und Sicherheit umzusetzen
Passwortverschlüsselung mit password_hash
Such- und Filterfunktionen zu implementieren
Relationale Datenbanken zu verstehen
CRUD-Systeme für Benutzerprofile zu entwickeln
Fazit

Dieses Projekt ist ein wichtiger Schritt in meiner Entwicklung als Webentwickler und zeigt meine Fähigkeit, vollständige Webanwendungen zu erstellen.
