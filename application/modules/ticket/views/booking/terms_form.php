<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                      
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open_multipart('ticket/terms/terms_and_condition_form') ?>
                    <?php echo form_hidden('id', $terms->id) ?>
                    <div class="form-group row">
                        <label for="how_to_pay" class="col-sm-3 col-form-label"><?php echo display('how_to_pay') ?> *</label>
                        <div class="col-sm-9">   
                        <textarea name="how_to_pay" class="form-control" placeholder="<?php echo display('how_to_pay') ?>"><?php echo $terms->how_to_pay; ?></textarea>
                                   
                        </div>
                    </div> 
                     <div class="form-group row">
                        <label for="terms_and_condition" class="col-sm-3 col-form-label"><?php echo display('terms_and_condition') ?>*</label>
                        <div class="col-sm-9">
                           <textarea name="terms_and_condition" class="form-control" placeholder="<?php echo display('terms_and_condition') ?>"><?php echo $terms->terms_and_condition; ?></textarea>
                        </div>
                    </div> 
         
                    <div class="form-group text-right">
                        <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                        <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                    </div>
                <?php echo form_close() ?>

            </div>  
        </div>
    </div>
</div>
