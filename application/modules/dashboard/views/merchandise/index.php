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
                                <th><?php echo display('status') ?></th>
                                <th></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($merchandise)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($merchandise as $item) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                 <td><?php echo $item->courier; ?></td>
                                  <td><?php echo $item->destination; ?></td>
                                  <td><?php echo $item->origin; ?></td>
                                  <td><?php echo $item->receipt; ?></td>
                                  <td><?php echo $item->receipt_phone; ?></td>
                                  <td><?php echo $item->billing_type; ?></td>
                                  <td><?php echo $item->total; ?></td>
                                  <td><?php echo $item->status; ?></td>
                                  <td nowrap>
                                    <a href="<?php echo base_url("dashboard/merchandise/show/$item->id") ?>" class="btn btn-default btn-sm" data-toggle="tooltip" data-placement="left" title="<?php echo display('view') ?>"><i class="fa fa-eye" aria-hidden="true"></i></a>

                                    <a href="<?php echo base_url("dashboard/merchandise/ticket/$item->id") ?>" class="btn btn-primary btn-sm" data-toggle="tooltip" data-placement="left" title="<?php echo display('view') ?>"><i class="fa fa-print" aria-hidden="true"></i></a>

                                    <?php if (!$item->trip_id): ?>
                                        <a href="" data-toggle="modal" data-target="#assign" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="<?php echo display('assign_to_trip') ?>"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                                    <?php endif; ?>

                                    <?php if ($item->status != 'delivered' && $item->trip_id): ?>
                                        <a href="<?php echo base_url("dashboard/merchandise/delivered/$item->id") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="<?php echo display('mark_as_delivered') ?>"><i class="fa fa-check" aria-hidden="true"></i></a>
                                    <?php endif; ?>

                                    <a href="<?php echo base_url("dashboard/merchandise/delete/$item->id") ?>" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="left" title="<?php echo display('delete') ?>"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                  </td>
                            </tr>

                            <?php include 'assign.php' ?>
                            <?php } ?> 
                        </tbody>
                    </table>
                </div>
            </div> 
        </div>
    </div>
</div>

