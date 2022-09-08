<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Website_model extends CI_Model {

    /*
    |____________________________________________________________________
    |  
    | NOTIFICATIONS [trip_assign, tkt_passenger, fleet_registration]
    |____________________________________________________________________ 
    |
    */ 

    public function read_notification()
    {
    	$data['passenger'] = $this->db->select('COUNT(id) AS total')
    		->from('tkt_passenger')
    		->get()
    		->row();

    	$data['fleet'] = $this->db->select('COUNT(id) AS total')
    		->from('fleet_registration')
    		->get()
    		->row();

    	$data['trip'] = $this->db->select('COUNT(id) AS total')
    		->from('trip_assign')
    		->where('DATE(assign_time)', date('Y-m-d'))
    		->get()
    		->row();

    	return (object)$data;

    }

    /*
    |____________________________________________________________________
    |  
    | SETTING 
    |____________________________________________________________________ 
    |
    */ 
 
	public function read_setting() 
	{
		// return $this->db->get('ws_setting')->row();
		return $this->db->query("
			SELECT ws_setting.* , setting.footer_text,setting.language 
			FROM ws_setting, setting
		")->row();
	}


	public function create_setting($data) 
	{
		return $this->db->insert('ws_setting', $data);
	}

 
	public function update_setting($data) 
	{
		return $this->db->where('id', $data['id'])
			->update('ws_setting', $data);
	}

    /*
    |____________________________________________________________________
    |  
    | OFFER 
    |____________________________________________________________________ 
    |
    */ 
 
 
	public function create_offer($data) 
	{
		return $this->db->insert('ws_offer', $data);
	}

 
	public function read_offer() 
	{
		return $this->db->order_by('position', 'asc')
			->get('ws_offer')->result();
	}

	public function delete_offer($id = null) 
	{
		return $this->db->where('id', $id)
			->delete('ws_offer');
	}

    /*
    |____________________________________________________________________
    |  
    | RATING 
    |____________________________________________________________________ 
    |
    */ 
 
	public function read_rating()
	{
		return $this->db->select("*")
			->from('tkt_feedback')
			->where_not_in('add_to_website', array(0,''))
			->order_by('id', 'desc')
			->get()
			->result();
	}   

    /*
    |____________________________________________________________________
    |  
    | LOCATION 
    |____________________________________________________________________ 
    |
    */ 

	public function location_dropdown()
	{
		$data = $this->db->select("*")
			->from("trip_location")
			->where('status', 1) 
			->order_by('name', 'asc')
			->get()
			->result();

		$list[''] = null;
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->name] = $value->name;
		} 
		return $list;
	}

    /*
    |____________________________________________________________________
    |  
    | FLEET 
    |____________________________________________________________________ 
    |
    */ 

	public function fleet_dropdown()
	{
		$data = $this->db->select("*")
			->from("fleet_type")
			->where('status', 1) 
			->get()
			->result();

		$list[''] = null;
		if (!empty($data)) {
			foreach($data as $value)
				$list[$value->id] = $value->type;
		} 
		return $list;
	}
 

    /*
    |____________________________________________________________________
    |  
    | TRIP LIST 
    |____________________________________________________________________ 
    |
    */ 

    public function trip_list($data = array())
    {
        $f = $data['fleet_type'];
        $start = $data['start_point'];
        $end = $data['end_point'];
        $date = $data['date'];
  //   	$this->db->select("
		// 	ta.trip_id AS trip_id_no,
		// 	ta.route,
		// 	ta.shedule_id,
		// 	tr.name AS trip_route_name, 
		// 	tl1.name AS pickup_trip_location,
		// 	tl2.name AS drop_trip_location,
		// 	ta.type, 
  //           tp.total_seat AS fleet_seats, 
		// 	pp.price AS price,
  //           pp.children_price,
  //           pp.special_price,
		// 	tr.approximate_time AS duration,
		// 	tr.distance,
		// 	shedule.start,
		// 	shedule.end,
		// 	tras.closed_by_id,
		// ")->from('trip AS ta')
		// ->join('shedule', 'shedule.shedule_id = ta.shedule_id','left')
		// ->join('trip_route AS tr', 'tr.id = ta.route','left')
		// ->join('trip_assign AS tras', 'tras.trip = ta.trip_id','left')
		// ->join('fleet_type AS tp', 'tp.id = ta.type','left')
		// ->join('pri_price AS pp', 'pp.route_id = ta.route AND pp.vehicle_type_id = ta.type','left')
		// ->join('trip_location AS tl1', 'tl1.id = tr.start_point','left')
		// ->join('trip_location AS tl2', 'tl2.id = tr.end_point','left');
		// //->where_in('tras.closed_by_id', array('',NULL,0));
		// // ->where('start_date >= CURDATE()', null, false)
		//  //->where("tras.start_date", $data['date']);
  //        // ->like('tras.date',$data['date'],'after');
		// if (!empty($data['start_point'])) {
		// 	$this->db->like('tr.start_point', $data['start_point']);
		// } 
		// if (!empty($data['end_point'])) {
		// 	$this->db->like('tr.end_point', $data['end_point']);
		// }
		// if (!empty($data['fleet_type'])) {
		// 	$this->db->like('ta.type', $data['fleet_type']);
		// }
		//  $result =$this->db->group_by('ta.trip_id')
		// ->get()
		// ->result();

      $query = $this->db->query("SELECT 
            ta.`trip_id` AS trip_id_no,
            ta.`route`,
            ta.`shedule_id`,
            tr.`name` AS trip_route_name, 
            tl1.`name` AS pickup_trip_location,
            tl2.`name` AS drop_trip_location,
            ta.`type`, 
            tp.`total_seat` AS fleet_seats, 
            pp.`price` AS price,
            pp.`children_price`,
            pp.`special_price`,
            tr.`approximate_time` AS duration,
            tr.`stoppage_points`,
            tr.`distance`,
            shedule.`start`,
            shedule.`end`,
            tras.`closed_by_id`
FROM trip AS ta
LEFT JOIN shedule ON shedule.`shedule_id` = ta.`shedule_id`
LEFT JOIN trip_route AS tr ON tr.`id` = ta.`route`
LEFT JOIN trip_assign AS tras ON tras.`trip` = ta.`trip_id`
LEFT JOIN fleet_type AS tp ON tp.`id` = ta.`type`
LEFT JOIN pri_price AS pp ON pp.`route_id` = ta.`route` AND pp.`vehicle_type_id`= ta.`type`
LEFT JOIN trip_location AS tl1 ON tl1.`id` = tr.`start_point`
LEFT JOIN trip_location AS tl2 ON tl2.`id` = tr.`end_point`
WHERE (FIND_IN_SET('$start',tr.`stoppage_points`))
AND (FIND_IN_SET('$end',tr.`stoppage_points`))
AND ta.`type` = $f
AND (!FIND_IN_SET(DAYOFWEEK('$date'),ta.`weekend`))
GROUP BY ta.`trip_id`

")->result();
      return $query;
    }


    /*
    |____________________________________________________________________
    |  
    | BOOKING FROM WS_BOOKING_HISTOERY
    |____________________________________________________________________ 
    |
    */ 

	public function createBooking($data = [])
	{	 
		return $this->db->insert("ws_booking_history", $data);
	}

public function createbanktransaction($data = [])
    {    
        return $this->db->insert("bank_transaction", $data);
    }
    

	public function updateBooking($data = [])
	{
		return $this->db->where('id_no',$data['id_no'])
			->update("ws_booking_history",$data); 
	} 

	public function getBooking($booking_id_no = null)
	{
		// return booking data
    	return $this->db->select("
                bh.pickup_trip_location,
                bh.drop_trip_location,
                CONCAT_WS(' ', tp.firstname, tp.lastname) AS passenger_name, 
                bh.tkt_passenger_id_no AS tkt_passenger_id_no,
                bh.trip_id_no AS trip_id_no,
                bh.id_no AS booking_id_no,
                DATE_FORMAT(bh.booking_date, '%m/%d/%Y %h:%i %p') as booking_date,
                tr.name AS route_name,
                bh.request_facilities AS request_facilities,
                bh.price AS price,
                bh.total_seat AS quantity,
                bh.discount AS discount,
                bh.seat_numbers AS seat_serial,
                bh.adult,
                bh.child,
                bh.special 
            ")
            ->from('ws_booking_history AS bh')
            ->join('tkt_passenger AS tp', 'bh.tkt_passenger_id_no = tp.id_no' ,'full')
            ->join('trip_route AS tr', 'tr.id = bh.trip_route_id','full')
            ->where('bh.id_no', $booking_id_no)
            ->get()
            ->row();
	} 

	// |
	// |loacal payment data detrieve
	// |
public function getlocal($booking_id_no = null)
	{
		// return booking data
    	return $this->db->select("tp.email,bh.*,
                bh.pickup_trip_location,
                bh.drop_trip_location,
                CONCAT_WS(' ', tp.firstname, tp.lastname) AS passenger_name, 
                bh.tkt_passenger_id_no AS tkt_passenger_id_no,
                bh.trip_id_no AS trip_id_no,
                bh.id_no AS booking_id_no,
                bh.booking_date,
                tr.name AS route_name,
                bh.request_facilities AS request_facilities,
                bh.price AS price,
                bh.total_seat AS quantity,
                bh.discount AS discount,
                bh.seat_numbers AS seat_serial,
                bh.adult,
                bh.child,
                bh.special 
            ")
            ->from('ws_booking_history AS bh')
            ->join('tkt_passenger AS tp', 'bh.tkt_passenger_id_no = tp.id_no' ,'full')
            ->join('trip_route AS tr', 'tr.id = bh.trip_route_id','full')
            ->where('bh.id_no', $booking_id_no)
            ->get()
            ->row();
	} 

    /*
    |____________________________________________________________________
    |  
    | PASSENGER
    |____________________________________________________________________ 
    |
    */ 

	public function createPassenger($data = array())
	{
	    $checkExists = $this->db->select("*")
	        ->from('tkt_passenger')
	        ->where('id_no',$data['id_no'])
	        ->get() 
	        ->num_rows();

	    if ($checkExists < 1) 
	    {
			return $this->db->insert("tkt_passenger", $data); 
	    } 
	    else 
	    {
			return $this->db->where('id_no',$checkExists->id_no)
			->update("tkt_passenger", $data); 
	    }
	} 
public function passenger_registration($data = array())
    {
        
            return $this->db->insert("tkt_passenger", $data); 
       
    } 


/*
|
|_________________________________________________________________________
|
|Email Checkout
|___________________________________________________________________________
|
*/
public function email_check($email){
     $checkExists = $this->db->select("*")
	        ->from('tkt_passenger')
	        ->where('email',$email)
	        ->get() 
	        ->num_rows();

	    if ($checkExists < 1) {
	        return true;
	    }else{
            if(!empty($this->session->userdata('p_password'))){
                return true;
            }else{
	        return false;
            }
	    }
}

    /*
    |____________________________________________________________________
    |  
    | TICKET
    |____________________________________________________________________ 
    |
    */ 

    public function getTicket($booking_id_no = null)
    {  
    	//get current booking history
		$rowData = $this->db->select('
		    id_no,trip_id_no, tkt_passenger_id_no, trip_route_id, pickup_trip_location,
		    drop_trip_location, request_facilities, price,
		    discount, total_seat,seat_numbers,offer_code,tkt_refund_id, agent_id,
		    booking_date,date,adult,child,special
		')
		->where('id_no', $booking_id_no)
		->get('ws_booking_history')
		->row();
		  
		// if booking history available then copy to tkt_booking and delete the history
         $notice =[
                'b_idno'       => $rowData->id_no,
                'passenger_id' => $rowData->tkt_passenger_id_no,
                'route_id'     => $rowData->trip_route_id,
                'booking_time' => date('Y-m-d H:i:s'),
                'trip_id'      => $rowData->trip_id_no,
                'no_tkts'      => $rowData->total_seat,
                'amount'       => $rowData->price
                      ];
		  
		$paysettings = $this->db->select('*')->from('ws_setting')->get()->row();
	
		
		if (sizeof($rowData) > 0) 
		{
		    if($paysettings->payment_type != 'disable'){
		    $this->db->insert('tkt_booking', $rowData);
            $this->db->insert('ticket_notification',$notice);

		    $this->db->where('id_no', $booking_id_no)->delete('ws_booking_history');
		} 
		}


		// return booking data
    	return $this->db->select("
                tb.pickup_trip_location,
                tb.drop_trip_location,
                CONCAT_WS(' ', tp.firstname, tp.lastname) AS passenger_name, 
                tb.tkt_passenger_id_no AS tkt_passenger_id_no,
                tb.trip_id_no AS trip_id_no,
                tb.id_no AS booking_id_no,
                DATE_FORMAT(tb.booking_date, '%m/%d/%Y %h:%i %p') as booking_date,
                tr.name AS route_name,
                tb.request_facilities AS request_facilities,
                tb.price AS price,
                tb.total_seat AS quantity,
                tb.discount AS discount,
                tb.seat_numbers AS seat_serial,
                tb.adult,
                tb.child,
                tb.special,
                tb.booking_type,
                tb.trip_route_id,
                tp.nid

            ")
            ->from('tkt_booking AS tb')
            ->join('tkt_passenger AS tp', 'tb.tkt_passenger_id_no = tp.id_no' ,'full')
            ->join('trip_route AS tr', 'tr.id = tb.trip_route_id','full')
            ->where('tb.id_no', $booking_id_no)
            ->get()
            ->row();
    }
    /// select webstie  settings data 
    public function retrieve_setting_editdata()
	{
		$this->db->select('*');
		$this->db->from('ws_setting');
		$this->db->where('id',1);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}

//currency
	  public function retrieve_currency()
    {
        $this->db->select('*');
        $this->db->from('ws_setting');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->row();  
        }
        return false;
    }

public function how_to_pay(){
	return $pay = $this->db->select('*')
	                       ->from('payment_informations')
	                       ->get()
	                       ->row();
}

public function how_to_use(){
    return $use = $this->db->select('*')
                           ->from('how_to_use')
                           ->get()
                           ->row();
}
}
