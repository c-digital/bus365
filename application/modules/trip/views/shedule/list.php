<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('trip/shedule/add_shedule') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('start') ?></th>
                                <th><?php echo display('end') ?></th>
                                <th><?php echo display('duration') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($shedule)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($shedule as $shedules) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $shedules->start; ?></td>
                                <td><?php echo $shedules->end; ?></td>
                                <td><?php echo $shedules->duration; ?></td>
                                <td>
                                <?php if($this->permission->method('trip','update')->access()): ?>
                                    <a href="<?php echo base_url("trip/shedule/add_shedule/$shedules->shedule_id") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                <?php endif; ?>

                                <?php if($this->permission->method('trip','delete')->access()): ?>
                                    <a href="<?php echo base_url("trip/shedule/delete_shedule/$shedules->shedule_id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
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

 