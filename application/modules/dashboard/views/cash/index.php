<style>
    .widget {
        padding: 10px;
    }
</style>

<div class="row">
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                        <div class="bg-success widget">
                            <span class="info-box-icon"><i class="fa fa-arrow-up"></i></span>

                            <div class="info-box-content">
                              <span class="info-box-text"><?php echo display('ins') ?>:</span><br>
                              <span class="info-box-number">BOB <?php echo number_format($ins, 2) ?></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                        <div class="info-box bg-warning widget">
                            <span class="info-box-icon"><i class="fa fa-arrow-down"></i></span>

                            <div class="info-box-content">
                              <span class="info-box-text"><?php echo display('outs') ?>:</span><br>
                              <span class="info-box-number">BOB <?php echo number_format($outs, 2) ?></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                        <div class="bg-primary info-box bg-navy-blue widget">
                            <span class="info-box-icon"><i class="fa fa-money"></i></span>

                            <div class="info-box-content">
                              <span class="info-box-text"><?= display('money_in_cash') ?>:</span><br>
                              <span class="info-box-number">BOB <?php echo number_format((float) $balance, 2); ?></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                        <div class="info-box bg-info bg-blue widget">
                            <span class="info-box-icon"><i class="fa <?php echo ($status == 'Open') ? 'fa-check' : 'fa-times' ?>"></i></span>

                            <div class="info-box-content">
                              <span class="info-box-text"><?= display('status') ?>:</span><br>
                              <span class="info-box-number"><?php echo $status ?></span>
                            </div>
                        </div>
                    </div>
                </div>

                <form action="" style="margin-bottom: 3%; margin-top: 3%">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="start"><?php echo display('date_start') ?></label>
                            <input type="date" class="form-control" name="start" value="<?php echo (isset($_GET['start'])) ? $_GET['start'] : '' ?>">
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="end"><?php echo display('date_end') ?></label>
                            <input type="date" class="form-control" name="end" value="<?php echo (isset($_GET['start'])) ? $_GET['end'] : '' ?>">
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="payment_method"><?php echo display('payment_method') ?></label>
                            <select name="payment_method" class="form-control">
                                <option value="All"><?php echo display('all'); ?></option>
                                <option <?php echo (isset($_GET['payment_method']) && $_GET['payment_method'] == 'cash') ? 'selected' : '' ?> value="cash"><?php echo display('cash') ?></option>
                                <option <?php echo (isset($_GET['payment_method']) && $_GET['payment_method'] == 'transfer') ? 'selected' : '' ?> value="transfer"><?php echo display('transfer') ?></option>
                                <option <?php echo (isset($_GET['payment_method']) && $_GET['payment_method'] == 'check') ? 'selected' : '' ?> value="check"><?php echo display('check') ?></option>
                            </select>
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="type_move"><?php echo display('type_move') ?></label>
                            <select name="type_move" class="form-control">
                                <option value="All"><?php echo display('all'); ?></option>
                                <option <?php echo (isset($_GET['type_move']) && $_GET['type_move'] == 'in') ? 'selected' : '' ?> value="in"><?php echo display('in') ?></option>
                                <option <?php echo (isset($_GET['type_move']) && $_GET['type_move'] == 'out') ? 'selected' : '' ?> value="out"><?php echo display('out') ?></option>
                            </select>
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="casher"><?php echo display('casher') ?></label>
                            <select name="casher" class="form-control">
                                <option value="All"><?php echo display('all'); ?></option>
                                <?php foreach ($cashers as $casher): ?>
                                    <option <?php echo (isset($_GET['casher']) && $_GET['casher'] == $casher->email) ? 'selected' : '' ?> value="<?php echo $casher->email; ?>"><?php echo $casher->email; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                            <label for="">&nbsp;</label>
                            <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-eye"></i> <?php echo display('search') ?></button>
                        </div>
                    </div>
                </form>

                <div class="text-center" style="margin-bottom: 3%">
                    <?php if ($status == 'Open'): ?>
                        <a href="" class="btn btn-success" data-toggle="modal" data-target="#agregar_movimiento"><?php echo display('add_move'); ?></a>
                    <?php endif; ?>

                    <?php if ($status == 'Open'): ?>
                        <a href="/dashboard/cash/close" class="btn btn-primary"><?php echo display('close_cash') ?></a>
                    <?php else: ?>
                        <a data-toggle="modal" data-target="#apertura_caja" href="" class="btn btn-primary"><?php echo display('open_cash'); ?></a>
                    <?php endif; ?>
                </div>

                <table class="datatable table table-striped table-bordered" cellspacing="0" width="100%">
                    <thead>
                        <tr> 
                            <th class="text-center"><?php echo display('id'); ?></th>
                            <th class="text-center"><?php echo display('type_move'); ?></th>
                            <th class="text-center"><?php echo display('date'); ?></th>
                            <th class="text-center"><?php echo display('amount'); ?></th>
                            <th class="text-center"><?php echo display('payment_method'); ?></th>
                            <th class="text-center"><?php echo display('concept'); ?></th>
                            <th class="text-center"><?php echo display('casher'); ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($moves as $move): ?>
                            <tr> 
                                <td class="text-center"><?php echo $move->id; ?></td>
                                <td class="text-center"><?php echo display($move->type_move); ?></td>
                                <td class="text-center"><?php echo $move->date; ?></td>
                                <td class="text-center"><?php echo $move->amount; ?></td>
                                <td class="text-center"><?php echo display($move->payment_method); ?></td>
                                <td class="text-center"><?php echo $move->concept; ?></td>
                                <td class="text-center"><?php echo $move->casher; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>




