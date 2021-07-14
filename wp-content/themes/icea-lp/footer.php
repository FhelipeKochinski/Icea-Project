<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/footer.css">


<!-- Inicio rodapé -->
<footer id="rodape">

    <div class="container">

        <!-- Atendimento -->
        <div class="boxFooter atendimento">
        
            <span class="tituloFooter">Atendimento</span>

            <ul>

                <li>

                    <!-- Telefone -->
                    <?php if (get_field('telefone', 'options')) { ?>
                     
                        <a href="tel: <?= linkTelefone(get_field('telefone', 'options'))?>" id="telefoneFooter">
                            <i class="fa fa-phone"></i>
                            <span><?= get_field('telefone', 'options') ?></span>
                        </a>
                     
                    <?php } ?>

                </li>

                <li>

                    <!-- WhatsApp -->
                    <?php if (get_field('whatsapp', 'options')) { ?>
                    
                        <a href="tel: <?= linkTelefone(get_field('whatsapp', 'options')) ?>" id="whatsappFooter">
                            <i class="fa fa-whatsapp"></i>
                            <span><?= get_field('whatsapp', 'options') ?></span>
                        </a>
                
                    <?php } ?>

                </li>

                <li>

                    <!-- SAC -->
                    <?php if (get_field('sac', 'options')) { ?>

                        <a href="tel: <?= linkTelefone(get_field('sac', 'options')) ?>" id="sacFooter">
                            <i class="fa fa-headphones"></i>
                            <span><?= get_field('sac', 'options') ?></span>
                        </a>

                    <?php } ?>

                </li>
                
                <li>

                    <!-- E-mail -->
                        <?php if (get_field('e-mail', 'options')) { ?>
                          
                            <a href="mailto: <?= get_field('e-mail', 'options') ?>" id="emailFooter">
                                <i class="fa fa-envelope-o"></i>
                                <span><?= get_field('e-mail', 'options') ?></span>
                            </a>
                  
                        <?php } ?>

                </li>   

                <li>

                    <!-- Horário Atendimento -->
                    <?php if (get_field('horario_de_atendimento', 'options')) { ?>
                            
                            <span href="<?= get_field('horario_de_atendimento', 'options') ?>" id="horario_de_atendimentoFooter">
                                <?= get_field('horario_de_atendimento', 'options') ?>
                            </span>
                    
                        <?php } ?>

                </li>

            </ul>

        </div>
        <!-- /Atendimento -->

        <!-- Institucionais -->
        <div class="boxFooter institucionais">

            <span class="tituloFooter">Institucional</span>

            <?php wp_nav_menu(array('theme_location' => 'footer_institucional', 'container' => '')); ?>

        </div>
        <!-- /Institucionais -->

        <!-- Ajuda -->
        <div class="boxFooter">

            <span class="tituloFooter">Ajuda</span>

            <?php wp_nav_menu(array('theme_location' => 'footer_ajuda', 'container' => '')); ?>

        </div>
        <!-- /Ajuda -->

        <!-- Pagamento -->
        <div class="boxFooter">

            <span class="tituloFooter">Pagamento</span>
                
                <figure class="imgPagamento">
                    <?php getImagemObj(get_field('imagem_pagamento', 'options')['sizes'], '2048x2048', 'image') ?>
                </figure>               

        </div>
        <!-- /Pagamento -->

        <!-- Segurança -->
        <div class="boxFooter">

            <span class="tituloFooter">Segurança</span>

            <!-- Loop banner -->
            <?php if( have_rows('imagens_segurança','options') ):?>
            
                <?php while( have_rows('imagens_segurança','options') ) : the_row(); ?>

                    <!-- Banner's -->
                    <div class="boxSeguranca">

                        <figure class="imgSeguranca">
                            <?php getImagemObj(get_sub_field('imagem')['sizes'], '2048x2048', 'image') ?>
                        </figure>

                    </div>

                    <?php endwhile; ?>

            <?php endif; ?>
            <!-- /Loop banner -->

        </div>
        <!-- /Segurança -->

    </div> 

    <!-- Texto Footer -->
    <div class="container" id="copyrightFooter">

        <div class="com-sm-2">
            <span>ICEA ESTOFADOS E COLCHÕES - AV DAS ARAUCARIAS, 4545, THOMAZ COELHO | 83707-065-ARAUCÁRIA-PR | CNPJ: 15.662.128/0001-98</span>
        </div>


    </div>
    <!-- /Texto Footer -->

    <!-- MMD Logo -->
    <div class="container" id="logoMmd">
        <div class="mddFooter">
    
            <figure>
                <img src="../icea-lp/wp-content/uploads/2021/07/logo-MMD-04-tons-de-cinza-1.png" alt="MMD">
            </figure>

        </div>
    </div>
    <!-- /MMD Logo -->

</footer>
<!-- Fim rodapé -->

<script src="<?php echo get_template_directory_uri()?>/assets/scripts.js"></script>

<?php wp_footer(); ?>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@700&family=Work+Sans&display=swap" rel="stylesheet">

</body>
</html>
