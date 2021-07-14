/*******************************
Funções executadas quando a página fica pronta
********************************/

jQuery(document).ready(function() {
	
	/* Abre Menu */
	jQuery('#menuMobile').click(function(){
		jQuery('#menuPrincipal').addClass('active');
	});

	/* Fecha Menu */
	jQuery('#fechaMenuMobile').click(function(){
		jQuery('#menuPrincipal').removeClass('active');
	});

	/* Volta ao topo da página */
	jQuery('.botaoSubir').click(function(){
		jQuery('html, body').animate({scrollTop: 0},'slow');
	});

	/* Busca Full */

	jQuery('#header #buscaHeader').on('click', function() {
		jQuery('#buscaFull').slideToggle();
	})

	jQuery('#fechaBusca').on('click', function() {
		jQuery('#buscaFull').slideToggle();
	})

	/* Máscaras */

	if($(".telefone").length > 0){
		$(".telefone").mask("(00) 0000-00009");
	}

	jQuery('.telefone').blur(function(event) {
		if(jQuery(this).val().length == 15){
			jQuery('.telefone').mask('(00) 00000-0009');
		} else {
			jQuery('.telefone').mask('(00) 0000-00009');
		}
	});

})