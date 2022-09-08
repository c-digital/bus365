<style type="text/css">
    input[type=checkbox] {
  display: none;
}

input[type=checkbox] + label {
  color: green;
  cursor: pointer;
}

input[type=checkbox]:checked + label {
  color: red;
}

.days {
  > span {
    display: inline;
  }
  .chklabel{
    color:green;
  }
}
</style>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('trip/trip/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($trips->id): ?>
                        <a href="<?php echo base_url('trip/trip/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open('trip/trip/form') ?>
                    <?php echo form_hidden('trip_id', $trips->trip_id); ?>

                    <div class="form-group row">
                        <label for="trip_title" class="col-sm-3 col-form-label"><?php echo display('trip_title') ?> *</label>
                        <div class="col-sm-9">
                                    <textarea name="trip_title" id="trip_title" class="form-control" readonly=""><?php echo $trips->trip_title; ?></textarea>
                        </div>
                    </div> 
                 <div class="form-group row">
                        <label for="types" class="col-sm-3 col-form-label"><?php echo display('types') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('types', $types, (!empty($trips->types)?$trips->types:null), ' class="form-control trips_info"') ?> 
                        </div>
                    </div> 


                    <div class="form-group row">
                        <label for="route" class="col-sm-3 col-form-label"><?php echo display('route') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('route', $route_list, (!empty($trips->route_id)?$trips->route_id:null), ' class="form-control trips_info"') ?> 
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="shedule" class="col-sm-3 col-form-label"><?php echo display('shedules') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('shedule', $shedule, (!empty($trips->shedule)?$trips->shedule:null), ' class="form-control trips_info"') ?> 
                        </div>
                    </div> 

                        <div class="form-group row">
                        <label for="status" class="col-sm-3 col-form-label">Status *</label>
                        <div class="col-sm-9">
                            <label class="radio-inline">
                                <?php echo form_radio('status', '1', (($trips->status==1)?1:0), 'id="status"'); ?>Active
                            </label>
                            <label class="radio-inline">
                                <?php echo form_radio('status', '0', (($trips->status=="0")?1:0) , 'id="status"'); ?>Inactive
                            </label> 
                         </div>
                         </div>
         <div class="form-group row">

    <label class="col-sm-3 col-form-label" for="WorkWeek">Weekend</label>
    <div class="col-sm-9">
      
      <select name="weekend[]" class="form-control tokenfield" multiple="multiple">
 
                              <?php
                       
                 $wdays = explode(',', $trips->weekend);

                 foreach($weekdaylist as $key => $weekday){
                  foreach ($wdays as $day) {
                  ?>
                  <option value="<?php echo $key;?>" <?php if($key==$day){
                    echo 'selected';
                  }?>><?php echo $weekday;?></option>
                <?php  }}?> 
                </select> 
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


$("select.trips_info").change(function () {
    var selectedOptions = [];
    $("select.trips_info").each(function(){
        var value = $(this).val();
        if($.trim(value)){
            selectedOptions.push(value);
        }
    });
    $("#trip_title").html(selectedOptions.join('-'));
});
</script>
