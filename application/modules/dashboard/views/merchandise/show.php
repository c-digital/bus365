<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('dashboard/merchandise') ?>" class="btn btn-sm btn-success" title="List"><i class="fa fa-list"></i> <?php echo display('list') ?></a>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open('/dashboard/merchandise/store', ['enctype' => 'multipart/form-data']) ?>

                    <h4><?php echo display('courier_details') ?></h4>

                    <div class="form-group row">
                        <div class="col-sm-3">
                            <label for="courier_nid"><?php echo display('nid') ?></label>
                            <input type="text" name="courier_nid" readonly value="<?php echo $merchandise->courier_nid; ?>" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="courier_name"><?php echo display('name') ?></label>
                            <input type="text" name="courier_name" readonly class="form-control" value="<?php echo $merchandise->courier_name; ?>">
                        </div>

                        <div class="col-sm-3">
                            <label for="courier_email"><?php echo display('email') ?></label>
                            <input type="email" name="courier_email" class="form-control" readonly value="<?php echo $merchandise->courier_email; ?>">
                        </div>

                        <div class="col-sm-3">
                            <label for="phone"><?php echo display('phone') ?></label>
                            <input type="text" name="courier_phone" class="form-control" readonly value="<?php echo $merchandise->courier_phone; ?>">
                        </div>

                        <div class="col-sm-3">
                            <label for="courier_date_birth"><?php echo display('date_birth') ?></label>
                            <input type="date" name="courier_date_birth" class="form-control" readonly value="<?php echo $merchandise->courier_date_birth; ?>">
                        </div>
                    </div>

                    <br>

                    <h4><?php echo display('package_details') ?></h4>

                    <div class="form-group row">
                        <div class="col-sm-6">
                            <label for="package_origin"><?php echo display('origin') ?></label>
                            <input type="text" name="package_origin" readonly class="form-control" value="<?php echo $merchandise->package_origin; ?>">
                        </div>

                        <div class="col-sm-6">
                            <label for="package_destination"><?php echo display('destination') ?></label>
                            <input type="text" name="package_destination" readonly class="form-control" value="<?php echo $merchandise->package_destination; ?>">
                        </div>

                        <div class="col-sm-12">
                            <label for="package_description"><?php echo display('description') ?></label>
                            <textarea name="package_description" readonly class="form-control"><?php echo $merchandise->package_description ?></textarea>
                        </div>

                        <div class="col-sm-4">
                            <label for="package_weight"><?php echo display('weight') ?></label>
                            <input type="text" name="package_weight" class="form-control" readonly value="<?php echo $merchandise->package_weight; ?>">
                        </div>

                        <div class="col-sm-4">
                            <label for="price_per_kg"><?php echo display('price_per_kg') ?></label>
                            <input type="text" name="price_per_kg" readonly class="form-control" value="<?php echo $merchandise->price_per_kg; ?>">
                        </div>

                        <div class="col-sm-4">
                            <label for="package_price"><?php echo display('package_price') ?></label>
                            <input type="text" name="package_price" readonly class="form-control" value="<?php echo $merchandise->package_price; ?>">
                        </div>
                    </div>

                    <br>

                    <h4><?php echo display('receipt_details') ?></h4>

                    <div class="form-group row">
                        <div class="col-sm-3">
                            <label for="receipt_name"><?php echo display('name') ?></label>
                            <input type="name" readonly name="receipt_name" class="form-control" value="<?php echo $merchandise->receipt_name ?>">
                        </div>

                        <div class="col-sm-3">
                            <label for="receipt_email"><?php echo display('email') ?></label>
                            <input type="email" readonly name="receipt_email" class="form-control" value="<?php echo $merchandise->receipt_email ?>">
                        </div>

                        <div class="col-sm-3">
                            <label for="receipt_phone"><?php echo display('phone') ?></label>
                            <input type="text" readonly name="receipt_phone" class="form-control" value="<?php echo $merchandise->receipt_phone ?>">
                        </div>

                        <div class="col-sm-3">
                            <label for="receipt_date_birth"><?php echo display('date_birth') ?></label>
                            <input type="date" readonly name="receipt_date_birth" class="form-control" value="<?php echo $merchandise->receipt_date_birth ?>">
                        </div>

                        <div class="col-sm-3">
                            <label for="receipt_nid"><?php echo display('nid') ?></label>
                            <input type="text" readonly name="receipt_nid" class="form-control" value="<?php echo $merchandise->receipt_nid ?>">
                        </div>
                    </div>

                    <br>

                    <h4><?php echo display('billing_details') ?></h4>

                    <div class="form-group row">
                        <div class="col-sm-3">
                            <label for="billing_type"><?php echo display('type') ?></label>
                            <input type="text" name="billing_type" readonly class="form-control" value="<?php echo $merchandise->billing_type ?>">
                        </div>

                        <div class="col-sm-3">
                            <label for="billing_discount"><?php echo display('discount') ?></label>
                            <input type="text" name="billing_discount" readonly class="form-control" value="<?php echo $merchandise->billing_discount ?>">
                        </div>

                        <div class="col-sm-3">
                            <label for="billing_total"><?php echo display('total') ?></label>
                            <input type="text" readonly name="billing_total" readonly class="form-control" value="<?php echo $merchandise->billing_total ?>">
                        </div>
                    </div>
                <?php echo form_close() ?>

            </div>  
        </div>
    </div>
</div>
