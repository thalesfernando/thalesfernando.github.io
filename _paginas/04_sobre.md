---
layout: pagina
title: Sobre
permalink: sobre/
---

<section class="sobre-intro">
	<figure>
		<img src="/img/sobre.jpg">
	</figure>
	<article class="sobre-txt">
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

<section class="lista-dupla">
	<h2>
		Exposições
	</h2>
	<article>
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
			<li>
				{% if expo.titulo %}{{ expo.titulo }}{% endif %}{% if expo.titulo %} | {% endif %}{% if expo.local %}{{ expo.local }}{% endif %}
			</li>
					{% endif %}
				{% endfor %}
		</ul>
			{% endunless %}
		{% endfor %}
	</article>
	<article>
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
			<li>
				{% if expo.titulo %} {{ expo.titulo }}{% endif %}{% if expo.titulo %} | {% endif %}{% if expo.local %}{{ expo.local }}{% endif %}
			</li>
					{% endif %}
				{% endfor %}
		</ul>
			{% endunless %}
		{% endfor %}
	</article>
</section>