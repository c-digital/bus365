<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('ticket/passenger/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a>  
                        <a href="<?php echo base_url('ticket/passenger/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  

                        <a type="button" onclick="printContent('PrintMe')" class="btn btn-sm btn-danger" ><i class="fa fa-print"></i></a> 
                    </h4>
                </div>
            </div> 
            <div class="panel-body" id="PrintMe">
                <div class="row">
                    <center><h1><?php echo $passenger->name ?></h1></center>
                    <div class="col-sm-4"> 
                        <table class="table table-hover" width="100%">
                    <thead>
                        <tr>
                            <th colspan="2"><img src="<?php echo base_url((!empty($passenger->image)?$passenger->image:'assets/img/icons/default.jpg')) ?>" width="200" height="200"> </th> 
                        </tr>
                        
                    </thead>
                </table> </div>
                       <div class="col-sm-8"> <table class="table table-hover" width="100%">
                    <thead>
                      
                        <tr>
                            <td><?php echo $passenger->about ?></td> 
                        </tr>
                        <tr>
                            <th><?php echo display('passenger_id') ?></th>
                            <td><?php echo $passenger->id_no;?></td>
                        </tr> 
                        <tr>
                            <th><?php echo display('phone') ?></th>
                            <td><?php echo $passenger->phone;?></td>
                        </tr> 
                        <tr>
                            <th><?php echo display('email') ?></th>
                            <td><?php echo $passenger->email;?></td>
                        </tr> 
                        <tr>
                            <th><?php echo display('address_line_1') ?></th>
                            <td><?php echo $passenger->address_line_1;?></td>
                        </tr> 
                        <tr>
                            <th><?php echo display('address_line_2') ?></th>
                            <td><?php echo $passenger->address_line_2;?></td>
                        </tr> 
                        <tr>
                            <th><?php echo display('city') ?></th>
                            <td><?php echo $passenger->city;?></td>
                        </tr> 
                        <tr>
                            <th><?php echo display('zip_code') ?></th>
                            <td><?php echo $passenger->zip_code;?></td>
                        </tr> 
                        <tr>
                            <th><?php echo display('country') ?></th>
                            <td><?php echo $passenger->country;?></td>
                        </tr> 
                        <tr>
                            <th><?php echo display('status') ?></th>
                            <td><?php echo (($passenger->status==1)?display('active'):display('inactive')); ?></td>
                        </tr> 
                    </thead>
                </table></div>
                </div>
                
                <div class="row">
                <table class="table table-bordered ">
                    <caption><center><h3><?php echo display('ticket_information') ?></h3></center></caption>
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('booking_date') ?></th>
                                <th><?php echo display('booking_id') ?></th>
                                <th><?php echo display('name') ?></th>
                                <th><?php echo display('route_name') ?></th>
                                <th><?php echo display('total_seat') ?></th>
                                <th><?php echo display('price') ?></th>
                                <th><?php echo display('seat_numbers') ?></th>
                                <th><?php echo display('payment_type') ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($tkt)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($tkt as $booking) { 

                       
                                ?>

                            <tr >
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $booking->booking_date; ?></td>
                                <td><?php echo $booking->id_no; ?></td>
                                <td><?php $result=$this->db->select('firstname,lastname')->from('tkt_passenger')->where('id_no',$booking->tkt_passenger_id_no)->get()->result();
                                 foreach ($result as $name) {
                                    echo $name->firstname.' '.$name->lastname;
                                 }
                                 ?></td>
                                <td><?php echo $booking->route_name; ?></td>
                                <td><?php echo $booking->total_seat; ?></td>
                                <td><?php echo $currency; ?><?php echo $booking->price; ?></td>
                                <td><?php echo $booking->seat_numbers; ?></td>
                                <td><?php  if($booking->booking_type == 'local'){
                                    echo 'LOCAL';
                                }else{
                                    echo "ONLINE";
                                } ?></td>
                               
                               
                            </tr>
                            <?php } ?> 
                        </tbody>
                    </table>
                </div>
            </div> 

        </div> 
    </div>
</div>


 