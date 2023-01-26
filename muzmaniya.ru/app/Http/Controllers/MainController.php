<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use MongoDB\Driver\Session;

class MainController extends Controller
{
    public function home(){
        $products = DB::select("SELECT * FROM products");
        $list_product = DB::select("SELECT * FROM products ORDER BY RAND() LIMIT 8");
        return view('pages.home')->with('products',$products)->with('list_product',$list_product);
    }
    public function products(){
        $products = DB::select("SELECT * FROM products");

        return view('pages.products')->with('products',$products);
    }
    public function pay(){
        return view('pages.pay_form');
    }
    public function studio_monitors(){
        $products = DB::select("SELECT * FROM products");
        return view('pages.studio_monitors')->with('products',$products);
    }
    public function headphones(){
        $products = DB::select("SELECT * FROM products");
        return view('pages.headphones')->with('products',$products);
    }
    public function midi_keyboards(){
        $products = DB::select("SELECT * FROM products");
        return view('pages.midi_keyboard')->with('products',$products);
    }
    public function guitars(){
        $products = DB::select("SELECT * FROM products");
        return view('pages.guitars')->with('products',$products);
    }
    public function contact(){
        return view('pages.contact');
    }

    public function product_page($id){
        $products = DB::select("SELECT * FROM products ");

        $product = DB::select("SELECT * FROM products WHERE products.id =$id");
        return view('pages.product_page')->with('products',$products)->with('product', $product);
    }
    public function addCart($id) {
        $products = DB::select("SELECT * FROM products ");
        $carts = DB::select("SELECT * FROM carts");
        $cart_product = DB::select("SELECT * FROM cart_products");
        $orders_product = DB::select("SELECT * FROM orders_products");
        $status = DB::select("SELECT * FROM statuses");
        $orders = DB::select("SELECT * FROM orders");
        DB::table('cart_products')->insert([
           'id_cart' => '1',
            'id_product' => $id
        ]);
        return redirect('/cart');
    }
    public function deleteCart($id){
        $products = DB::select("SELECT * FROM products ");
        $carts = DB::select("SELECT * FROM carts");
        $cart_product = DB::select("SELECT * FROM cart_products WHERE cart_products.id_product=$id");
        $orders_product = DB::select("SELECT * FROM orders_products");
        $status = DB::select("SELECT * FROM statuses");
        $orders = DB::select("SELECT * FROM orders");


        DB::table('cart_products')->where('id_product', '=', $cart_product[0]->id_product)->delete();
        return redirect('/cart');

    }
    public function getUser(){
        $id = session('id');
        $products = DB::select("SELECT * FROM products ");
        $user = DB::select("SELECT * FROM users WHERE users.id =$id");
        $carts_user = DB::select("SELECT * FROM carts");
        $cart_product = DB::select("SELECT * FROM cart_products");
        $orders_product = DB::select("SELECT * FROM orders_products");
        $status = DB::select("SELECT * FROM statuses");
        $orders = DB::select("SELECT * FROM orders");
        return view('pages.user')->with('products' , $products)->with('user' , $user)->with('carts_user' ,$carts_user)->with('cart_products', $cart_product)->with('orders_products', $orders_product)->with('statuses', $status)->with('orders', $orders);
    }
    function loginUser(Request $request){
                $data = $request->input();

        $users = DB::select("SELECT * FROM users");

        foreach ($users as $user ){
            if ($user->phone === $data['phone'] && password_verify($data['password'],$user->password) === true ){
                $request->session()->put('id', $user->id);
                $request->session()->put('phone', $user->phone);
                $request->session()->put('password', password_hash($data['password'], PASSWORD_BCRYPT));
                return redirect('/user');
            }


        }
    }
   function registrationUser(Request $request): \Illuminate\Http\RedirectResponse
    {
        $data = $request->input();
      $users = DB::select("SELECT * FROM users ");
      $hesh_password = password_hash($data['password_reg'], PASSWORD_BCRYPT);
        $flag_user=false;
       /* foreach ($users_reg as $users ){*/
            if ($hesh_password !== null && $data['password_reg'] !== null) $flag_user=true;

               if ($flag_user == true ){
                DB::table('users')->where('phone', '!=', $data['phone_reg'])->where('password', '!=', $hesh_password)->insert([
                    'phone' => $data['phone_reg'],
                    'password' => $hesh_password
                ]);
                return redirect('/products');
               /* DB::table('users')->where('email', '!=', $data['mail'])->where('password', '!=', $data['password']);*/
            }
    else return redirect()->back();
    }
    function exitUser(Request $request){
        $request->session()->flush();
        return redirect('/');
    }

/*    public function studio_monitors(){
        return view('studio_monitors');
    }*/
}
