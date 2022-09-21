<script>
    $(document).ready(function () {
        $('[name=courier_nid]').keyup(function () {
            courier_nid = $(this).val();

            $.ajax({
                url: '/dashboard/merchandise/getCourierInfo',
                data: {
                    nid: courier_nid
                },
                success: function (response) {
                    response = JSON.parse(response);
                    $('[name=courier_name]').val(response.name);
                    $('[name=courier_email]').val(response.email);
                    $('[name=courier_phone]').val(response.phone);
                    $('[name=courier_date_birth]').val(response.date_birth);
                },
                error: function (error) {
                    response = JSON.parse(error.responseText);
                    $('[name=courier_name]').val(response.name);
                    $('[name=courier_email]').val(response.email);
                    $('[name=courier_phone]').val(response.phone);
                    $('[name=courier_date_birth]').val(response.date_birth);
                }
            });
        });
    });
</script>

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
                            <input type="text" name="courier_nid" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="courier_name"><?php echo display('name') ?></label>
                            <input type="text" name="courier_name" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="courier_email"><?php echo display('email') ?></label>
                            <input type="email" name="courier_email" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="phone"><?php echo display('phone') ?></label>
                            <input type="text" name="courier_phone" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="courier_date_birth"><?php echo display('date_birth') ?></label>
                            <input type="date" name="courier_date_birth" class="form-control">
                        </div>
                    </div>

                    <br>

                    <h4><?php echo display('package_details') ?></h4>

                    <div class="form-group row">
                        <div class="col-sm-6">
                            <label for="package_origin"><?php echo display('origin') ?></label>
                            
                            <select name="package_origin" class="form-control">
                                <option value=""></option>

                                <?php foreach ($locations as $location): ?>
                                    <option value="<?php echo $location->id; ?>"><?php echo $location->name; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <div class="col-sm-6">
                            <label for="package_destination"><?php echo display('destination') ?></label>
                            
                            <select name="package_destination" class="form-control">
                                <option value=""></option>

                                <?php foreach ($locations as $location): ?>
                                    <option value="<?php echo $location->id; ?>"><?php echo $location->name; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <div class="col-sm-12">
                            <label for="package_description"><?php echo display('description') ?></label>
                            <textarea name="package_description" class="form-control"></textarea>
                        </div>

                        <div class="col-sm-4">
                            <label for="package_weight"><?php echo display('weight') ?></label>
                            <input type="text" name="package_weight" class="form-control">
                        </div>

                        <div class="col-sm-4">
                            <label for="price_per_kg"><?php echo display('price_per_kg') ?></label>
                            <input type="text" name="price_per_kg" readonly class="form-control">
                        </div>

                        <div class="col-sm-4">
                            <label for="package_price"><?php echo display('package_price') ?></label>
                            <input type="text" name="package_price" readonly class="form-control">
                        </div>
                    </div>

                    <br>

                    <h4><?php echo display('recipient_details') ?></h4>

                    <div class="form-group row">
                        <div class="col-sm-3">
                            <label for="recipient_name"><?php echo display('name') ?></label>
                            <input type="name" name="recipient_name" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="recipient_email"><?php echo display('email') ?></label>
                            <input type="email" name="recipient_email" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="recipient_phone"><?php echo display('phone') ?></label>
                            <input type="text" name="recipient_phone" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="recipient_date_birth"><?php echo display('date_birth') ?></label>
                            <input type="text" name="recipient_date_birth" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="recipient_nid"><?php echo display('nid') ?></label>
                            <input type="text" name="recipient_nid" class="form-control">
                        </div>
                    </div>

                    <br>

                    <h4><?php echo display('billing_details') ?></h4>

                    <div class="form-group row">
                        <div class="col-sm-3">
                            <label for="billing_type"><?php echo display('type') ?></label>
                            <select name="billing_type" class="form-control">
                                <option value=""></option>
                                <option value="<?php echo display('addresse') ?>"><?php echo display('addresse') ?></option>
                                <option value="<?php echo display('receipt') ?>"><?php echo display('receipt') ?></option>
                            </select>
                        </div>

                        <div class="col-sm-3">
                            <label for="billing_adjustment"><?php echo display('adjustment') ?></label>
                            <input type="text" name="billing_adjustment" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="billing_discount"><?php echo display('discount') ?></label>
                            <input type="text" name="billing_discount" class="form-control">
                        </div>

                        <div class="col-sm-3">
                            <label for="billing_total"><?php echo display('total') ?></label>
                            <input type="text" readonly name="billing_total" class="form-control">
                        </div>
                    </div>

                    <br>

                    <div class="form-group text-right">
                        <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                        <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                    </div>
                <?php echo form_close() ?>

            </div>  
        </div>
    </div>
</div>
