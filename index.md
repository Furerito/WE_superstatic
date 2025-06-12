---
layout: default
title: Die wunderbare Welt der Giraffen
description: Informationen, Fakten und Bilder über Giraffen - die majestätischen Riesen der afrikanischen Savanne
keywords: Giraffen, Savanne, Afrika, Wildtiere, Giraffenarten, Giraffenschutz
---

<section id="ueber">
  {% capture ueber_content %}{% include_relative _content/ueber.md %}{% endcapture %}
  {{ ueber_content | markdownify }}
</section>

<section id="fakten">
  {% capture fakten_content %}{% include_relative _content/fakten.md %}{% endcapture %}
  {{ fakten_content | markdownify }}
</section>

<section id="unterarten">
  {% capture unterarten_content %}{% include_relative _content/unterarten.md %}{% endcapture %}
  {{ unterarten_content | markdownify }}
</section>

<section id="galerie">
  {% capture galerie_content %}{% include_relative _content/galerie.md %}{% endcapture %}
  {{ galerie_content | markdownify }}
  
  <!-- Hinzufügen einer Bildergalerie (als Platzhalter) -->
  <div class="gallery">
    <div>Giraffe 1</div>
    <div>Giraffe 2</div>
    <div>Giraffe 3</div>
    <div>Giraffe 4</div>
    <div>Giraffe 5</div>
    <div>Giraffe 6</div>
  </div>
</section>

<section id="schutz">
  {% capture schutz_content %}{% include_relative _content/schutz.md %}{% endcapture %}
  {{ schutz_content | markdownify }}
</section>