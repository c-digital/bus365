<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('trip/assign/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($assign->id): ?>
                        <a href="<?php echo base_url('trip/assign/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open('trip/assign/form/') ?>

                    <?php echo form_hidden('id', $assign->id); ?>
                    <?php echo form_hidden('id_no', $assign->id_no); ?>

                  

         <div class="form-group row">
                        <label for="trip" class="col-sm-3 col-form-label"><?php echo display('trips') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('trip', $trip, (!empty($assign->trip)?$assign->trip:null), ' class="form-control"') ?> 
                        </div>
                    </div> 

                      <div class="form-group row">
                        <label for="fleet_registration_id" class="col-sm-3 col-form-label"><?php echo display('fleet_registration_no') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('fleet_registration_id', $fleet_dropdown, (!empty($assign->fleet_registration_id)?$assign->fleet_registration_id:null), ' class="form-control"') ?> 
                        </div>
                    </div> 
                     <div class="form-group row">
                        <label for="date" class="col-sm-3 col-form-label"><?php echo display('date') ?> *</label>
                        <div class="col-sm-9">
                           <input type="text" name="assign_date" class="form-control datetimepicker" value="" placeholder="<?php echo display('date')?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="company_id" class="col-sm-3 col-form-label"><?php echo display('company') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('company_id', $companies_dropdown, (!empty($assign->company_id)?$assign->company_id:null), ' class="form-control"') ?> 
                        </div>
                    </div>
                  
                    <div class="form-group row">
                        <label for="driver1_id" class="col-sm-3 col-form-label"><?php echo display('driver_name_1') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('driver1_id', $driver_dropdown, (!empty($assign->driver1_id)?$assign->driver1_id:null), ' class="form-control"') ?> 
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="driver2_id" class="col-sm-3 col-form-label"><?php echo display('driver_name_2') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('driver2_id', $driver_dropdown, (!empty($assign->driver2_id)?$assign->driver2_id:null), ' class="form-control"') ?> 
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="assistants_ids" class="col-sm-3 col-form-label"><?php echo display('assistants_ids') ?> </label>
                        <div class="col-sm-9">
                            <div class="row" style="margin-bottom:10px"> 
                                <div class="col-xs-4">
                                    <?php echo form_dropdown('assistant_1', $assistant_dropdown, $assign->assistant_1, ' class="form-control" ') ?> 
                                </div>
                                <div class="col-xs-4">
                                    <?php echo form_dropdown('assistant_2', $assistant_dropdown, $assign->assistant_2, ' class="form-control" ') ?> 
                                </div>
                                <div class="col-xs-4">
                                    <?php echo form_dropdown('assistant_3', $assistant_dropdown, $assign->assistant_3, ' class="form-control" ') ?>  
                                </div>
                            </div>
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="status" class="col-sm-3 col-form-label">Status *</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <?php echo form_radio('status', '1', (($assign->status==1)?1:0), 'id="status"'); ?>Active
                            </label>
                            <label class="radio-inline">
                                <?php echo form_radio('status', '0', (($assign->status=="0")?1:0) , 'id="status"'); ?>Inactive
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
 