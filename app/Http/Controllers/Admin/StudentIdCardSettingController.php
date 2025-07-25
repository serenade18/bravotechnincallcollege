<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Flasher\Laravel\Facade\Flasher;
use App\Models\IdCardSetting;
use Illuminate\Http\Request;
use App\Traits\FileUploader;

class StudentIdCardSettingController extends Controller
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
        $this->title = trans_choice('module_id_card_setting', 1);
        $this->route = 'admin.id-card-setting';
        $this->view = 'admin.id-card-setting';
        $this->path = 'card-setting';
        $this->access = 'id-card-setting';


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

        $data['row'] = IdCardSetting::where('slug', 'student-card')->first();

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
            'title' => 'required',
            'subtitle' => 'required',
            'logo' => 'nullable|image',
            'background' => 'nullable|image',
            'validity' => 'required|numeric',
        ]);


        // Student Photo
        if($request->student_photo == null || $request->student_photo != 1){
            $student_photo = 0;
        }
        else {
            $student_photo = 1;
        }

        // Signature
        if($request->signature == null || $request->signature != 1){
            $signature = 0;
        }
        else {
            $signature = 1;
        }

        // Barcode
        if($request->barcode == null || $request->barcode != 1){
            $barcode = 0;
        }
        else {
            $barcode = 1;
        }


        $id = $request->id;

        if($id){
            $setting = IdCardSetting::find($id);
            $setting->slug = $request->slug;
            $setting->title = $request->title;
            $setting->subtitle = $request->subtitle;
            $setting->website_url = $request->website_url;
            $setting->validity = $request->validity;
            $setting->address = $request->address;
            $setting->prefix = $request->prefix;
            $setting->student_photo = $student_photo;
            $setting->signature = $signature;
            $setting->barcode = $barcode;
            $setting->logo = $this->updateMultiMedia($request, 'logo', $this->path, $setting, 'logo');
            $setting->background = $this->updateMultiMedia($request, 'background', $this->path, $setting, 'background');
            $setting->save();
        }
        else{
            $setting = new IdCardSetting();
            $setting->slug = $request->slug;
            $setting->title = $request->title;
            $setting->subtitle = $request->subtitle;
            $setting->website_url = $request->website_url;
            $setting->validity = $request->validity;
            $setting->address = $request->address;
            $setting->prefix = $request->prefix;
            $setting->student_photo = $student_photo;
            $setting->signature = $signature;
            $setting->barcode = $barcode;
            $setting->logo = $this->updateMultiMedia($request, 'logo', $this->path, $setting, 'logo');
            $setting->background = $this->updateMultiMedia($request, 'background', $this->path, $setting, 'background');
            $setting->save();
        }


        Flasher::addSuccess(__('msg_updated_successfully'), __('msg_success'));

        return redirect()->back();
    }
}
