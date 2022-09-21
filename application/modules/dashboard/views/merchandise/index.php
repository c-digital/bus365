<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('dashboard/merchandise/create') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('courier') ?></th>
                                <th><?php echo display('destination') ?></th>
                                <th><?php echo display('origin') ?></th>
                                <th><?php echo display('receipt') ?></th>
                                <th><?php echo display('receipt_phone') ?></th>
                                <th><?php echo display('billing_type') ?></th> 
                                <th><?php echo display('total') ?></th> 
                                <th></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($merchandise)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($merchandise as $company) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                 <td><?php echo $company->courier; ?></td>
                                  <td><?php echo $company->destination; ?></td>
                                  <td><?php echo $company->origin; ?></td>
                                  <td><?php echo $company->receipt; ?></td>
                                  <td><?php echo $company->receipt_phone; ?></td>
                                  <td><?php echo $company->billing_type; ?></td>
                                  <td><?php echo $company->total; ?></td>
                            </tr>
                            <?php } ?> 
                        </tbody>
                    </table>
                </div>
            </div> 
        </div>
    </div>
</div>

 