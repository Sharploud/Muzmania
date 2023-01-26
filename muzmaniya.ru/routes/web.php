<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\Http\Controllers\MainController;
Route::get('/', 'MainController@home');
Route::get('/products', 'MainController@products');
Route::get('/products/studio_monitors', 'MainController@studio_monitors');
Route::get('/products/headphones', 'MainController@headphones');
Route::get('/products/midi_keyboards', 'MainController@midi_keyboards');
Route::get('/products/guitars', 'MainController@guitars');
Route::get('/contact', 'MainController@contact');
Route::get('/cart' , function (){
    $products = DB::select("SELECT * FROM products ");
    $carts = DB::select("SELECT * FROM carts");
    $cart_product = DB::select("SELECT * FROM cart_products");
    $orders_product = DB::select("SELECT * FROM orders_products");
    $status = DB::select("SELECT * FROM statuses");
    $orders = DB::select("SELECT * FROM orders");

    return view('pages.cart')->with('products',$products)->with('carts', $carts)->with('cart_products', $cart_product)->with('orders_products', $orders_product)->with('statuses', $status)->with('orders', $orders);
} );
Route::post('/cart/addCart/{id}', 'MainController@addCart');
Route::post('/cart/deleteCart/{id}', 'MainController@deleteCart');
Route::get('/product/{id}', 'MainController@product_page' );
Route::get('/user', 'MainController@getUser');
Route::post('/user/auth' , [MainController::class, 'loginUser']);
Route::post('/user/reg' , [MainController::class, 'registrationUser'] );
Route::post('/user/exit' , [MainController::class, 'exitUser']);
Route::get('/pay', 'MainController@pay');
Route::fallback(function (){return view('pages.home');});
// Route::get('/products', 'MainController@studio_monitors');
/*Route::get('/', function () {
    return view('welcome');
});*/

/*Route::get('/', function (){
        return 'Hello, world';
});*/
//подключение основной страницы

/*
Route::get('/', function (){
    return view('home');
});
//подключение страницы продуктов
Route::get('/products', function(){
    return view('products');
});
Route::get('/products/studio-monitors', function(){
    return view('studio-monitors');
});

Route::get('/tests', function(){
    return view('tests');
})->name('tests');
//отображния отдельных страниц(динамические ссылки)
/*Route::get('/post/{id}', function ($id) {
    return "Post $id";
});
Route::get('/post/{id}', function ($id) {
    return "Post $id";
});
*/
