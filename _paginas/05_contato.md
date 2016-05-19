---
layout: pagina
title: Contato
permalink: contato/
---

<section>
	<article class="s1_0 s2_0 s3_0 s4_0">
		<p class="destaque">
			<a href="mailto:hellopomb@gmail.com">hellopomb@gmail.com</a><br/>
			<a href="https://www.facebook.com/pomb.thales">Facebook</a><br/>
			<a href="https://www.instagram.com/pomb_/">Instagram</a>
		</p>
		<h4>Newsletter</h4>
		<p>Inscreva seu email e receba atualizações:</p>
		<form action="https://getsimpleform.com/messages?form_api_token=3545df1635b37edd660e0b48d0104fd2" method="post">
			<input type='text' name='email' placeholder='Seu email'/>
	  		<input type='submit' value='Inscrever' />
		</form>
	</article>
	<article class="s1_2 s2_0 s3_0 s4_3">
		<p class="destaque">
			<a href="mailto:hellopomb@gmail.com">hellopomb@gmail.com</a><br/>
			<a href="https://www.facebook.com/pomb.thales">Facebook</a><br/>
			<a href="https://www.instagram.com/pomb_/">Instagram</a>
		</p>
	</article>
	<article class="s1_2 s2_4 s3_8 s4_6">
		<!-- <h2>Contato</h2> -->
		<form action="https://getsimpleform.com/messages?form_api_token=3545df1635b37edd660e0b48d0104fd2" method="post">
			<input type='text' name='nome' placeholder='Seu nome' autofocus />
			<input type='text' name='email' placeholder='Seu email'/>
			<input type='text' name='assunto' placeholder='Assunto'/>
	  		<textarea rows="4" name='test' placeholder='Sua mensagem'></textarea> 
	  		<input type='submit' value='Enviar' />
		</form>
	</article>
	<article class="s1_0 s2_0 s3_1 s4_1"></article>
	<article class="s1_2 s2_0 s3_0 s4_2">
		<h4>Newsletter</h4>
		<p>Inscreva seu email e receba atualizações:</p>
		<form action="https://getsimpleform.com/messages?form_api_token=3545df1635b37edd660e0b48d0104fd2" method="post">
			<input type='text' name='email' placeholder='Seu email'/>
	  		<input type='submit' value='Inscrever' />
		</form>
	</article>
	<article class="s1_0 s2_2 s3_3 s4_0">
		<p class="destaque">
			<a href="mailto:hellopomb@gmail.com">hellopomb@gmail.com</a><br/>
			<a href="https://www.facebook.com/pomb.thales">Facebook</a><br/>
			<a href="https://www.instagram.com/pomb_/">Instagram</a>
		</p>
		<h4>Newsletter</h4>
		<p>Inscreva seu email e receba atualizações:</p>
		<form action="https://getsimpleform.com/messages?form_api_token=3545df1635b37edd660e0b48d0104fd2" method="post">
			<input type='text' name='email' placeholder='Seu email'/>
	  		<input type='submit' value='Inscrever' />
		</form>
	</article>
</section>

<script type="text/javascript">
	
	$('body').on('keydown', 'input, select', function(e) {
	    var self = $(this)
	      , form = self.parents('form:eq(0)')
	      , focusable
	      , next
	      ;
	    if (e.keyCode == 13) {
	        focusable = form.find('input,a,select,button,textarea').filter(':visible');
	        next = focusable.eq(focusable.index(this)+1);
	        if (next.length) {
	            next.focus();
	        } else {
	            form.submit();
	        }
	        return false;
	    }
	});

</script>