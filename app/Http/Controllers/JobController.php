<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\PartNumber;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class JobController extends Controller
{

    public function update($id){
        $partNumberDatas = PartNumber::all();
        $customerDatas = Customer::all();
        return view('add-job',compact('partNumberDatas', 'customerDatas'));
        return view('welcome');
    }

    public function pnStore(Request $request){
        
        $validator = validator::make($request->all(),[
            'part_number' => 'required|string|unique:part_numbers',
            'description' => 'nullable|string',
        ]);

        if($validator->fails()){
            return response()->json(['error' => $validator->error()], 422);
        }

        $partNumber = new PartNumber();
        $partNumber->part_number = $request->input('part_number');
        $partNumber->description = $request->input('description');
        $partNumber->save();

        // $partNumberDatas = PartNumber::all();
        // $customerDatas = Customer::all();
        return view('welcome');
    }

    public function customerStore(Request $request){
        
        $validator= validator::make($request->all(),[
            'customer' => 'required|string|max:255',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        $customer = new Customer();
        $customer->customer = $request->input('customer');

        $customer->save();

        // $partNumberDatas = PartNumber::all();
        // $customerDatas = Customer::all();
        return view('welcome');
    }
    public function store(Request $request){
        //Log::info('Store method called.');
        
    }
    public function create(){

        $partNumberDatas = PartNumber::all();
        $customerDatas = Customer::all();
        return view('add-job',compact('partNumberDatas', 'customerDatas'));
    }

    public function view(){
        $viewCustomers = Customer::orderBy('id', 'desc')->get();
        $viewPartNumbers = PartNumber::orderBy('id', 'desc')->get();
        return view('welcome', compact('viewCustomers', 'viewPartNumbers'));
    }
 
}
