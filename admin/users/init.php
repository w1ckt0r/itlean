<?php
// Exibe todos os erros PHP (see changelog)
// error_reporting(E_ALL);

// echo "init";

require_once 'classes/class.autoloader.php';
session_start();

$abs_us_root=$_SERVER['DOCUMENT_ROOT'];

$self_path=explode("/", $_SERVER['PHP_SELF']);
$self_path_length=count($self_path);
$file_found=FALSE;

for($i = 1; $i < $self_path_length; $i++){
	array_splice($self_path, $self_path_length-$i, $i);
	$us_url_root=implode("/",$self_path)."/";

	if (file_exists($abs_us_root.$us_url_root.'z_us_root.php')){
		$file_found=TRUE;
		break;
	}else{
		$file_found=FALSE;
	}
}

// echo $us_url_root;
 $us_url_root = $us_url_root."admin/";
// die();

require_once $abs_us_root.$us_url_root.'users/helpers/helpers.php';

// if($_SERVER['REMOTE_ADDR'] == '::1'){

	$host = 'pupill.us';
	$userdb = 'pupill_itlean';
	$db = 'pupill_itlean';
	$pass = 'Wn*Hou0a*oiK5xvELZ';
	// $host = 'pupill.us';
	// $userdb = 'pupill_portalafrac';
	// $db = 'pupill_portalafrac';
	// $pass = 'portalafrac';
	// $linkApi = 'https://api.tlv.ag/api/apptlv/';

// }else{

// 	$host = '10.0.0.5';
// 	$userdb = 'tlvadmin';
// 	$pass = '21pZenfmBAnT48ls';
// 	$db = 'tlvfiles';
// 	$linkApi = 'https://api.tlv.ag/api/apptlv/';
	
// }






// Set config
$GLOBALS['config'] = array(
	'mysql'      => array(
'host'         => $host,
'username'     => $userdb,
'password'     => $pass,
'db'           => $db,
),
'remember'        => array(
  'cookie_name'   => 'CXti5gfxxMjl4qaICq0D',
  'cookie_expiry' => 604800  //One week, feel free to make it longer
),
'session' => array(
  'session_name' => 'Mt63CMu2l9Eghotnt20q',
  'token_name' => 'token',
)
);

//If you changed your UserSpice or UserCake database prefix
//put it here.
$db_table_prefix = "uc_";  //Old database prefix

//adding more ids to this array allows people to access everything, whether offline or not. Use caution.
$master_account = [1];

$currentPage = currentPage();

//Check to see if user has a remember me cookie
if(Cookie::exists(Config::get('remember/cookie_name')) && !Session::exists(Config::get('session/session_name'))){
	$hash = Cookie::get(Config::get('remember/cookie_name'));
	$hashCheck = DB::getInstance()->query("SELECT * FROM users_session WHERE hash = ? AND uagent = ?",array($hash,Session::uagent_no_version()));

	if ($hashCheck->count()) {
		$user = new User($hashCheck->first()->user_id);
		$user->login();

	}
}

//Check to see that user is logged in on a temporary password
$user = new User();

//Check to see that user is verified
if($user->isLoggedIn()){
	if($user->data()->email_verified == 0 && $currentPage != 'verify.php' && $currentPage != 'logout.php' && $currentPage != 'verify_thankyou.php'){
		Redirect::to('users/verify.php');
	}
}
$timezone_string = 'America/Sao_Paulo';
date_default_timezone_set($timezone_string);




