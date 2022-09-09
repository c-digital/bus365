<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('dashboard/companies') ?>" class="btn btn-sm btn-success" title="List"><i class="fa fa-list"></i> <?php echo display('list') ?></a>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open('/dashboard/companies/store', ['enctype' => 'multipart/form-data']) ?>

                    <div class="form-group row">
                        <label for="type" class="col-sm-3 col-form-label"><?php echo display('logo') ?> *</label>
                        <div class="col-sm-4">
                            <input name="logo" type="file" placeholder="<?php echo display('logo') ?>" id="logo">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="type" class="col-sm-3 col-form-label"><?php echo display('nit') ?> *</label>
                        <div class="col-sm-4">
                            <input required name="nit" class="form-control" type="text" placeholder="<?php echo display('nit') ?>" id="nit">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="type" class="col-sm-3 col-form-label"><?php echo display('name') ?> *</label>
                        <div class="col-sm-4">
                            <input required name="name" class="form-control" type="text" placeholder="<?php echo display('name') ?>" id="name">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="type" class="col-sm-3 col-form-label"><?php echo display('address') ?></label>
                        <div class="col-sm-4">
                            <input name="address" class="form-control" type="text" placeholder="<?php echo display('address') ?>" id="address">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="type" class="col-sm-3 col-form-label"><?php echo display('lane') ?></label>
                        <div class="col-sm-4">
                            <input name="lane" class="form-control" type="text" placeholder="<?php echo display('lane') ?>" id="lane">
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
