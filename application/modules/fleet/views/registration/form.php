<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('fleet/fleet_registration/index') ?>" class="btn btn-sm btn-success" title="List"><i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($fleet_registration->id): ?>
                        <a href="<?php echo base_url('fleet/fleet_registration/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open('fleet/fleet_registration/form/') ?>
                    <?php echo form_hidden('id', $fleet_registration->id); ?>

                    <div class="form-group row">
                        <label for="reg_no" class="col-sm-3 col-form-label"><?php echo display('reg_no') ?> *</label>
                        <div class="col-sm-9">
                            <input name="reg_no" class="form-control" type="text" placeholder="<?php echo display('reg_no') ?>" id="reg_no" value="<?php echo $fleet_registration->reg_no ?>">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="fleet_type_id" class="col-sm-3 col-form-label"><?php echo display('fleet_type') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('fleet_type_id', $fleet_type_list, (!empty($fleet_registration->fleet_type_id)?$fleet_registration->fleet_type_id:null), ' class="form-control"') ?> 
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="engine_no" class="col-sm-3 col-form-label"><?php echo display('engine_no') ?></label>
                        <div class="col-sm-9">
                            <input name="engine_no" class="form-control" type="text" placeholder="<?php echo display('engine_no') ?>" id="engine_no" value="<?php echo $fleet_registration->engine_no ?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="model_no" class="col-sm-3 col-form-label"><?php echo display('model_no') ?>*</label>
                        <div class="col-sm-9">
                            <input name="model_no" class="form-control" type="text" placeholder="<?php echo display('model_no') ?>" id="model_no" value="<?php echo $fleet_registration->model_no ?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="chasis_no" class="col-sm-3 col-form-label"><?php echo display('chasis_no') ?>*</label>
                        <div class="col-sm-9">
                            <input name="chasis_no" class="form-control" type="text" placeholder="<?php echo display('chasis_no') ?>" id="chasis_no" value="<?php echo $fleet_registration->chasis_no ?>">
                        </div>
                    </div> 
            

                    <div class="form-group row">
                        <label for="owner" class="col-sm-3 col-form-label"><?php echo display('owner') ?></label>
                        <div class="col-sm-9">
                            <input name="owner" class="form-control" type="text" placeholder="<?php echo display('owner') ?>" id="owner" value="<?php echo $fleet_registration->owner ?>">
                        </div>
                    </div> 
                     <div class="form-group row">
                        <label for="owner_phone" class="col-sm-3 col-form-label"><?php echo display('owner_phone') ?></label>
                        <div class="col-sm-9">
                            <input name="owner_phone" class="form-control" type="text" placeholder="<?php echo display('owner_phone') ?>" id="owner_phone" value="<?php echo $fleet_registration->owner_phone ?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="company" class="col-sm-3 col-form-label"><?php echo display('brand_name') ?></label>
                        <div class="col-sm-9">
                            <input name="company" class="form-control" type="text" placeholder="<?php echo display('brand_name') ?>" id="company" value="<?php echo $fleet_registration->company ?>">
                        </div>
                    </div> 
 
                    <div class="form-group row">
                        <label for="status" class="col-sm-3 col-form-label"><?php echo display('status') ?> *</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <?php echo form_radio('status', '1', (($fleet_registration->status==1)?1:0), 'id="status"'); ?><?php echo display('active') ?>
                            </label>
                            <label class="radio-inline">
                                <?php echo form_radio('status', '0', (($fleet_registration->status=="0")?1:0) , 'id="status"'); ?><?php echo display('inactive') ?>
                            </label> 
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

