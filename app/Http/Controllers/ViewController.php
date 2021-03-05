<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Mail;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
class ViewController extends Controller
{
    public function index() {
        $teams = DB::select('select * from teams');
        $abouts = DB::select('select * from abouts');
        $services = DB::select('select * from services');
        $photos = DB::select('select * from galleries');
        return view('home',['teams'=>$teams, 'abouts'=>$abouts,'services'=>$services,'photos'=>$photos]);
     }
     public function contactus() {
        return view('contactus');
     }




      public function service($id) {
        
        $service = DB::table('services')->where('id', $id)->first();
       
        return view('service',['service'=>$service]);

     }


    
      
    public function contact(Request $request) {
       
        $to_email  = DB::table('settings')->where('key', 'site.email')->first()->value;
      
        $data = array(
          'email' => $request->email,
          'name' => 'client'
        );
       
        Mail::send('emails.email-client', $data, function($message) use ($data,$to_email){
            $message->from($data['email']);
            $message->to($to_email);
            $message->subject('via_votre_site');
        });
     return  redirect('/');
    }
        

    

    public function postContact(Request $request)
    { 
        $true=true;
        $this->validate($request, [
            'firstname' => 'required|min:2|string',
            'email' => 'required|email',
            'phone' => 'required|digits:8',
            'message' => 'required'
        ]);
              
        $validator = Validator::make($request->all(), [
            'firstname' => 'required|min:2|string',
            'email' => 'required|email',
            'phone' => 'required|digits:8',
            'message' => 'required'
        ]);

      

        $to_email  = DB::table('settings')->where('key', 'site.email')->first()->value;     
      
        $data = array(
          'name' => $request->firstname ,
          'email' => $request->email,
          'phone' => $request->phone,
          'bodyMessage' => $request->message
        );
       
        Mail::send('emails.mail', $data, function($message) use ($data,$to_email, $validator){
            $message->from($data['email']);
            $message->to($to_email);
            $message->subject($data['name']);
        });
     
        return redirect('/contactus')->with('message','message envoyer avec success');
       

        
    }

}
    
