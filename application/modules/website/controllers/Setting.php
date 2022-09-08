<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Setting extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model(array(
			'website_model'
		));
	}

	
	public function form()
	{
        $this->permission->module('website','update')->redirect();
		$data['title'] = display('website');
		#-------------------------------#
		$this->form_validation->set_rules('title',display('application_title'),'required|max_length[50]');
		$this->form_validation->set_rules('slogan', display('slogan') ,'max_length[255]');
		$this->form_validation->set_rules('address', display('address') ,'max_length[255]');
		$this->form_validation->set_rules('email', display('email'),'max_length[100]|valid_email');
		$this->form_validation->set_rules('paypal_email', display('paypal_email'),'required|max_length[100]|valid_email');
		$this->form_validation->set_rules('payment_type',display('paypal_transaction'),'required|max_length[50]');
		$this->form_validation->set_rules('currency', display('currency'),'required|max_length[50]');
		$this->form_validation->set_rules('phone', display('phone'), 'max_length[20]'); 
		$this->form_validation->set_rules('status', display('website_status'), 'required|max_length[1]'); 
		$this->form_validation->set_rules('about',display('about'), 'max_length[255]');  
		$this->form_validation->set_rules('google_map', display('google_map'), 'max_length[1000]'); 
		#-------------------------------#
		//logo upload
		$logo = $this->fileupload->do_upload(
			'application/modules/website/assets/images/icons/',
			'logo'
		);
		// if logo is uploaded then resize the logo
		if ($logo !== false && $logo != null) {
			$this->fileupload->do_resize($logo, 190, 52);
		}
		//if logo is not uploaded
		if ($logo === false) {
		$this->session->set_flashdata('exception', 'please upload gif|jpg|png|jpeg|ico type image');
		}


		//favicon upload
		$favicon = $this->fileupload->do_upload(
			'application/modules/website/assets/images/icons/',
			'favicon'
		);
		// if favicon is uploaded then resize the favicon
		if ($favicon !== false && $favicon != null) {
			$this->fileupload->do_resize(
				$favicon, 
				32,
				32
			);
		}
		//if favicon is not uploaded
		if ($favicon === false) {
			$this->session->set_flashdata('exception',  display('invalid_favicon'));
		}		
		#-------------------------------# 

		$data['website'] = (object)$postData = [
			'id'          => $this->input->post('id'),
			'title' 	  => $this->input->post('title'),
			'slogan'  	  => $this->input->post('slogan'), 
			'address' 	  => $this->input->post('address', false),
			'email' 	  => $this->input->post('email'),
			'phone' 	  => $this->input->post('phone'),
			'logo' 	      => (!empty($logo)?$logo:$this->input->post('old_logo')),
			'favicon' 	  => (!empty($favicon)?$favicon:$this->input->post('old_favicon')),
			'status'      => $this->input->post('status'),
			'timezone'    => $this->input->post('timezone'), 
			'about' 	  => $this->input->post('about'), 
			'description' => $this->input->post('description', false), 
			'payment_type'=> $this->input->post('payment_type'),
			'paypal_email'=> $this->input->post('paypal_email'),
			'currency' 	  => $this->input->post('currency'),
		 'bank_commission' =>$this->input->post('bank_commission'),
			'google_map'  => $this->input->post('google_map', false), 
		]; 
		#-------------------------------#
		if ($this->form_validation->run() === true) {

			#if empty $id then insert data
			if (empty($postData['id'])) {
				if ($this->website_model->create_setting($postData)) {
					#set success message
					$this->session->set_flashdata('message',display('save_successfully'));
				} else {
					#set exception message
					$this->session->set_flashdata('exception',display('please_try_again'));
				}
			} else {
				if ($this->website_model->update_setting($postData)) {
					#set success message
					$this->session->set_flashdata('message',display('update_successfully'));
				} else {
					#set exception message
					$this->session->set_flashdata('exception', display('please_try_again'));
				} 
			}
 
			redirect('website/setting/form');

		} else { 

			if (empty($postData['id'])) {
				$data['website'] = $this->website_model->read_setting(); 
			}

			$data['currency_list'] = array(
				'USD' => '(USD) U.S. Dollar', 
				'EUR' => '(EUR) Euro', 
				'AUD' => '(AUD) Australian Dollar',
				'CAD' => '(CAD) Canadian Dollar',
				'CZK' => '(CZK) Czech Koruna',
				'DKK' => '(DKK) Danish Krone',
				'HKD' => '(HKD) Hong Kong Dollar',
				'Yen' => '(YEN) Japanese',
				'MXN' => '(MXN) Mexican Peso',
				'NOK' => '(NOK) Norwegian Krone',
				'NZD' => '(NZD) New Zealand Dollar',
				'PHP' => '(PHP) Philippine Peso',
				'PLN' => '(PLN) Polish Zloty',
				'SGD' => '(SGD) Singapore Dollar',
				'৳'   => '(BDT) Bangladeshi Tk',
				'₦'   => '(NGN) Nigerian Dollar',
				'Rp'  => '(Rp) Indonesian Rupiah',
				'ƒ'   => 'ƒ',
				'R$'  => 'R$',
				'¥'   => '¥',
				'₡'   => '₡',
				'kn'  => 'kn',
				'£'   => '£',
				'€'   => '€',
				'Rs'  => 'Rs',
				'R'   => 'R',
				'₩'   => '₩',
				'$'   => '$',
				'n/a' => 'n/a',
				'$'   => '$',
				'£'   => '£',
				'kr'  => 'kr',
				'Kč'  => 'Kč',
				'元'  => '元',
				'J$'  => 'J$',
				'Ls'  => 'Ls',
				'RM'  => 'RM',
				'kr'  => 'kr',
				'﷼'   => '﷼',
				'﷼'   => '﷼',
				'₽'   => '₽',
				'﷼'   => '﷼',
				'kr'  => 'kr',
				'CHF' => 'CHF',
				'฿'   => '฿',
				'YTL' => 'YTL',
				'Bs'  => 'Bs',
			);
$data['timezonelist'] = array(
'Africa/Casablanca' => 'Africa/Casablanca',
'Africa/Lagos' => 'Africa/Lagos',
'Africa/Cairo' => 'Africa/Cairo',
'Africa/Harare' => 'Africa/Harare',
'Africa/Johannesburg' => 'Africa/Johannesburg',
'Africa/Monrovia' => 'Africa/Monrovia',
'America/Anchorage' => 'America/Anchorage',
'America/Los_Angeles' => 'America/Los_Angeles',
'America/Tijuana' => 'America/Tijuana',
'America/Chihuahua' => 'America/Chihuahua',
'America/Mazatlan' => 'America/Mazatlan',
'America/Denver' => 'America/Denver',
'America/Managua' => 'America/Managua',
'America/Chicago' => 'America/Chicago',
'America/Mexico_City' => 'America/Mexico_City',
'America/Monterrey' => 'America/Monterrey',
'America/New_York' => 'America/New_York',
'America/Lima' => 'America/Lima',
'America/Bogota' => 'America/Bogota',
'America/Caracas' => 'America/Caracas',
'America/La_Paz' => 'America/La_Paz',
'America/Santiago' => 'America/Santiago',
'America/St_Johns' => 'America/St_Johns',
'America/Sao_Paulo' => 'America/Sao_Paulo',
'America/Argentina' => 'America/Argentina',
'America/Godthab' => 'America/Godthab',
'America/Noronha' => 'America/Noronha',
'Asia/Jerusalem' => 'Asia/Jerusalem',
'Asia/Baghdad' => 'Asia/Baghdad',
'Asia/Kuwait' => 'Asia/Kuwait',
'Africa/Nairobi' => 'Africa/Nairobi',
'Asia/Riyadh' => 'Asia/Riyadh',
'Asia/Tehran' => 'Asia/Tehran',
'Asia/Baku' => 'Asia/Baku',
'Asia/Muscat' => 'Asia/Muscat',
'Asia/Tbilisi' => 'Asia/Tbilisi',
'Asia/Yerevan' => 'Asia/Yerevan',
'Asia/Kabul' => 'Asia/Kabul',
'Asia/Karachi' => 'Asia/Karachi',
'Asia/Tashkent' => 'Asia/Tashkent',
'Asia/Kolkata' => 'Asia/Kolkata',
'Asia/Katmandu' => 'Asia/Katmandu',
'Asia/Almaty' => 'Asia/Almaty',
'Asia/Dhaka' => 'Asia/Dhaka',
'Asia/Yekaterinburg' => 'Asia/Yekaterinburg',
'Asia/Rangoon' => 'Asia/Rangoon',
'Asia/Bangkok' => 'Asia/Bangkok',
'Asia/Jakarta' => 'Asia/Jakarta',
'Asia/Hong_Kong' => 'Asia/Hong_Kong',
'Asia/Chongqing' => 'Asia/Chongqing',
'Asia/Krasnoyarsk' => 'Asia/Krasnoyarsk',
'Asia/Kuala_Lumpur' => 'Asia/Kuala_Lumpur',
'Australia/Perth' => 'Australia/Perth',
'Asia/Singapore' => 'Asia/Singapore',
'Asia/Taipei' => 'Asia/Taipei', 
'Asia/Ulan_Bator' => 'Asia/Ulan_Bator',
'Asia/Urumqi' => 'Asia/Urumqi',
'Asia/Irkutsk' => 'Asia/Irkutsk',
'Asia/Tokyo' => 'Asia/Tokyo',
'Asia/Seoul' => 'Asia/Seoul',
'Asia/Yakutsk' => 'Asia/Yakutsk',
'Asia/Vladivostok' => 'Asia/Vladivostok',
'Asia/Kamchatka' => 'Asia/Kamchatka',
'Asia/Magadan' => 'Asia/Magadan',
'Atlantic/Azores' => 'Atlantic/Azores',
'Atlantic/Cape_Verde' => 'Atlantic/Cape_Verde',
'Australia/Adelaide' => 'Australia/Adelaide',
'Australia/Darwin' => 'Australia/Darwin',
'Australia/Brisbane' => 'Australia/Brisbane',
'Australia/Canberra' => 'Australia/Canberra',
'Australia/Sydney' => 'Australia/Sydney',
'Australia/Hobart' => 'Australia/Hobart',
'Australia/Melbourne' => 'Australia/Melbourne',
'Canada/Atlantic' => 'Canada/Atlantic',
'Europe/Helsinki' => 'Europe/Helsinki',
'Europe/London' => 'Europe/London',
'Europe/Dublin' => 'Europe/Dublin',
'Europe/Lisbon' => 'Europe/Lisbon',
'Europe/Belgrade' => 'Europe/Belgrade',
'Europe/Berlin' => 'Europe/Berlin',
'Europe/Bratislava' => 'Europe/Bratislava',
'Europe/Brussels' => 'Europe/Brussels',
'Europe/Budapest' => 'Europe/Budapest',
'Europe/Copenhagen' => 'Europe/Copenhagen',
'Europe/Ljubljana' => 'Europe/Ljubljana',
'Europe/Madrid' => 'Europe/Madrid',
'Europe/Paris' => 'Europe/Paris',
'Europe/Prague' => 'Europe/Prague', 
'Europe/Sarajevo' => 'Europe/Sarajevo',
'Europe/Skopje' => 'Europe/Skopje',
'Europe/Stockholm' => 'Europe/Stockholm',
'Europe/Vienna' => 'Europe/Vienna',
'Europe/Warsaw' => 'Europe/Warsaw',
'Europe/Zagreb' => 'Europe/Zagreb',
'Europe/Athens' => 'Europe/Athens',
'Europe/Bucharest' => 'Europe/Bucharest',
'Europe/Riga' => 'Europe/Riga',
'Europe/Sofia' => 'Europe/Sofia',
'Europe/Tallinn' => 'Europe/Tallinn',
'Europe/Vilnius' => 'Europe/Vilnius',
'Europe/Minsk' => 'Europe/Minsk',
'Europe/Istanbul' => 'Europe/Istanbul',
'Europe/Moscow' => 'Europe/Moscow',
'Pacific/Port_Moresby' => 'Pacific/Port_Moresby',
'Pacific/Fiji' => 'Pacific/Fiji',
'Pacific/Kwajalein' => 'Pacific/Kwajalein',
'Pacific/Midway' => 'Pacific/Midway',
'Pacific/Samoa' => 'Pacific/Samoa',
'Pacific/Honolulu' => 'Pacific/Honolulu',
'Pacific/Auckland' => 'Pacific/Auckland',
'Pacific/Tongatapu' => 'Pacific/Tongatapu',
'Pacific/Guam' => 'Pacific/Guam',
			);

			$data['module']     = "website";
			$data['page']       = "setting/form";   
	        echo Modules::run('template/layout', $data); 
		} 
	} 


    /*
    |____________________________________________________________________
    |  
    | OFFER 
    |____________________________________________________________________ 
    |
    */  
	public function offer()
	{
        $this->permission->module('website','update')->redirect();
		$data['title'] = display('offer');
		#-------------------------------#
		$this->form_validation->set_rules('title',display('title'),'required|max_length[50]');
		$this->form_validation->set_rules('position', display('position') ,'required|max_length[11]');
		#-------------------------------#
		//image upload
		$image = $this->fileupload->do_upload(
			'application/modules/website/assets/images/offer/',
			'image'
		);
		// if image is uploaded then resize the image
		if ($image !== false && $image != null) {
			$this->fileupload->do_resize($image, 640, 380);
		}
		//if image is not uploaded
		if ($image === false ) {
			$this->session->set_flashdata('exception',display('invalid_logo'));
		}
		#-------------------------------#

		$data['offer'] = (object)$postData = [
			'title'    => $this->input->post('title'),
			'position' => $this->input->post('position'),
			'image'    => (!empty($image)?$image:$this->input->post('old_image')),
		]; 
		#-------------------------------#
		if ($this->form_validation->run() && (!empty($postData['image']))) {

			if ($this->website_model->create_offer($postData)) {
				#set success message
				$this->session->set_flashdata('message',display('save_successfully'));
			} else {
				#set exception message
				$this->session->set_flashdata('exception',display('please_try_again'));
			}
 
			redirect('website/setting/offer');

		} else {  
			$data['offers'] = $this->website_model->read_offer(); 
			$data['module']     = "website";
			$data['page']       = "setting/offer";   
	        echo Modules::run('template/layout', $data); 
		} 
	} 

	public function delete_offer($id = null) 
	{ 
        $this->permission->method('website','delete')->redirect();

		if ($this->website_model->delete_offer($id)) { 
			#set success message
			$this->session->set_flashdata('message',display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception',display('please_try_again'));
		}
		redirect('website/setting/offer');
	}


}
