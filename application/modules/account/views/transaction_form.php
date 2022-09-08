<div class="form-group text-right">
    <?php if($this->permission->method('account','create')->access()): ?>
    <button type="button" class="btn btn-primary btn-md" data-target="#add1" data-toggle="modal"><?php echo display('add_income') ?></button>
    <button type="button" class="btn btn-primary btn-md" data-target="#add0" data-toggle="modal"><?php echo display('add_expense') ?></button> 
    <?php endif; ?>
</div>

<div class="row">
    <!--  table area -->
    <div class="col-sm-12">

        <div class="panel panel-default thumbnail">

            <div class="panel-body">
                <table width="100%" class="example datatable table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><?php echo display('sl') ?></th>
                            <th><?php echo display('account_name') ?></th>
                            <th><?php echo display('account_type') ?></th>
                            <th><?php echo display('transaction_description') ?></th>
                            <th><?php echo display('amount') ?></th>
                            <th><?php echo display('create_by_id') ?></th>
                            <th><?php echo display('action') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($acctrans)) { ?>
                            <?php $sl = 1; ?>
                                <?php foreach ($acctrans as $row) { ?>
                                    <tr>
                                        <td>
                                            <?php echo $sl; ?>
                                        </td>
                                        <td>
                                            <?php echo $row->account_name; ?>
                                        </td>
                                       <td>
                                            <?php echo (($row->account_type==0)?"Expense":"Income"); ?>
                                        </td>
                                        <td>
                                            <?php echo rtrim(character_limiter($row->transaction_description, 50),','); ?>
                                        </td>
                                        <td><?php echo $currency; ?>
                                            <?php echo $row->amount; ?>
                                        </td>
                                       
                                        <td>
                                            <?php echo $row->created_by; ?>
                                        </td>  
                                        <td class="center">

                                            <?php if($this->permission->method('account','read')->access()): ?>
                                            <a href="<?php echo base_url("account/account_controller/view_details/$row->account_tran_id") ?>" class="btn btn-xs btn-default"><i class="fa fa-eye"></i></a>  
                                            <?php endif; ?>

                                            <?php if($this->permission->method('account','update')->access()): ?>
                                            <a href="<?php echo base_url("account/account_controller/transaction_update/$row->account_tran_id/$row->account_type") ?>" class="btn btn-xs btn-success"><i class="fa fa-pencil"></i></a>
                                            <?php endif; ?>


                                            <?php if($this->permission->method('account','delete')->access()): ?>
                                            <a href="<?php echo base_url("account/account_controller/transaction_delete/$row->account_tran_id") ?>" class="btn btn-xs btn-danger" onclick="return confirm('<?php echo display('are_you_sure') ?>') "><i class="fa fa-times" aria-hidden="true"></i>
                                            </a>
                                            <?php endif; ?>
                                        </td>
                                    </tr>
                                    <?php $sl++; ?>
                                <?php } ?>
                            <?php } ?>
                    </tbody>
                </table>
                <!-- /.table-responsive -->
            </div>
        </div>
    </div>
</div>

<div id="add0" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green; color: white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <center><strong>Add Expense</strong></center>
            </div>
            <div class="modal-body">

                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="panel">

                            <div class="panel-body">

                                <?= form_open('account/account_controller/create_transaction') ?>
                                    <div class="form-group row">
                                        <div for="account_id" class="col-sm-4 col-form-div">
                                            <?php echo display('account_id') ?> *</div>
                                        <div class="col-sm-8">
                                            <?php echo form_dropdown('account_id',$accountlist,null,'class=" form-control agent_list"style="width:100%"') ?>

                                        </div>

                                    </div>
                                    <div class="form-group row hide" id="agent_list2">
                                        <div for="agent" class="col-sm-4 col-form-div">
                                            <?php echo 'select Agent'; ?> </div>
                                        <div class="col-sm-8">
                                             <?php echo form_dropdown('agent_id',$agent_list,null,'class=" form-control"style="width:100%"') ?>

                                        </div>

                                    </div>
                                    <div class="form-group row">
                                        <div for="amount" class="col-sm-4 col-form-div">
                                            <?php echo display('amount') ?> *</div>
                                        <div class="col-sm-8">
                                            <input name="amount" class="form-control" type="text" placeholder="<?php echo display('amount') ?>" id="amount">

                                        </div>

                                    </div>
                                    <div class="form-group row">
                                        <div for="transaction_description" class="col-sm-4 col-form-div">
                                            <?php echo display('transaction_description') ?>
                                        </div>
                                        <div class="col-sm-8">
                                            <textarea name="transaction_description" class="form-control" placeholder="<?php echo display('transaction_description') ?>" id="transaction_description"></textarea>

                                        </div>

                                    </div>


                                    <div class="form-group text-right">
                                        <button type="reset" class="btn btn-primary w-md m-b-5">
                                            <?php echo display('reset') ?>
                                        </button>
                                        <button type="submit" class="btn btn-success w-md m-b-5">
                                            <?php echo display('add') ?>
                                        </button>
                                    </div>
                                    <?php echo form_close() ?>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <div class="modal-footer">

        </div>

    </div>

