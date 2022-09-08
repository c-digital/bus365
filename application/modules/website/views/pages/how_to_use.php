<div class="clearfix"></div>
 
<section class="testimonial_inner">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="block-title" style="color: red"><?php echo display('how_to_use') ?></h2>
              <h3>  <?php 
                if (!empty($huse)) 
                {
                    echo $huse->description;
                }
                ?> 
            </h3>
            </div>
        </div>
    </div>
</section>
 