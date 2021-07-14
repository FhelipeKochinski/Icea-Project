<?php
/**
 * Template Name: Home
 */
?>

<?php get_header() ?>

<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/home.css">

<!-- Banner Topo -->
<section id="bannerInicial">

        <!-- Loop banner -->
        <?php if( have_rows('banners_topo') ):?>
 
            <?php while( have_rows('banners_topo') ) : the_row(); ?>
            
                <!-- Banner's -->
                <div class="boxBannerTopo">

                    <figure class="bannerTopDesktop">
                        <?php getImagemObj(get_sub_field('banner_desktop')['sizes'], '2048x2048', 'banner') ?>
                    </figure>

                    <figure class="bannerTopMobile">
                        <?php getImagemObj(get_sub_field('banner_mobile')['sizes'], '2048x2048', 'banner') ?>
                    </figure>

                    <!-- Links / Botão Banner Top --> 
                    <div class="boxLinks"> 

                        <div class="container">
                                
                            <div class="divBtnTop">

                                <?php $links = get_sub_field('links'); ?>
                                <?php if( $links ) { ?>
                                        
                                    <?php foreach( $links as $link ) { ?>
                                    
                                        <a href="<?= $link['link'] ?>" id="btnTop"><?= $link['texto_link'] ?></a>
                                                                    
                                    <?php } ?>
                            
                                <?php } ?> 
                            
                            </div>

                        </div>

                    </div>
                </div>
  
           <?php endwhile; ?>

       <?php endif; ?>
       <!-- /Loop banner -->

</section>
<!-- Fim Banner Topo -->

<!-- Inicio Conteudo -->
<section id="conteudoPagina">

    <div class="container">

        <div class="boxConteudo">

            <!-- Texto/Link Conteudo -->
            <div class="col-sm-6">

                <span id="tituloContent"><?= get_field('titulo_conteudo') ?></span>

				<div class="textoInterno">
                   <?= get_field('texto_conteudo') ?>
				</div>

                <!-- Botão Conteudo -->
                <div class="divBtn">
                    <a href="<?= get_field('link_conteudo') ?>" id="btnConteudo"><?= get_field('link_conteudo') ?></a>
                </div>      

            </div>

            <!-- Imagem Principal Conteudo -->
            <div class="boxImgPrincipal col-sm-6">

                <figure class="imgPrincipal">
                    <?php getImagemObj(get_field('imagem_principal_conteudo')['sizes'], '2048x2048', 'image') ?>
                </figure>

            </div>

            <!-- Box promoções Conteudo -->
            <div class="boxPromocoes">

                <!-- Loop banner promoção-->
                <?php if( have_rows('banners_promocoes_conteudo') ):?>
        
                    <?php while( have_rows('banners_promocoes_conteudo') ) : the_row(); ?>
        
                        <!-- Banner's e Link's -->
                        <div class="boxBannerPromocao col-sm-6">


                            <?php if (get_sub_field('link')) { ?>
                                 <a href="<?= get_sub_field('link') ?>">
                            <?php } ?>

                                <figure class="bannerConteudo">
                                    <?php getImagemObj(get_sub_field('imagem')['sizes'], '2048x2048', 'bannerPromocao') ?>
                                </figure>

                            <?php if (get_sub_field('link')) { ?>
                                </a>
                            <?php } ?>

                        </div>

                    <?php endwhile; ?>

                <?php endif; ?>
                <!-- /Loop banner -->

            </div>
            <!-- Img Secundaria -->
        </div>
        <!-- /boxConteudo -->
    </div>
    <!-- /container -->

</section>
<!-- Fim Conteúdo -->

<!-- Inicio Banner Baixo -->
<section id="bannerBaixo">

    <!-- Loop banner -->
    <?php if( have_rows('banners_baixo') ):?>
    
        <?php while( have_rows('banners_baixo') ) : the_row(); ?>
    
        <!-- Banner's -->
        <div class="boxBannerBaixo">

            <figure class="bannerBaixoDesktop">
                <?php getImagemObj(get_sub_field('banner_desktop')['sizes'], '2048x2048', 'banner') ?>
            </figure>

            <figure class="bannerBaixoMobile">
                <?php getImagemObj(get_sub_field('banner_mobile')['sizes'], '2048x2048', 'banner') ?>
            </figure>

            <!-- Links / Botão Banner Baixo --> 
            <div class="boxLinks"> 

                <div class="container">
                        
                    <div class="divBtnBaixo">

                        <?php $links = get_sub_field('links'); ?>
                        <?php if( $links ) { ?>
                                
                            <?php foreach( $links as $link ) { ?>
                            
                                <a href="<?= $link['link'] ?>" id="btnBaixo"><?= $link['texto_link'] ?></a>
                                                            
                            <?php } ?>
                    
                        <?php } ?> 
                    
                    </div>

                </div>

            </div>
        </div>

        <?php endwhile; ?>

    <?php endif; ?>
    <!-- /Loop banner -->

</section>
<!-- Fim Banner Baixo -->

<?php get_footer() ?>