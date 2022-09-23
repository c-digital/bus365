<div class="modal fade" id="assign" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <?= form_open('/dashboard/merchandise/assign') ?>
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"><?php echo display('assign_merchandise_to_trip') ?></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <input type="hidden" name="id" value="<?php echo $item->id; ?>">

            <div class="form-group">
                <label for="trip_id"><?php echo display('select_trip'); ?></label>
                <select name="trip_id" class="form-control" required>
                    <option value=""></option>

                    <?php foreach ($trips as $trip): ?>
                        <option value="<?php echo $trip->trip_id; ?>"><?php echo $trip->trip_id; ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo display('cancel') ?></button>
            <button type="submit" class="btn btn-primary"><?php echo display('assign') ?></button>
          </div>
        </div>
      </div>
    <?php echo form_close() ?>
</div>