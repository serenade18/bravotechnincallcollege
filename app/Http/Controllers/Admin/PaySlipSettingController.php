<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Flasher\Laravel\Facade\Flasher;
use Illuminate\Http\Request;
use App\Traits\FileUploader;
use App\Models\PrintSetting;

class PaySlipSettingController extends Controller
{
    use FileUploader;

    protected $title, $route, $view, $path, $access;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // Module Data
        $this->title = trans_choice('module_pay_slip_setting', 1);
        $this->route = 'admin.pay-slip-setting';
        $this->view = 'admin.pay-slip-setting';
        $this->path = 'print-setting';
        $this->access = 'pay-slip-setting';


        $this->middleware('permission:'.$this->access.'-view');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data['title'] = $this->title;
        $data['route'] = $this->route;
        $data['view'] = $this->view;
        $data['path'] = $this->path;
        $data['access'] = $this->access;

        $data['row'] = PrintSetting::where('slug', 'pay-slip')->first();

        return view($this->view.'.index', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Field Validation
        $request->validate([
            'logo_left' => 'nullable|image',
            'logo_right' => 'nullable|image',
            'background' => 'nullable|image',
        ]);


        $id = $request->id;

        // -1 means no data row found
        if($id == -1){
            // Insert Data
            $printSetting = new PrintSetting;

            $printSetting->slug = $request->slug;
            $printSetting->title = $request->title;
            $printSetting->header_left = $request->header_left;
            $printSetting->header_center = $request->header_center;
            $printSetting->header_right = $request->header_right;
            $printSetting->body = $request->body;
            $printSetting->footer_left = $request->footer_left;
            $printSetting->footer_center = $request->footer_center;
            $printSetting->footer_right = $request->footer_right;
            $printSetting->logo_left = $this->uploadImage($request, 'logo_left', $this->path, Null, 200);
            $printSetting->logo_right = $this->uploadImage($request, 'logo_right', $this->path, Null, 200);
            $printSetting->background = $this->uploadImage($request, 'background', $this->path, 800, Null);
            $printSetting->width = $request->width;
            $printSetting->prefix = $request->prefix;
            $printSetting->save();
        }
        else{
            // Update Data
            $printSetting = PrintSetting::find($id);

            $printSetting->slug = $request->slug;
            $printSetting->title = $request->title;
            $printSetting->header_left = $request->header_left;
            $printSetting->header_center = $request->header_center;
            $printSetting->header_right = $request->header_right;
            $printSetting->body = $request->body;
            $printSetting->footer_left = $request->footer_left;
            $printSetting->footer_center = $request->footer_center;
            $printSetting->footer_right = $request->footer_right;
            $printSetting->logo_left = $this->updateImage($request, 'logo_left', $this->path, Null, 200, $printSetting, 'logo_left');
            $printSetting->logo_right = $this->updateImage($request, 'logo_right', $this->path, Null, 200, $printSetting, 'logo_right');
            $printSetting->background = $this->updateImage($request, 'background', $this->path, 800, Null, $printSetting, 'background');
            $printSetting->width = $request->width;
            $printSetting->prefix = $request->prefix;
            $printSetting->save();
        }


        Flasher::addSuccess(__('msg_updated_successfully'), __('msg_success'));

        return redirect()->back();
    }
}