</div>
<div id="add1" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green; color: white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <center><strong>Add Income</strong></center>
            </div>
            <div class="modal-body">

                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="panel">

                            <div class="panel-body">

                                <?= form_open('account/account_controller/create_transaction') ?>
                                    <div class="form-group row">
                                        <div for="account_id" class="col-sm-4 col-form-div">
                                            <?php echo display('account_id') ?> *</div>
                                        <div class="col-sm-8">
                                            <!--   <input name="account_id" class="form-control" type="text" placeholder="<?php echo display('account_id') ?>" id="account_id">  -->
                                            <?php echo form_dropdown('account_id',$acc,null,'id="agent" class="agent_list form-control"style="width:100%"') ?>

                                        </div>

                                    </div>
                                    <div class="form-group row hide" id="agent_list1">
                                        <div for="agent" class="col-sm-4 col-form-div">
                                            <?php echo 'select Agent'; ?> </div>
                                        <div class="col-sm-8">
                                             <?php echo form_dropdown('agent_id',$agent_list,null,'class=" form-control"style="width:100%"') ?>

                                        </div>

                                    </div>
                                    <div class="form-group row">
                                        <div for="amount" class="col-sm-4 col-form-div">
                                            <?php echo display('amount') ?> *</div>
                                        <div class="col-sm-8">
                                            <input name="amount" class="form-control" type="text" placeholder="<?php echo display('amount') ?>" id="amount">

                                        </div>

                                    </div>
                                    <div class="form-group row">
                                        <div for="transaction_description" class="col-sm-4 col-form-div">
                                            <?php echo display('transaction_description') ?>
                                        </div>
                                        <div class="col-sm-8">
                                            <textarea name="transaction_description" class="form-control" placeholder="<?php echo display('transaction_description') ?>" id="transaction_description"></textarea>

                                        </div>

                                    </div>


                                    <div class="form-group text-right">
                                        <button type="reset" class="btn btn-primary w-md m-b-5">
                                            <?php echo display('reset') ?>
                                        </button>
                                        <button type="submit" class="btn btn-success w-md m-b-5">
                                            <?php echo display('add') ?>
                                        </button>
                                    </div>
                                    <?php echo form_close() ?>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <div class="modal-footer">

        </div>

    </div>

</div>
<div id="details_nc" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <strong>Account Details</strong>
            </div>
            <div class="modal-body">
                <div id="details_up"></div>
            </div>
        </div>
        <div class="modal-footer">
        </div>
    </div>
</div>
</div>
<script type="text/javascript">
     $(document).ready(function() {
    var agent_list1  = $("#agent_list1");
    var agent_list2  = $("#agent_list2");
// Agent Income/Expense 
        $('.agent_list').on('change', function(){
        var filter = (this.value);
        agent_list1.addClass('hide');
        if (filter > 0) {
            if (filter == 8) {
                agent_list1.removeClass('hide');
            }else{
                 agent_list1.addClass('hide');
            }
            if (filter == 9) {
                agent_list2.removeClass('hide');
            }else{
                 agent_list2.addClass('hide');
            } 
        }   
    });
          });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.example').delegate('button', 'click', function(event) {
            var id = event.target.id;
            $.ajax({
                var base_url = <?php echo base_url() ;?>
                url: base_url + 'account/account_controller/account_datails',
                    method: 'post',
                    data: {
                        id: id
                    },
                    success: function(data) {
                        $('#view_detail').html(data);
                    }

            })

        })
  

    });
</script>