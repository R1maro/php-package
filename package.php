<?php

require 'vendor/autoload.php';

use Illuminate\Database\Capsule\Manager as Capsule;

$capsule = new Capsule;

$capsule->addConnection([
    'driver' => 'mysql',
    'host' => 'localhost',
    'database' => 'cargallery',
    'username' => 'root',
    'password' => '',
    'charset' => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix' => '',
]);

// Set the event dispatcher used by Eloquent models... (optional)
use Illuminate\Events\Dispatcher;
use Illuminate\Container\Container;
$capsule->setEventDispatcher(new Dispatcher(new Container));

// Make this Capsule instance available globally via static methods... (optional)
$capsule->setAsGlobal();

// Setup the Eloquent ORM... (optional; unless you've used setEventDispatcher())
$capsule->bootEloquent();


//illuminate config end


//faker config


$faker = Faker\Factory::create();

//end

$publishers = $capsule::table('publishers');

//for ($i = 1; $i < 100; $i++) {
//
//    $capsule::table('publishers')->insert([
//       'publisher_name' => $faker->name,
//        'profile'=> $faker->userName,
//        'added_on'=> $faker->date.time()
//    ]);
//}

