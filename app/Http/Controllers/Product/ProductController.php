<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Http\Resources\Product as ProductResource;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{

    /**
     * Display all product listing of the resource.
     */
    public function index()
    {

        $products=Product::orderBy('id', 'desc')
            ->with('category')
            ->paginate(10);

        return $this->responseSuccess($products, 'Product List Fetch Successfully !');
    }

    /**
     * @OA\GET(
     *     path="/api/products/view/all",
     *     tags={"Products"},
     *     summary="All Products - Publicly Accessible",
     *     description="All Products - Publicly Accessible",
     */

    public function indexAll(Request $request): JsonResponse
    {
        try {
            $perPage = isset($perPage) ? intval($perPage) : 12;
            $product= Product::orderBy('id', 'desc')
                ->with('category')
                ->paginate($perPage);
            return $this->responseSuccess($product, 'Product List Fetched Successfully !');
        } catch (\Exception $e) {
            return $this->responseError(null, $e->getMessage());
        }
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     */
    public function store(Request $request)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'category_id' => 'required',
            'name' => 'required',
            'detail' => 'required',
            'price' => 'required',
            'quantity' => 'required',
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $product = Product::create($input);

        return $this->responseSuccess(new ProductResource($product), 'Product List Fetched Successfully !');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     */
    public function show($id)
    {
        $product = Product::find($id);

        if (is_null($product)) {
            return $this->sendError('Product not found.');
        }

        return $this->responseSuccess(new ProductResource($product), 'Product Retrieved Successfully');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'category_id' => 'required',
            'name' => 'required',
            'detail' => 'required',
            'price' => 'required',
            'quantity' => 'required',
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }
        $product = Product::find($id);
        $product->name = $input['name'];
        $product->detail = $input['detail'];
        $product->category_id = $input['category_id'];
        $product->save();

        return $this->responseSuccess(new ProductResource($product), 'Product Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        $product->delete();
        return $this->responseSuccess([], 'Product Deleted Successfully.');
    }


    /**
     * This functions use for sending success response
     */
    public function responseSuccess($data, $message = "Successful", $status_code = JsonResponse::HTTP_OK): JsonResponse
    {
        return response()->json([
            'status'  => true,
            'message' => $message,
            'errors'  => null,
            'data'    => $data,
        ], $status_code);
    }

    /**
     * This functions use for sending error response
     */
    public function sendError($error, $errorMessages = [], $code = 404)
    {
        $response = [
            'success' => false,
            'message' => $error,
        ];

        if(!empty($errorMessages)){
            $response['data'] = $errorMessages;
        }

        return response()->json($response, $code);
    }

}
