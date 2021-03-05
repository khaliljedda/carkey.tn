<?php

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



Route::get('/','ViewController@index');

Route::get('/service/{id}','ViewController@service');

Route::get('/contactus','ViewController@contactus');

Route::post('/contact','ViewController@postcontact');

Route::post('/sendmail','ViewController@contact');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


