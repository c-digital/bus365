<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('dashboard/merchandise') ?>" class="btn btn-sm btn-success" title="List">
                            <i class="fa fa-list"></i> <?php echo display('list') ?>
                        </a> 
                    </h4>
                </div>
            </div>

            <div class="panel-body">
                <?php echo form_open("dashboard/merchandise/pricePerKg") ?>                    
                    <div class="form-group row">
                        <label for="price_per_kg" class="col-sm-3 col-form-label"><?php echo display('price_per_kg') ?> *</label>
                        <div class="col-sm-3">
                            <input name="price_per_kg" class="form-control" type="number" placeholder="<?php echo display('price_per_kg') ?>" value="<?php echo $pricePerKg; ?>" id="price_per_kg">
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

 