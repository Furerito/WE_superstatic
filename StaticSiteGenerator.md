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

## Quellen
- Jekyll Dokumentation: [jekyllrb.com](https://jekyllrb.com/docs/)
- GitHub Pages Dokumentation: [docs.github.com/pages](https://docs.github.com/en/pages)
