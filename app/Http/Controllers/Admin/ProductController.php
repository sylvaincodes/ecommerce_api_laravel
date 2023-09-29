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
        $variations_attributes = $this->ProductRepository->getProductVariationsAttributs();
        $variations_temp=[];
        foreach ($variations_attributes as $key => $v_a) {
            foreach ($variations_attributes as $key_2 => $v_a_2) {

                $i=0;
                if ($v_a_2->product_variation_id ==$v_a->product_variation_id ) {
                    
                    if ($v_a_2->slug=="color") {
                        $variations_temp[$v_a->product_id]["variation"][$i]['price'] =  $v_a_2->price;
                        $variations_temp[$v_a->product_id]["variation"][$i]['price_discount'] =  $v_a_2->price_discount;
                        $variations_temp[$v_a->product_id]["variation"][$i]['stock_status'] =  $v_a_2->stock_status;
                        $variations_temp[$v_a->product_id]["variation"][$i]['color'] =  $v_a_2->value;
                        $variations_temp[$v_a->product_id]["variation"][$i]['product_id'] =  $v_a_2->product_id;
                    }else{
                        $variations_temp[$v_a->product_id]["variation"][$i]['size'][$key_2]["name"] =  $v_a_2->value;
                    }
                }

                $i++;
            }
        }
        
        $products_temp=[];
        
        foreach ($products as $key => $product) {
            $products_temp[$key] = $product;
            foreach ($variations_temp as $key_3 => $variation_temp) {
                
                foreach ($variation_temp['variation'] as $key_4 => $variation_temp_) {
                    
                    if ($variation_temp_['product_id'] ==$product->id ) {
                        
                        $products_temp[$key]->variation[$key_4] = $variation_temp_;
                    }
                    
                };
            }
        }
        
        $response = ['data' => $products_temp, 'status' => 201];
        return response()->json($response, 200);
    }
    
    public function show($id)
    {
        return response()->json(Product::find($id), 201);
    }
    
    public function store(Request $request)
    {
        
        if(!empty($request->images)){
                foreach ($request->images as $key => $image) {
                    $image->move(public_path('uploads'),$image->extension());
                }
        }else{
            $request->merge([
                'images'=> ""
            ]);
        }
        
        if(!empty($request->url)){
            
            $string = "";

            if(is_array($request->url)){

                foreach ($request->url as $key => $row) {
                    
                    $string .=$row['url'].";";
                }
                $request->merge([
                    'url'=> $string
                ]);
            }else{
                $string = $request->url;
            }
            
        }else
        {
            
            $request->merge([
                'url'=> ""
            ]);
        }
        
        $product = Product::create($request->all());
        $product_ = $this->ProductRepository->oneProduct($product->id);
        $response = ['product' => $product_, 'status' => 201];
        return response()->json($response, 201);
    }
    
    public function update(Request $request, $id)
    {
        
        $request->merge([
            'images'=> ""
        ]);
        
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
