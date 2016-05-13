---
layout: pagina
title: Sobre
permalink: sobre/
---

<section>
	<article class="s1_2 s2_2 s3_7 s4_6">
		<img class="sobre-img" src="/img/sobre.jpg">
		<article class="minhoca">
			{% include minhoca.html %}
		</article>
	</article>
	<article class="s1_0 s2_1 s3_1 s4_2"></article>
	<article class="s1_2 s2_3 s3_4 s4_3 about-text">
		<p>
			Thales Fernando – POMB – é designer de formação, mas artista urbano e ilustrador por vocação.
		</p>
		<p>
			Além do muralismo e gravuras, seu atual estudo envolve colagens em larga escala, utilizando­-se de peças de madeira para a construção de totens e máscaras. Seu trabalho possui cores e personagens vibrantes, derivados de seu imaginário e de tudo que o rodeia.
		</p>
		<p class="destaque">
			<a href="http://pomb.com.br/portfolio_pomb.pdf" target="_blank">Portfolio (pdf)</a><br/>
			<a href="http://pomb.com.br/curriculo_pomb.pdf" target="_blank">Currículo (pdf)</a>
		</p>
	</article>

</section>

<section>
		<h2>
			Exposições
		</h2>
	<article class="s1_0 s2_2 s3_4 s4_4"></article>
	<article class="s1_2 s2_2 s3_4 s4_3">
		<h3>
			­Individuais
		</h3>
		{% for exposicao in site.data.exposicoes-individuais %}
			{% assign index = forloop.index0 %}
			{% assign index-ano = site.data.exposicoes-individuais[index].ano %}
			{% assign prev-index = forloop.index0 | minus: 1 %}
			{% assign prev-index-ano = site.data.exposicoes-individuais[prev-index].ano %}
			{% unless index-ano == prev-index-ano %}
				<h4>{{ exposicao.ano }}</h4>
				<ul>
				{% for expo in site.data.exposicoes-individuais %}
					{% if expo.ano == exposicao.ano %}
						<li><i>{{ expo.titulo }}</i>
						{% if expo.titulo != '' and expo.local != '' %}
						 | 
						{% else %}
						{% endif %}
						{{ expo.local }}</li>
					{% endif %}
				{% endfor %}
				</ul>
			{% endunless %}
		{% endfor %}
	</article>
	<article class="s1_0 s2_0 s3_0 s4_1"></article>
	<article class="s1_2 s2_2 s3_4 s4_3">
		<h3>
			­Coletivas
		</h3>
		{% for exposicao in site.data.exposicoes-coletivas %}
			{% assign index = forloop.index0 %}
			{% assign index-ano = site.data.exposicoes-coletivas[index].ano %}
			{% assign prev-index = forloop.index0 | minus: 1 %}
			{% assign prev-index-ano = site.data.exposicoes-coletivas[prev-index].ano %}
			{% unless index-ano == prev-index-ano %}
				<h4>{{ exposicao.ano }}</h4>
				<ul>
				{% for expo in site.data.exposicoes-coletivas %}
					{% if expo.ano == exposicao.ano %}
						<li><i>{{ expo.titulo }}</i>
						{% if expo.titulo =='' or expo.local =='' %}
						{% else %}
						 | 
						{% endif %}
						{{ expo.local }}</li>
					{% endif %}
				{% endfor %}
				</ul>
			{% endunless %}
		{% endfor %}
	</article>
	<article class="s1_0 s2_0 s3_0 s4_1"></article>

</section>