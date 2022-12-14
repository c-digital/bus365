<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('dashboard/companies/create') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('logo') ?></th>
                                <th><?php echo display('nit') ?></th>
                                <th><?php echo display('name') ?></th>
                                <th><?php echo display('address') ?></th>
                                <th><?php echo display('lane') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($companies)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($companies as $company) { ?>
                            <tr>
                                <td><?php echo $sl++; ?></td>
                                <td><img width="100px" src="<?php echo '/uploads/' . $company->logo; ?>" alt=""></td>
                                 <td><?php echo $company->nit; ?></td>
                                  <td><?php echo $company->name; ?></td>
                                  <td><?php echo $company->address; ?></td>
                                  <td><?php echo $company->lane; ?></td>
                                
                                <td>

                                <?php if($this->permission->method('companies','update')->access()): ?>
                                    <a href="<?php echo base_url("dashboard/companies/edit/$company->id") ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="Update"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                <?php endif; ?>

                                <?php if($this->permission->method('companies','delete')->access()): ?>
                                    <a href="<?php echo base_url("dashboard/companies/delete/$company->id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
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

 