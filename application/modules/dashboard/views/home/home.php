<div class="row">

    <!-- Quick Link -->
    <div class="col-sm-3">
        <div class="row">
         <?php if($this->permission->method('ticket','create')->access()): ?>
            <div class="col-sm-12">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <a href="<?php echo base_url('ticket/booking/form') ?>" class="statistic-box text-center">
                            <div><i class="fa fa-ticket fa-4x text-success"></i></div>
                            <h4><?php echo display('booking') ?></h4>
                        </a> 
                    </div>
                </div>
            </div>
           <?php endif; ?>
           <?php if($this->permission->method('reports','read')->access()): ?>
            <div class="col-sm-12">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <a href="<?php echo base_url('reports/booking/report') ?>" class="statistic-box text-center">
                            <div><i class="fa fa-pie-chart fa-4x text-success"></i></div>
                            <h4><?php echo display('reports') ?></h4>
                        </a>
                    </div>
                </div>
            </div> 
<?php endif; ?>

 <?php if($this->permission->method('account','create')->access()): ?>
            <div class="col-sm-12">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <a href="<?php echo base_url('account/account_controller/create_transaction') ?>" class="statistic-box text-center">
                            <div><i class="fa fa-money fa-4x text-success"></i></div>
                            <h4><?php echo display('account_transaction') ?></h4>
                        </a>
                    </div>
                </div>
            </div> 
<?php endif; ?>
        </div>
    </div>
 

    <!-- Yearly Chart -->
    <div class="col-sm-9">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4><?php echo display('yearly_progressbar') ?></h4>
                </div>
            </div>
            <div class="panel-body">
                <canvas id="lineChart"></canvas>
            </div>
        </div>
    </div>
</div>


<?php if($this->session->userdata('isAdmin')==1){?>
 <div class="row">  
    <!-- Assign List -->
    <div class="col-sm-8">
        <div class="panel panel-bd">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4><?php echo display('todays_trip') ?></h4>
                </div>
            </div>
            <div class="panel-body">
                 <table class="datatable2 table table-bordered">
                    <thead>
                        <tr>
                            <th><?php echo display('sl_no') ?></th>
                            <th><?php echo display('trip_id') ?></th>
                            <th><?php echo display('reg_no') ?></th>
                            <th><?php echo display('route_name') ?></th>
                            <th><?php echo display('time') ?></th>
                            <th><?php echo display('driver_name') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($assigns)) ?>
                        <?php $sl = 1; ?>
                        <?php foreach ($assigns as $assign) { ?>
                        <tr>
                            <td><?php echo $sl++; ?></td>
                            <td>
                                <a href="<?php echo base_url("trip/assign/view/$assign->id_no") ?>"><?php echo $assign->id_no; ?></a>
                            </td>
                            <td><?php echo $assign->fleet_registration_name; ?></td>
                            <td><?php echo $assign->name; ?></td>
                            <td><?php echo $assign->start.'-'.$assign->end; ?></td>
                            <td><?php echo $assign->driver_name; ?></td> 
                        </tr>
                        <?php } ?> 
                    </tbody>
                </table>
            </div>
        </div>
    </div> 


    <!-- Enquiry -->
    <div class="col-sm-4">
        <div class="panel panel-bd lobidisable">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4><?php echo display('enquiry') ?></h4>
                </div>
            </div>
            <div class="panel-body">
                <table width="100%" class=" table table-striped">
                    <thead>
                        <tr>
                            <th><?php echo display('name') ?></th>
                            <th><?php echo display('date') ?></th>
                            <th><?php echo display('action') ?></th> 
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($enquirys)) { ?>
                            <?php foreach ($enquirys as $enquiry) { ?>
                                <tr>
                                    <td><?php echo $enquiry->name; ?></td>
                                    <td><?php echo $enquiry->created_date; ?></td> 
                                    <td class="center">
                                        <a href="<?php echo base_url("enquiry/home/view/$enquiry->enquiry_id") ?>" class="btn btn-xs btn-success"><i class="fa fa-eye"></i></a>  
                                    </td>
                                </tr>
                            <?php } ?> 
                        <?php } ?> 
                    </tbody>
                </table>  <!-- /.table-responsive -->
            </div>
        </div>
    </div>  
</div>
<?php } ?>
<!-- Chart js -->
<script src="<?php echo base_url('assets/js/Chart.min.js') ?>" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function(){
    //line chart
    var ctx = document.getElementById("lineChart");
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: [<?php
                    for ($i=1; $i <= 12; $i++) {
                        if ($i==1) {
                            echo '"January",';
                        }elseif ($i==2) {
                            echo '"February",';
                        }elseif ($i==3) {
                            echo '"March",';
                        }elseif ($i==4) {
                            echo '"April",';
                        }elseif ($i==5) {
                            echo '"May",';
                        }elseif ($i==6) {
                           echo '"June",';
                        }elseif ($i==7) {
                           echo '"July",';
                        }elseif ($i==8) {
                           echo '"August",';
                        }elseif ($i==9) {
                           echo '"September",';
                        }elseif ($i==10) {
                           echo '"October",';
                        }elseif ($i==11) {
                           echo '"November",';
                        }elseif ($i==12) {
                           echo '"December"';
                        }
                    }
                ?>],
            datasets: [
                {
                    label: "Assign",
                    borderColor: "rgba(0,0,0,.09)",
                    borderWidth: "1",
                    //backgroundColor: "rgba(0,0,0,.07)",
                    data: [<?php 
                        for ($i=1; $i <= 12 ; $i++) { 
                            $assigninfo =$this->home_model->monthlyassign($i);
                        if(!empty($assigninfo)) {
                            
                               echo $assigninfo->total_assign.",";
                            }else{
                                echo ",";
                               }
                        }
                    ?>]
                   
                },
                {
                    label: "Booking",
                    borderColor: "rgba(55, 160, 0, 0.9)",
                    borderWidth: "1",
                    //backgroundColor: "rgba(55, 160, 0, 0.5)",
                    pointHighlightStroke: "rgba(26,179,148,1)",
                    data: [<?php 
                        for ($i=1; $i <= 12 ; $i++) { 
                            $bookinginfo =$this->home_model->monthlybooking($i);
                        if(!empty($bookinginfo)) {
                            
                               echo $bookinginfo->total_booking.",";
                            }else{
                                echo ",";
                               }
                        }
                    ?>]
                }
            ]
        },
        options: {
            responsive: true,
            tooltips: {
                mode: 'index',
                intersect: false
            },
            hover: {
                mode: 'nearest',
                intersect: true
            }

        }
    });
});
</script>