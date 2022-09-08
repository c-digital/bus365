<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('trip/trip/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('trip_title') ?></th>
                                <th><?php echo display('route_name') ?></th>
                                <th><?php echo display('shedules') ?></th>
                                <th><?php echo display('type') ?></th>
                                <th><?php echo display('stoppage_points') ?></th>
                                <th><?php echo display('distance') ?></th>
                                <th><?php echo display('approximate_time') ?></th>
                                <th><?php echo display('status') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($trps)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($trps as $trips) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $trips->trip_title; ?></td>
                                <td><?php echo $trips->name; ?></td>
                                <td><?php echo $trips->start.'-'.$trips->end; ?></td>
                                <td><?php echo $trips->type; ?></td>
                                <td><?php echo $trips->stoppage_points; ?></td>
                                <td><?php echo $trips->distance; ?></td>
                                <td><?php echo $trips->approximate_time; ?></td>
                                <td><?php echo (($trips->status==1)?display('active'):display('inactive')); ?></td>
                                <td>

                                <?php if($this->permission->method('trip','update')->access()): ?>
                                    <a href="<?php echo base_url("trip/trip/form/$trips->trip_id") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                <?php endif; ?>

                                <?php if($this->permission->method('trip','delete')->access()): ?>
                                    <a href="<?php echo base_url("trip/trip/delete/$trips->trip_id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                <?php endif; ?>
                                </td>
                            </tr>
                            <?php } ?> 
                        </tbody>
                    </table>
                </div>
            </div> 
        </div>
    </div>
</div>

 