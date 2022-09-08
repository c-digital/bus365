<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                       <?php echo display('agent_report') ?>  <a href="#" class="btn btn-sm btn-danger" title="Print" onclick="printContent('PrintMe')"><i class="fa fa-print"></i></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
                 <div class="col-sm-12" style="margin-bottom:20px">
                    <?php echo form_open('reports/agent/agent_details', 'class="form-horizontal" method="post"')?>
                     <div class="form-group" id="agnt">
                            <label for="agent_id" class="col-sm-2 control-label"><?php echo display('select_agent_name') ?></label>
                            <div class="col-sm-10">
                                 <?php echo form_dropdown('agent_id', $agent_list,$agen_id, "class='form-control' id='agent_id' style='width:100%'") ?>
                            </div>
                        </div>

                        <!-- Date 2 Date -->
                        <div class="form-group">
                            <label for="agent_id" class="col-sm-2 control-label"><?php echo display('date') ?></label>
                            <div class="col-sm-10">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <input name="start_date" id="start_date" type="text" placeholder="<?php echo display('start_date') ?>" class="form-control datepicker" value="<?php echo $start_date ?>">
                                    </div>
                                    
                                    <div class="col-sm-4">
                                        <input name="end_date" id="end_date" type="text" placeholder="<?php echo display('end_date') ?>" class="form-control datepicker" value="<?php echo $end_date ?>">
                                    </div>

                                    <div class="col-sm-4">
                                        <button type="submit"  class="form-control btn btn-success"><?php echo display('search') ?></button>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    <?php echo form_close() ?>
                </div> 
            </div>
        </div>
    </div>
    </div>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd">
            
            <div class="panel-body" id="PrintMe">

                <div class="text-center">
                   <h2> <?php echo $detls->agent_first_name.' '.$detls->agent_second_name; ?></h2>
                   <h4><?php echo $detls->agent_company_name; ?></h4>
                   <h4><?php echo 'phone :'.''.$detls->agent_phone; ?></h4>
                </div>
                <table width="100%" class="DataTable table table-striped table-bordered table-hover">
                    <thead>
            <tr>
                <th class="text-center"><?php echo display('serial') ?></th>
                <th class="text-center"><?php echo display('date') ?></th>
                <th class="text-center"><?php echo display('booking_id') ?></th>
                <th class="text-center"><?php echo display('total_price') ?></th>
                <th class="text-center"><?php echo display('commission_amount') ?></th>
                <th class="text-center"><?php echo display('commission_rate') ?> (%)</th>
            </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($agen)) { ?>
                            <?php $sl = 1;
                       
                             ?>
                            <?php
                            $total_commission = 0;
                            $total_price = 0;
                            $total_ticket = 0;
                             foreach ($agen as $query) {
                                $total_price += $query->total_price;
                                $total_commission += $query->total_price*$query->commission_rate/100;
                                $ticket = count($query->booking_id);
                                $total_ticket += $ticket;
                              ?>
        <tr>
        <td><?php echo $sl; ?></td>
        <td><?php echo $query->date; ?></td>
        <td><a href="<?php echo base_url("ticket/booking/view/$query->booking_id") ?>"><?php
$seat = $this->db->select('total_seat')->from('tkt_booking')->where('id_no',$query->booking_id)->get()->row();
                                  echo $query->booking_id.'('.$seat->total_seat.')'; ?></a></td> 
        <td class="text-right"><?php echo $currency; ?> <?php echo $query->total_price; ?></td>
        <td class="text-right"> <?php echo $currency; ?> <?php echo $query->total_price*$query->commission_rate/100; ?></td> 
        <td class="text-right"><?php echo $query->commission_rate; ?></td> 
                                </tr>
                                <?php $sl++; ?>
                            <?php } ?> 
                        <?php } ?> 
                    </tbody>
                    <tfooter>
                        <tr><td colspan="2" class="text-right"><b>Total </b></td><td><?php echo $total_ticket;?></td><td class="text-right"><b><?php echo $currency; ?> <?php echo $total_price;?></b></td><td class="text-right"><b><?php echo $currency; ?> <?php echo $total_commission;?></b></td><td></td></tr>
                    </tfooter>
                </table>  <!-- /.table-responsive -->
            </div> 
        </div>
    </div>
</div>
