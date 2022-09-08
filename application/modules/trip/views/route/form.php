
<style type="text/css">
    
</style>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('trip/route/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($route->id): ?>
                        <a href="<?php echo base_url('trip/route/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open('trip/route/form/') ?>
                    <?php echo form_hidden('id', $route->id); ?>

                    <div class="form-group row">
                        <label for="name" class="col-sm-3 col-form-label"><?php echo display('route_name') ?> *</label>
                        <div class="col-sm-9" hei>
                            <input name="name" class="form-control" type="text" placeholder="<?php echo display('route_name') ?>" id="name" value="<?php echo $route->name ?>">
                        </div>
                    </div> 


                    <div class="form-group row">
                        <label for="start_point" class="col-sm-3 col-form-label"><?php echo display('start_point') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('start_point', $location_list, (!empty($route->start_point)?$route->start_point:null), 'class="form-control startend" id="start"') ?> 
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="end_point" class="col-sm-3 col-form-label"><?php echo display('end_point') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('end_point', $location_list, (!empty($route->end_point)?$route->end_point:null), ' class="form-control startend" id="end"') ?> 
                        </div>
                    </div>
 
                    <div class="form-group row">
                        <label for="stoppage_points" class="col-sm-3 col-form-label"><?php echo display('stoppage_points') ?>* </label>
                        <div class="col-sm-9">
                            <input name="stoppage_points" class="form-control tokenfield" type="text"  placeholder="<?php echo display('stoppage_points') ?>" id="stoppage_points" value="<?php echo $route->stoppage_points ?>" onclick="showDiv()" required>
                              <ul class="answer_list" id="stopagediv" style="display:none;height: auto;list-style-type: none;height:100px;overflow-y: auto;width: 200px">
                               
                               
                                <input type="hidden" name="proId" id="proId">
                            </ul>
                            <ul class="answer_list" id="stopagediv2" style="height: auto;list-style-type: none;height:100px;overflow-y: auto;width: 200px">
                             <?php
            $data = $this->db->select("*")
			->from('trip_location')
			->where('status', 1) 
			->get()
			->result();
			
		$selected_stopage = array();
        $selected_stopage = array_map('trim', explode(',', $route->stoppage_points));

			foreach ($data as $stopages) {
		
	
				 $html .="<li><label class='checkbox-inline'><input type='checkbox' class='checkbox-btn' value='".$stopages->name."' onchange='checkCount();'";
				  foreach ($selected_stopage as $key =>$s_stopage) {
				 if($stopages->name==$s_stopage){ $html .="checked";}
				  }
				 $html.=">".$stopages->name."</label></li>";
			}
			echo $html;
                             ?>
                            </ul>
                        </div>


                    </div> 
<!-- 
           <div id="stopagediv"  style="display:none;height: auto" class="answer_list" >
                        
                       
                    </div> -->
                    <div class="form-group row">
                        <label for="distance" class="col-sm-3 col-form-label"><?php echo display('distance') ?></label>
                        <div class="col-sm-9">
                            <input name="distance" class="form-control" type="text" placeholder="<?php echo display('distance_kmmile') ?>" id="distance" value="<?php echo $route->distance ?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="approximate_time" class="col-sm-3 col-form-label"><?php echo display('approximate_time') ?></label>
                        <div class="col-sm-9">
                            <input name="approximate_time" class="form-control" type="text" placeholder="<?php echo display('approximate_time') ?>" id="approximate_time" value="<?php echo $route->approximate_time ?>">
                        </div>
                    </div>  
                 <div class="form-group row">
                        <label for="children_seat" class="col-sm-3 col-form-label"><?php echo display('children_seat') ?></label>
                        <div class="col-sm-9">
                            <input name="children_seat" class="form-control" type="text" placeholder="<?php echo display('children_seat') ?>" id="children_seat" value="<?php echo $route->children_seat ?>">
                        </div>
                    </div>  
                  <div class="form-group row">
                        <label for="special_seat" class="col-sm-3 col-form-label"><?php echo display('special_seat') ?></label>
                        <div class="col-sm-9">
                            <input name="special_seat" class="form-control" type="text" placeholder="<?php echo display('special_seat') ?>" id="special_seat" value="<?php echo $route->special_seat ?>">
                        </div>
                    </div>  

                    <div class="form-group row">
                        <label for="status" class="col-sm-3 col-form-label">Status *</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <?php echo form_radio('status', '1', (($route->status==1)?1:0), 'id="status"'); ?>Active
                            </label>
                            <label class="radio-inline">
                                <?php echo form_radio('status', '0', (($route->status=="0")?1:0) , 'id="status"'); ?>Inactive
                            </label> 
                        </div>
                    </div>
         
         
                    <div class="form-group text-right">
                        <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                        <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                    </div>
                <?php echo form_close() ?>

            </div>  
        </div>
    </div>
</div>



<script type="text/javascript">


  function checkCount(elm) {
      var checkboxes = document.getElementsByClassName("checkbox-btn");
      var selected = [];
      for (var i = 0; i < checkboxes.length; ++i) {
        if(checkboxes[i].checked){
            selected.push(checkboxes[i].value);
        }
        }
      document.getElementById("stoppage_points").value = selected.join();
      //document.getElementById("total").innerHTML = selected.length;
    }
    function showDiv() {
   document.getElementById('stopagediv').style.display = "block";
   document.getElementById("stoppage_points").placeholder = "Check Stoppage Points From Below";
   document.getElementById('stopagediv2').style.display = "none";
}
</script>
 <script type="text/javascript"> 
     $(".startend").change(function() {

document.getElementById('stopagediv2').style.display = "none";
        //set variables
        var start  = $("#start").val();
        var end  = $("#end").val();
       var stopagediv  = $("#stopagediv");
      
            $.ajax({
                url: '<?php echo base_url('trip/route/startendpoints') ?>',
                method : 'post',
                dataType: 'json',
                data: {
                    '<?php echo $this->security->get_csrf_token_name() ?>':'<?php echo $this->security->get_csrf_hash() ?>',
                    'start_point': start, 
                    'end_point'  : end
                },
                success: function(data) {
                     stopagediv.html(data);
                }, 
                error: function(xhr) {
                    alert('failed!');
                }
            });
        
  

    });
</script> 