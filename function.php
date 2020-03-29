<?php 


function sendtoclient($fname,$mobile){
 $curl = curl_init();
		$request = json_encode( array( "from"=> "RETEA","to" =>"88".$mobile, "text"=>$fname ) );
			curl_setopt_array($curl, array(
			  CURLOPT_URL => "http://107.20.199.106/restapi/sms/1/text/single",
			  CURLOPT_RETURNTRANSFER => true,
			  CURLOPT_ENCODING => "",
			  CURLOPT_MAXREDIRS => 10,
			  CURLOPT_TIMEOUT => 30,
			  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
			  CURLOPT_CUSTOMREQUEST => "POST",
			  CURLOPT_POSTFIELDS => $request,
			  CURLOPT_HTTPHEADER => array(
				    "authorization: Basic c2F0cmF2ZWxzOmFzZGYxMjM0",
				    "content-type: application/json",
				  ),
			));
			$response = curl_exec($curl);
			$json = json_decode($response, true);
			$jsonr = $json['messages'];
			
			$err = curl_error($curl);
			if ($err) {
			  echo "cURL Error #:" . $err;
			} else {
				
			}
			curl_close($curl);   
    
}