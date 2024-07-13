<?php
require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/functions.php';

load_env();

define('PEP_VERSION','1.0');
define('PEP_PATH',dirname(__FILE__));
const COMMON_DIR = PEP_PATH . '/app/common';
include 'public/lib/base.cls.php';
base::run();