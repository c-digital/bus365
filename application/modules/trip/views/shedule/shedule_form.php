       <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="panel">
                            <div class="panel-body">
                                <?= form_open('trip/shedule/add_shedule',array('name'=>'myForm')) ?>
                                   
                                    <div class="form-group row">
                                        <label for="start" class="col-sm-4 col-form-label">
                                            <?php echo 'Start'; ?> *</label>
                                        <div class="col-sm-8">
                                        <input type="text" name="start" id="start" placeholder="Start Time" class="form-control timepicker" value="<?php 
                                            echo $sheduledata->start;?>"> 
                                            <input type="hidden" name="shedule_id" value="<?php 
                                            echo $sheduledata->shedule_id; ?>">
                                           
                                        </div>

                                    </div>
                                
                                <div class="form-group row">
                                        <label for="end" class="col-sm-4 col-form-label">
                                            <?php echo 'End'; ?> *</label>
                                        <div class="col-sm-8">
                                           <input type="text" name="end" id="end" placeholder="End Time" class="form-control timepicker"  value="<?php 
                                            echo $sheduledata->end; ?>">  
                                            
                                                                                    </div>

                                    </div>
                                     <div class="form-group row">
                                        <label for="duration" class="col-sm-4 col-form-label">
                                            <?php echo 'Duration'; ?> *</label>
                                        <div class="col-sm-8">
                                          <input type="text" name="duration" id="duration" placeholder="Duration" class="form-control" value="<?php 
                                            echo $sheduledata->duration;?>">
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
                

                <script type="text/javascript">

    function durationss(){
    var start = $('#start').val();
    var end = $('#end').val();
   // alert(start);
    document.getElementById("duration").value= start;
                       
             
    }


$(document).ready(function(e) {
    function calculation(){
            var valuestart = $("#start").val();
            var valuestop = $("#end").val();
         //$('#duration').val(hourDiff);

var start = valuestart;
var end = valuestop;
var diff = start.split(':').map((item,index) => end.split(':')[index] - item).join(':')
//alert(diff);
$('#duration').val(diff);
        }
$('#sart,#end').change(calculation)


});

                </script>