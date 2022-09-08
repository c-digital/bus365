<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('ticket/booking/terms_and_condition_form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered ">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('how_to_pay') ?></th>
                                <th><?php echo display('terms_and_condition') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                          
                            <?php $sl = 1; ?>
                            <?php foreach ($terms as $term) { 

                       
                                ?>

                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $term->how_to_pay; ?></td>
                                <td><?php echo $term->terms_and_condition; ?></td>
                               
                                <td>
                               

                                <?php if($this->permission->method('ticket','update')->access()): ?>
                                    <a href="<?php echo base_url("ticket/terms/terms_and_condition_form/$term->id") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                           
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


