<?php
$handler_path = getenv('handler_path');
$handler_function = getenv('handler_function');
require_once($handler_path);
$lambda_event_json = file_get_contents('php://input');
$lambda_event = json_decode($lambda_event_json, TRUE);
if(function_exists($handler_function))
{
  $handler_function($lambda_event);
}
