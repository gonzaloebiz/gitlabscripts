<?php
define("TOKEN", "xxxxxxxxxxxxxxxxxxxxxxxx"); // The secret token to add as a GitHub or GitLab secret, or otherwise as https://www.example.com/?token=secret-token
define("LOGFILE", "deploy.log"); // The name of the file you want to log to.
define("DATADIR","./myrepostoupdate/");
require_once("deployer.php");
