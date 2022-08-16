<?php

namespace App\Http\Controllers\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    protected $redirectTo = '/home';

    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    /**
     * This functions use for validate the user information and create token for that user.
     * @return \Illuminate\Http\Response
     * Version : 1.0.0
     */
    public function login(Request $request)
    {
        $this->validateLogin($request);

        if ($this->attemptLogin($request)) {
            $user = Auth::user();
            $success['token'] = $user->createToken('inventory')->accessToken;
            $success['user'] = $user;
            return response()->json($success, 200);
        }

        return $this->sendFailedLoginResponse($request);
    }

    /**
     * This functions provide for logout the users and revoke token.
     * @return \Illuminate\Http\Response
     * Version : 1.0.0
    */
    public function logout()
    {
        $user = Auth::user();
        $user->token()->revoke();
        $user->token()->delete();

        $response =[
            'success' => true,
            'message' => 'You have been successfully logged out.',
            "status" => 200
        ];

        return response($response, 200);
    }
}
