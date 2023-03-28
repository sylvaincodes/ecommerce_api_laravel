<?php

namespace App\Http\Controllers\Admin;

use App\Models\Product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\ProductRepository;

class ProductController extends Controller
{

    public $ProductRepository;

    /**
     * Create a new construct instance.
     *
     * @param  \App\Repositories\ProductRepository  $ProductRepository
     * @return void
     */
    public function __construct(ProductRepository $ProductRepository){
        $this->ProductRepository =  $ProductRepository;
    }


    public function index()
    {
        $products = $this->ProductRepository->getAllProducts();

        $response = ['data' => $products, 'status' => 201];
        return response()->json($response, 200);
    }

    public function show($id)
    {
        return response()->json(Product::find($id), 201);
    }

    public function store(Request $request)
    {

        if($request->images){
                $request->merge([
                    'images'=> ""
                ]);
        }
        
        if($request->url){
            
            $string = "";
            foreach ($request->url as $key => $row) {

                $string .=$row['url'].";";
            }
            $request->merge([
                'url'=> $string
            ]);
        }
    
        $product = Product::create($request->all());
        $product_ = $this->ProductRepository->oneProduct($product->id);
        $response = ['product' => $product_, 'status' => 201];
        return response()->json($response, 201);
    }

    public function update(Request $request, $id)
    {

        if($request->images){
            $request->merge([
                'images'=> ""
            ]);
        }
    
        if($request->url && is_array($request->url)){               
                $string = "";
                foreach ($request->url as $key => $row) {

                    $string .=$row['url'].";";
                }
                $request->merge([
                    'url'=> $string
                ]);
        }

        $product = Product::find($id);
        $product->update($request->all());
        $product_ = $this->ProductRepository->oneProduct($product->id);
        $response = ['product' => $product_, 'status' => 200];
        return response()->json($response, 200);
    }

    public function destroy(Request $request, $id)
    {
        $product = Product::find($id);
        $product->delete();
        $response = ['product' => "", 'status' => 204];
        return response()->json($response, 204);
    }
    
    
    public function search(Request $request)
    {
        $search = $request->search;
        $products = $this->ProductRepository->searchProducts($search);
        return response()->json($products, 200);
    }
    
}
