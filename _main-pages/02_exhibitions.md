---
layout: page
title: Exposições
permalink: exposicoes/
---

<section>
	{% for exhibition in site.exhibition %}
		<article class="s1_0 s2_0 s3_0 s4_1"></article>
		<article class="s1_1 s2_2 s3_2 s4_3">
			<a class="thumb-link" href="{{ site.baseurl }}{{exhibition.url}}">
				<div class="exhibition-thumb" style="background-image: url({{ site.baseurl }}/img{{ exhibition.url | remove: '.html'}}{{ exhibition.url | remove: '.html' | remove: '/exposicoes'}}-thumb.jpg)">
				</div>
				<h5 class="expo-thumb-titulo">{{ exhibition.title }}</h5>
			</a>
		</article>
	{% endfor %}
</section>