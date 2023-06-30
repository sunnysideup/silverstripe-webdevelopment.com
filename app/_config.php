<?php

use SilverStripe\Control\Director;
use SilverStripe\Security\Member;
use SilverStripe\Security\PasswordValidator;

// remove PasswordValidator for SilverStripe 5.0
$validator = PasswordValidator::create();
// Settings are registered via Injector configuration - see passwords.yml in framework
Member::set_password_validator($validator);

if (Director::isLive()) {
    Director::forceSSL();
}
