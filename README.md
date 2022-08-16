# Inventory System Laravel + Vue/React - Describe The Process Step by Step
Task 1. Backend:  Rest API Login ,Registration, Product category, Product with quantity

### Prerequisites
* Apache
* PHP
* Composer
* [Laravel new app created](https://github.com/cantellir/laravel-new-app)

### Initial notes
The project in this repo contains all the steps finalized

### Step 1 - Install fresh new laravel project.
```
composer create-project laravel/laravel inventory

```

### Step 2 - Add Laravel Passport to composer.json
In the project dir run
```
composer require laravel/passport
```

### Step 3 - Run migrations
```
php artisan migrate
```

### Step 4 - Install Laravel Passport
```
php artisan passport:install
```

### Step 5 - Add HasApiTokens at app/Models/User.php
```php
<?php

namespace App;

use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;   
}
```

### Step 6 - Add Passport Routes to auth provider
In the "app/Providers/AuthServiceProvider.php" add passport routes to boot method
```php
<?php

namespace App\Providers;

use Laravel\Passport\Passport;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];


    public function boot()
    {
        $this->registerPolicies();

        Passport::routes();
    }
}
```

### Step 7 - Alter auth api driver to "passport"
In the "config/auth.php" adjust the driver for api auth
```
'guards' => [
    'web' => [
        'driver' => 'session',
        'provider' => 'users',
    ],

    'api' => [
        'driver' => 'passport',
        'provider' => 'users',
    ],
],
```


### Step 8 - After doing rest all configurations You can test via postman.
https://prnt.sc/fj_uG_gXkxiT


https://prnt.sc/gIBwiCKwvfz7


### Step 9 :  Run project Step 
 1. DB connection
 2. Composer update
 3. php artisan serve
 4. Test Via postman
