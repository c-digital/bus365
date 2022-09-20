<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-bd">

            <div class="panel-heading no-print row">
                <div class="btn-group col-xs-4">


                    <button onclick="printContent('printMe')" type="button" class="btn btn-danger"><i class="fa fa-print"></i> <?php echo display("print") ?></button>

                    <a class="btn btn-primary" href="<?php echo base_url("dashboard/cash") ?>"> <i class="fa fa-list"></i>  <?php echo display('back_to_cash') ?> </a> 

                </div>
                <h2 class="col-xs-8 text-left text-success"><?php echo display('Close cash') ?></h2>
            </div>  


           <?php
            if($this->permission->method('bill_list','read')->access()){
            ?>
            <div class="panel-body" id="printMe">
                <div class="row">
                    <div class="col-xs-6 logo_bar">
                        <img src="<?php echo base_url("$setting->logo") ?>" class="img-responsive" alt=""></br>
                        <?php echo display('phone') ?>: <?php echo $setting->phone; ?></br>
                        <?php echo display('email') ?>: <?php echo $setting->email; ?>
                        <br>
                    </div>
                    <div class="col-xs-6 address_bar">
                        <div class="address_inner">
                            <address>
                                <strong><?php echo display('address') ?></strong><br>
                                <strong><?php echo $setting->title; ?></strong><br>
                                <?php echo $setting->address; ?>
                            </address>
                        </div>
                    </div>
                </div> <hr>
                <!-- Patient Info -->
                <div class="row patient_info">
                    <table class="info table">
                        <tbody>
                            <tr>
                                <td><?php echo 'Fecha'; ?>:</td>
                                <td><?php echo date('d/m/Y h:i A'); ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Patient Charge -->
                <div class="patient_charge">
                    <table class="charge table">
                        <thead>
                            <tr>
                                <th colspan="6"><?php echo display('moves') ?></th>
                            </tr>

                            <tr>
                                <th><?php echo '#'; ?></th>
                                <th><?php echo display('type_move'); ?></th>
                                <th><?php echo display('date'); ?></th>
                                <th><?php echo display('amount'); ?></th>
                                <th><?php echo display('payment_method'); ?></th> 
                                <th><?php echo display('concept'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                        	<?php $i = 1; foreach ($moves as $move): ?>
	                        <tr>
	                            <td class="description">
	                                <p><?php echo $i; ?></p> 
	                            </td>
	                            <td class="description">
	                                <p><?php echo $move->type_move ; ?></p> 
	                            </td>
	                            <td class="charge">
	                                <p><?php echo $move->date; ?></p> 
	                            </td>
	                            <td class="discount">
	                                <p><?php echo $move->amount; ?></p> 
	                            </td>
	                            <td class="ballance">
	                                <p><?php echo $move->payment_method; ?></p>
	                            </td>
	                            <td class="ballance">
	                                <p><?php echo $move->concept; ?></p>
	                            </td>
	                        </tr>
	                    	<?php $i++; endforeach; ?>
                        </tbody> 
                    </table>

                    <br>

                    <div class="row">
                        <div class="col-md-8"></div>

                        <div class="col-md-4">
                            <table class="table charge">
                                <thead>
                                    <tr>
                                        <th colspan="2"><?php echo display('totals'); ?></th>
                                    </tr>

                                    <tr>
                                        <th><?php echo display('type'); ?></th>
                                        <th><?php echo display('amount'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="description">
                                            <p><?php echo display('ins'); ?></p> 
                                        </td>
                                        <td class="description">
                                            <p><?php echo number_format($ins, 2); ?></p> 
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="description">
                                            <p><?php echo display('outs'); ?></p> 
                                        </td>
                                        <td class="description">
                                            <p><?php echo number_format($outs, 2); ?></p> 
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="description">
                                            <p><?php echo display('money_in_cash'); ?></p> 
                                        </td>
                                        <td class="description">
                                            <p><?php echo number_format($balance, 2); ?></p> 
                                        </td>
                                    </tr>

                                    <?php foreach ($types as $type): ?>
                                    <tr>
                                        <td class="description">
                                            <p><?php echo $type->payment_method; ?></p> 
                                        </td>
                                        <td class="description">
                                            <p><?php echo number_format($type->total, 2); ?></p> 
                                        </td>
                                    </tr>
                                    <?php endforeach; ?>
                                </tbody> 
                            </table>
                        </div>
                    </div>
                </div>

                <div class="my_sign">
                    <span>___________________________</span>
                    <p><?php echo '' ?></p>
                    <p><?php echo display('signature'); ?></p>
                </div>
            </div> 
                <?php 
                }
                 else{
                 ?>
                   <div class="row">
                    <div class="col-sm-12">
                       <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                          <div class="panel-title">
                            <h4><?php echo display('you_do_not_have_permission_to_access_please_contact_with_administrator');?>.</h4>
                           </div>
                           </div>
                         </div>
                        </div>
                     </div>
                 <?php
                 }
                 ?>
            
        </div>
    </div>
</div>