<div class="modal fade" id="agregar_movimiento" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close close_crear_proveedor" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?php echo display('add_move') ?></h4>
      </div>

      <form action="/dashboard/cash/save" method="POST">
          <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">

          <div class="modal-body">
            <div class="form-group">
                <label for="type_move"><?php echo display('type_move') ?></label>
                <select name="type_move" class="form-control" required>
                    <option value=""></option>
                    <option value="in"><?php echo display('in') ?></option>
                    <option value="out"><?php echo display('out') ?></option>
                </select>
            </div>

            <div class="form-group">
                <label for="amount"><?php echo display('amount') ?></label>
                <input type="number" required class="form-control" name="amount">
            </div>

            <div class="form-group">
                <label for="payment_method"><?php echo display('payment_method') ?></label>
                <select name="payment_method" class="form-control" required>
                    <option value=""></option>
                    <option value="cash"><?php echo display('cash') ?></option>
                    <option value="transfer"><?php echo display('transfer') ?></option>
                    <option value="check"><?php echo display('check') ?></option>
                </select>
            </div>

            <div class="form-group">
                <label for="concept"><?php echo display('concept') ?></label>
                <textarea name="concept" required class="form-control"></textarea>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo display('close_modal') ?></button>
            <button type="submit" class="btn btn-primary"><?php echo display('register') ?></button>
          </div>
      </form>
    </div>
  </div>
</div>

<div class="modal fade" id="cierre_caja" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close close_crear_proveedor" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?php echo display('close_cash') ?></h4>
      </div>

      <form action="/billing/caja/cierre" method="POST">
          <div class="modal-body">
            <div class="form-group">
                <label for="amount"><?php echo display('amount') ?></label>
                <input type="number" required class="form-control" name="amount">
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo display('close_modal') ?></button>
            <button type="submit" class="btn btn-primary"><?php echo display('register') ?></button>
          </div>
      </form>
    </div>
  </div>
</div>

<div class="modal fade" id="apertura_caja" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close close_crear_proveedor" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?php echo display('open_cash') ?></h4>
      </div>

      <form action="/billing/caja/apertura" method="POST">
          <div class="modal-body">
            <div class="form-group">
                <label for="amount"><?php echo display('amount') ?></label>
                <input type="number" min="0.01" step="0.01" required class="form-control" name="amount">
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo display('close_modal') ?></button>
            <button type="submit" class="btn btn-primary"><?php echo display('register') ?></button>
          </div>
      </form>
    </div>
  </div>
</div>