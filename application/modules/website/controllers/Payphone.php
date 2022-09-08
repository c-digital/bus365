<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Payphone extends MX_Controller {

    public $header = array();
    public $token = "";

    
    public function __construct()
    {
        parent::__construct();

        $this->token ="001JUnSsiqUpAqP5bkAvF9CsYw0ZzUoa_Zh2Q36ZMQlmFZx2Nt6o_hHBCa5CSq6rDS1D_5sIA6hpP8hKaqrfMQx9lCrzoTBHGMvCnZXy6vF67VIxLlh3NdQujj9H_BnAfCkfPcLU5N-9BxazO6k65bKG5z9Ic_GbQuPSt2gSunv6W7hUT_ZvHEvzQr7db5ZPV0D1GZZnug6iL3Cy7-uUmMKtd3I3pd0D0vRBfH3aDLeEPkIBkxDy60nsCwftDrHtNg1haE9j8AMUxsscf6XZmRQxxDreIL83jR_zfJ55iwuXaXxwiw1G4zzVps1nrVB4SYxNCQ";
        $this->header = array(
            "Content-Type: application/json",
            "Authorization: Bearer $this->token",
            'Accept: application/json'
        );
    }




    public function curl_post_request($clause)
    {

        $curl = curl_init();

        curl_setopt($curl, CURLOPT_URL, $clause->url);

        curl_setopt($curl,CURLOPT_POSTFIELDS, $clause->postdata);

        curl_setopt( $curl, CURLOPT_HTTPHEADER, $this->header);

        // curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        
         curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
		  //  curl_setopt($curl, CURLOPT_HEADER, 1);

        //Set the user agent
        // $agent = 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)';
        // curl_setopt($curl, CURLOPT_USERAGENT, $agent);


        $output = curl_exec($curl);

        curl_close($curl);

        if ($output === FALSE) {

            $result = json_encode(['error' => 'An error has occurred: ' . curl_error($curl) . PHP_EOL]);

        } else {

            $result = $output;
        }

        return $result;

    }

    public function return_url(){
echo "hello world";
    }

//     public function paidpayphone()
//     {

//         $post_data = array(
//             "Amount" => 10,
//             "AmountWithoutTax" => 100,
//             "AmountWithTax" => 100,
//             "Tax" => 100,
//             "Currency" => 'USD',
//             "clientTransactionId" => "1212",
//             "responseURL" => "http://softest8.bdtask.com/bus_demo_v5/website/Payphone/return_url",
//             "Service" => 1,
//             'Tip' => 2,
//         );

//         $clause = (object) array(
//             'url' => "https://pay.payphonetodoesposible.com/api/button/Prepare",
//             'postdata' => $post_data
//         );

//         $droplet = $this->curl_post_request($clause);
//         $result = json_decode($droplet);
//         echo '<pre>';
//  print_r($result);

//     }
    
    public function paidpayphone()
    {

        $post_data = array(
            "amount" => 200,
            "amountWithoutTax" => 200,
            "amountWithTax" => 300,
            "tax"=> 100,
            "currency" => 'USD',
            "clientTransactionId" => "1454545212",
            "responseUrl" => urlencode("http://softest8.bdtask.com/bus_demo_v5/website/Payphone/return_url")
        );
        

 $data = json_encode($post_data);
         $ch = curl_init();
        
        curl_setopt($ch, CURLOPT_URL, "https://pay.payphonetodoesposible.com/api/button/Prepare");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_POST, 1);
        $headers = array();
        $headers[] = "Content-Type: application/json";
        $headers[] = "Accept: application/json";
        $headers[] = "Authorization: Bearer 001JUnSsiqUpAqP5bkAvF9CsYw0ZzUoa_Zh2Q36ZMQlmFZx2Nt6o_hHBCa5CSq6rDS1D_5sIA6hpP8hKaqrfMQx9lCrzoTBHGMvCnZXy6vF67VIxLlh3NdQujj9H_BnAfCkfPcLU5N-9BxazO6k65bKG5z9Ic_GbQuPSt2gSunv6W7hUT_ZvHEvzQr7db5ZPV0D1GZZnug6iL3Cy7-uUmMKtd3I3pd0D0vRBfH3aDLeEPkIBkxDy60nsCwftDrHtNg1haE9j8AMUxsscf6XZmRQxxDreIL83jR_zfJ55iwuXaXxwiw1G4zzVps1nrVB4SYxNCQ";
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        
        $result = curl_exec($ch);
        if ($result === FALSE) {
            echo 'Error:' . curl_error($ch);
        }
        curl_close ($ch);
        
         echo '<pre>';
          print_r($result);

    }
    
}
