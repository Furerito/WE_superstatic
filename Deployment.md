# Deployment: GitHub Pages mit Automatisierter CI/CD-Pipeline

Unsere Giraffen-Website wird über GitHub Pages veröffentlicht und mit GitHub Actions automatisch deployt. Hier erklären wir, wie das funktioniert und warum wir diese Lösung gewählt haben.

## Wie unser Deployment funktioniert

1. **Code-Änderungen** werden in das GitHub-Repository gepusht
2. **GitHub Actions** erkennt diese Änderungen automatisch
3. Der **Build-Prozess** wird über eine Workflow-Datei (`.github/workflows/gh-pages.yml`) gestartet
4. Ein **virtueller Server** mit Ubuntu wird bereitgestellt
5. **Ruby** und **Jekyll** werden auf dem Server installiert
6. Jekyll **baut die Website** aus den Markdown-Dateien und Templates
7. Die fertige Website wird in den **gh-pages Branch** gepusht
8. **GitHub Pages** veröffentlicht den Inhalt dieses Branches automatisch

Die ganze Veröffentlichung passiert in weniger als einer Minute, völlig automatisch und ohne manuelle Eingriffe.

## Vorteile dieser Deployment-Methode

- **Kostenlos**: GitHub Pages ist für öffentliche Repositories kostenlos
- **Einfach**: Keine Server-Administration notwendig
- **Automatisch**: Nach dem Einrichten läuft alles von selbst
- **Versionskontrolle**: Jede Version der Website bleibt in Git gespeichert
- **Rollback**: Einfaches Zurücksetzen auf frühere Versionen möglich
- **Zusammenarbeit**: Mehrere Entwickler können gleichzeitig arbeiten
- **Sicher**: HTTPS wird von GitHub automatisch bereitgestellt

## Nachteile

- **Eingeschränkte Funktionen**: Keine serverseitigen Skripte oder Datenbanken
- **Öffentliches Repository**: Bei kostenlosen Accounts ist der Quellcode öffentlich
- **Begrenzte Ressourcen**: Bei sehr hohen Besucherzahlen können Einschränkungen gelten
- **Anpassungsmöglichkeiten**: Weniger flexibel als eigene Server-Lösungen

## Alternativen

- **Netlify**: Ähnlich einfach, bietet mehr Funktionen, teilweise kostenpflichtig
- **Vercel**: Gut für JavaScript-Frameworks, teilweise kostenpflichtig
- **AWS S3 + CloudFront**: Skalierbar aber komplexer und kostenpflichtig
- **Eigener Webserver**: Maximale Kontrolle aber höherer Wartungsaufwand

## Warum GitHub Pages für dieses Projekt?

Für unsere statische Giraffen-Website ist GitHub Pages die ideale Lösung: Einfach einzurichten, komplett kostenlos und perfekt für Jekyll. Die automatische Bereitstellung ermöglicht schnelle Aktualisierungen ohne technisches Fachwissen für die Serveradministration.

## Quellen

- GitHub Actions Dokumentation: [docs.github.com/actions](https://docs.github.com/en/actions)
- GitHub Pages Dokumentation: [docs.github.com/pages](https://docs.github.com/en/pages)
- Jekyll Deployment Guide: [jekyllrb.com/docs/deployment](https://jekyllrb.com/docs/deployment/)
