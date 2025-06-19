# Giraffen-Website mit Jekyll

Eine informative Website über Giraffen, die mit Jekyll als Static Site Generator erstellt wurde.

Schau her:

https://furerito.github.io/WE_superstatic/

## Ecograder

https://ecograder.com/report/PVXM2nVbygzlk7p2MUXDWQaD

Hosting auf Github ist letztlich in der Azure Cloud von Microsoft.
Wegen der vielen Standorte der Azure Cloud kann sicher nicht generell behauptet werden dass das Hosting nicht zumindest einigermassen grün sei.
Die Bewertung geht direkt auf 0. Nicht irgendwo dazwischen, was einfach auch unplausibel ist.
Sobald ich die Website auf meinem Privaten Raspberry Pi hoste, wird eine top Bewertung ausgegeben. Ecograder hat dabei keine Ahnung, dass ich den Pi mit einem völlig überdimensionierten Dieselgenerator betreibe und die Abgase ungefiltert durch ein Rohrsystem aus giftigem Plastik direkt in den Regenwald leite.


# Static Site Generator: Jekyll

Für unsere Giraffen-Website haben wir Jekyll als Static Site Generator (SSG) gewählt. Jekyll ist ein Ruby-basierter SSG, der Markdown-Dateien in statische HTML-Webseiten konvertiert.

## Funktionsweise

Jekyll verarbeitet die Markdown-Dateien in unserem `_content` Verzeichnis und fügt deren Inhalt in die entsprechenden Sektionen der HTML-Struktur ein. Wir nutzen Liquid-Templates (`{% ... %}`) in der `index.md`, um die Markdown-Inhalte einzubinden und zu HTML zu konvertieren:

```markdown
<section id="ueber">
  {% capture ueber_content %}{% include_relative _content/ueber.md %}{% endcapture %}
  {{ ueber_content | markdownify }}
</section>
```

Bei jedem Push zum Repository baut ein GitHub-Workflow die Website automatisch und stellt sie über GitHub Pages zur Verfügung.


# Variantenentscheid

## Vorteile
- **Nahtlose GitHub Pages Integration**: Jekyll ist der Standard-SSG für GitHub Pages
- **Einfache Inhaltspflege**: Inhalte können als Markdown-Dateien gepflegt werden, ohne HTML zu bearbeiten
- **Trennung von Inhalt und Präsentation**: Layout-Templates in `_layouts` und Inhalte in `_content`
- **Keine Datenbank notwendig**: Alle Inhalte werden aus Dateien generiert
- **Kostenlose Bereitstellung**: GitHub Pages bietet kostenloses Hosting für Jekyll-Websites
- **Schnelle Ladezeiten**: Generiert statische HTML-Dateien ohne serverseitige Verarbeitung
- **Sicherheit**: Keine dynamischen Komponenten, die angreifbar wären


## Nachteile
- **Ruby-Abhängigkeit**: Lokale Entwicklung erfordert Ruby-Installation
- **Eingeschränkte Dynamik**: Funktionen wie Benutzerinteraktionen oder Formulare sind limitiert
- **Lernkurve**: Liquid-Template-Syntax kann anfänglich komplex erscheinen
- **Verarbeitungszeit**: Bei sehr grossen Websites kann der Build-Prozess länger dauern
- **Begrenztes Plug-in-Ökosystem**: Im Vergleich zu moderneren SSGs wie Next.js oder Hugo

## Alternativen
- **Hugo**: Schneller Go-basierter SSG, komplexer in der Einrichtung
- **Eleventy (11ty)**: JavaScript-basierter SSG mit hoher Flexibilität
- **Next.js**: React-Framework mit erweiterter Funktionalität, aber komplexer
- **Gatsby**: React-basierter SSG mit GraphQL, leistungsfähig aber komplex

Jekyll wurde aufgrund seiner einfachen Integration mit GitHub Pages und der überschaubaren Komplexität für dieses Projekt gewählt.


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
- Jekyll Dokumentation: [jekyllrb.com](https://jekyllrb.com/docs/)
- GitHub Pages Dokumentation: [docs.github.com/pages](https://docs.github.com/en/pages)
