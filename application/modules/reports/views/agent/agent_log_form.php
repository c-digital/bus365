

<div class="row">
    <!--  table area -->
    <div class="col-sm-12">

        <div class="panel panel-default thumbnail">

            <div class="panel-body">
                <div class="col-sm-12" style="margin-bottom:20px">
                    <?php echo form_open('reports/agent/agent_details', 'class="form-horizontal" method="post"')?>
                     <div class="form-group" id="driver">
                            <label for="agent_id" class="col-sm-2 control-label"><?php echo display('select_agent_name') ?></label>
                            <div class="col-sm-10">
                                 <?php echo form_dropdown('agent_id', $agent_list,$agent_id, "class='form-control' id='agent_id' style='width:100%'") ?>
                            </div>
                        </div>

                        <!-- Date 2 Date -->
                        <div class="form-group">
                            <label for="agent_id" class="col-sm-2 control-label"><?php echo display('date') ?></label>
                            <div class="col-sm-10">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <input name="start_date" id="start_date" type="text" placeholder="<?php echo display('start_date') ?>" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
                                    </div>
                                    
                                    <div class="col-sm-4">
                                        <input name="end_date" id="end_date" type="text" placeholder="<?php echo display('end_date') ?>" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
                                    </div>

                                    <div class="col-sm-4">
                                        <button type="submit"  class="form-control btn btn-success"><?php echo display('search') ?></button>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    <?php echo form_close() ?>
                </div> 
                <table width="100%" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>
                                <?php echo display('serial') ?>
                            </th>
                            <th>
                                <?php echo display('name') ?>
                            </th>
                            <th>
                                <?php echo display('total_ticket') ?>
                            </th>
                            <th>
                                <?php echo display('total_amount') ?>
                            </th>
                            <th>
                                <?php echo display('total_commission') ?>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($agen)) { ?>
                            <?php $sl = 1; ?>
                                <?php foreach ($agen as $query) { ?>
                                    <tr>
                                        <td>
                                            <?php echo $sl; ?>
                                        </td>
                                        <td>
                                         <a href="<?php echo base_url("agent/agent_controller/agent_ledger/$query->agent_id") ?>"><?php echo $query->agent_first_name.' '.$query->agent_second_name; ?></a>    
                                        </td>
                                        <td>
                                            <?php echo $query->booking_id; ?>
                                        </td>
                                        <td>
                                            <?php echo $query->total_amount; ?>
                                        </td>
                                        <td>
                                            <?php echo $query->total_commission; ?>
                                        </td>
                                    </tr>
                                    <?php $sl++; ?>
                                        <?php } ?>
                                            <?php } ?>
                    </tbody>
                </table>
                <?= $links ?>
                <!-- /.table-responsive -->
            </div>
        </div>
    </div>
</div>