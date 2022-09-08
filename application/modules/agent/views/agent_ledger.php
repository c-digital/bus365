<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                       Agent Ledger
                    </h4>
                </div>
            </div>
            <div class="panel-body">
                
                <div class="text-center">
                   <h2> <?php echo $detls->agent_first_name.' '.$detls->agent_second_name; ?></h2>
                   <h4><?php echo $detls->agent_company_name; ?></h4>
                   <h4><?php echo 'phone :'.''.$detls->agent_phone; ?></h4>
                </div>
                <table width="100%" class="tripAsignDataTable table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                             <th class="text-center"><?php echo display('serial') ?></th>
                            <th class="text-center"><?php echo display('date') ?></th>
                            <th class="text-center"><?php echo display('booking_id') ?></th>
                             <th class="text-center"><?php echo display('debit') ?></th>
                            <th class="text-center"><?php echo display('credit') ?></th>
                             <th class="text-center"><?php echo display('balance') ?></th>
                           
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (!empty($ledger)) { ?>
                            <?php $sl = 1; ?>
                            <?php
                            $balance = 0;
                            $total_credit = 0;
                            $total_debit = 0;
                            $total_balance = 0;
                             foreach ($ledger as $query) {
                                $amount = $query->debit - $query->credit;
                                $balance = $balance - $amount;
                                $total_credit += $query->credit;
                                $total_debit += $query->debit;
                                $total_balance += $amount;
                              ?>
                               <tr>
                                    <td><?php echo $sl; ?></td>
                                    <td><?php echo $query->date; ?></td>
                                     <td><?php echo $query->booking_id; ?></td> 
                                    <td class="text-right"><?php echo $currency; ?> <?php echo $query->debit; ?></td>
                                    <td class="text-right"> <?php echo $currency; ?> <?php echo $query->credit; ?></td>  
                                    <td class="text-right" class="text-right"><?php echo $currency; ?> <?php echo $balance; ?></td>  
                                </tr>
                                <?php $sl++; ?>
                            <?php } ?> 
                        <?php } ?> 
                    </tbody>
                    <tfooter>
                        <tr><td colspan="3" class="text-right"><b>Total </b></td><td class="text-right"><b><?php echo $currency; ?> <?php echo $total_debit;?></b></td><td class="text-right"><b><?php echo $currency; ?> <?php echo $total_credit;?></b></td><td class="text-right"><b><?php echo $currency; ?> <?php echo $total_balance;?></b></td></tr>
                    </tfooter>
                </table>  <!-- /.table-responsive -->
            </div> 
        </div>
    </div>
</div>
<script type="text/javascript">
  $('.tripAsignDataTable').DataTable( {
        searching: true, 
        responsive: false, 
        paging: false,
        pageLength: 10,
        dom: "<'row'<'col-sm-8'B><'col-sm-4'f>>tp", 
        buttons: [  
            {extend: 'copy', className: 'btn-sm', footer: true}, 
            {extend: 'csv', title: 'ExampleFile', className: 'btn-sm', footer: true}, 
            {extend: 'excel', title: 'ExampleFile', className: 'btn-sm', footer: true, title: 'exportTitle'}, 
            {extend: 'pdf', title: 'ExampleFile', className: 'btn-sm', footer: true}, 
            {extend: 'print', className: 'btn-sm', footer: true} 
        ],
        "footerCallback": function ( row, data, start, end, display ) {
            var api = this.api(), data;
            var intVal = function (i) {
                return typeof i === 'string' ? i.replace(/[\$,]/g, '')*1:typeof i === 'number' ? i : 0;
            };  
            //#----------- Total over this page------------------#
            sold_ticket = api.column(7, { page: 'current'} ).data().reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                },0);   
            total_income = api.column(8, { page: 'current'} ).data().reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                },0);  
            total_expense = api.column(9, { page: 'current'} ).data().reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                },0); 
            total_fuel = api.column(10, { page: 'current'} ).data().reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                },0); 
            //#-----------ends of Total over this page------------------#

            // Update footer
            $( api.column(7).footer()).html(sold_ticket.toFixed(2));
            $( api.column(8).footer()).html(total_income.toFixed(2));
            $( api.column(9).footer()).html(total_expense.toFixed(2));
            $( api.column(10).footer()).html(total_fuel.toFixed(2));
        }
    });
}); 
</script>