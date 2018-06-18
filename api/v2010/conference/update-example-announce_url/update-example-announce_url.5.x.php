<?php

// Update the path below to your autoload.php,
// see https://getcomposer.org/doc/01-basic-usage.md
require_once '/path/to/vendor/autoload.php';

use Twilio\Rest\Client;

// Your Account Sid and Auth Token from twilio.com/console
$sid    = "ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
$token  = "your_auth_token";
$twilio = new Client($sid, $token);

$conference = $twilio->conferences("CFbbe46ff1274e283f7e3ac1df0072ab39")
                     ->update(array(
                                  'announceUrl' => "http://www.myapp.com/announce"
                              )
                     );

print($conference->friendlyName);