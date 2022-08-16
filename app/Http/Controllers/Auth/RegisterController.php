<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    protected $redirectTo = '/home';

    public function __construct()
    {
        $this->middleware('guest');
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }

    /**
     * This functions use for registrations user
     * @return \Illuminate\Http\Response
     * Version : 1.0.0
     */
    public function register(Request $request)
    {
        $validator=$this->validator($request->all());
        if ($validator->fails()) {

            $message = $validator->errors()->first();
            $errors=$validator->errors();
            $code='200';

            $response = array(
                'success' => false,
                'message' => $message,
                "errors" => $errors
            );

            return response()->json($response, $code);
        }else{
            $user = User::create([
                'name' => $request['name'],
                'email' => $request['email'],
                'password' => bcrypt($request['password']),
            ]);

            $this->guard()->login($user);
            $success['token'] = $user->createToken('inventory_client')->accessToken;
            $success['user'] = $user;
            return response()->json($success, 201);
        }
    }
}
