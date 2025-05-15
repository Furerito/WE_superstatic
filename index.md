---
layout: default
title: Die wunderbare Welt der Giraffen
---

<section id="ueber" class="content-section">
  {% capture ueber_content %}{% include_relative _content/ueber.md %}{% endcapture %}
  {{ ueber_content | markdownify }}
</section>

<section id="fakten" class="content-section">
  {% capture fakten_content %}{% include_relative _content/fakten.md %}{% endcapture %}
  {{ fakten_content | markdownify }}
</section>

<section id="unterarten" class="content-section">
  {% capture unterarten_content %}{% include_relative _content/unterarten.md %}{% endcapture %}
  {{ unterarten_content | markdownify }}
</section>

<section id="galerie" class="content-section">
  {% capture galerie_content %}{% include_relative _content/galerie.md %}{% endcapture %}
  {{ galerie_content | markdownify }}
</section>

<section id="schutz" class="content-section">
  {% capture schutz_content %}{% include_relative _content/schutz.md %}{% endcapture %}
  {{ schutz_content | markdownify }}
</section>