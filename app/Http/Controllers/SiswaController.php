<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Siswa;
use Illuminate\Support\Facades\DB;
class SiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
       
        if($request->isMethod('post')){
            $no = $request->input('no');
            $data = DB::table('siswas')->selectRaw('nama, kota, kab, jk, nilai, case when nilai >= '.$no.' then "lolos" else "gagal" end as keterangan')->get();
            
            $data2= DB::table('siswas')->selectRaw('nilai, count(nilai) as jumlah_siswa')->groupBy('nilai')->orderBy ('nilai','asc')->get();
            
        
            $data3 = DB::table('siswas')->selectRaw('nama, kota, kab, jk, nilai')->get();
            $data4 = DB::table('siswas')->selectRaw('sum(case when nilai >= '.$no.' then 1 else 0 end ) as lolos, sum(case when nilai <= '.$no.' then 1 else 0 end ) as gagal')->get();
        }else{
            $data = DB::table('siswas')->selectRaw('nama, kota, kab, jk, nilai, case when nilai >= 70 then "lolos" else "gagal" end as keterangan')->get();
        
            $data2= DB::table('siswas')->selectRaw('nilai, count(nilai) as jumlah_siswa')->groupBy('nilai')->orderBy ('nilai','asc')->get();
            
        
            $data3 = DB::table('siswas')->selectRaw('nama, kota, kab, jk, nilai')->get();
            $data4 = DB::table('siswas')->selectRaw('sum(case when nilai >= 70 then 1 else 0 end ) as lolos, sum(case when nilai <= 70 then 1 else 0 end ) as gagal')->get();  
        }
        // dd($data);die();
        return view('siswa',[
            'data' => $data,
            'data2' => $data2,
            'data3' => $data3,
            'data4' => $data4
        ]);
       
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('test.create');   
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $this->validate($request,[
           'nama' => 'required',
           'nilai' => 'required',
           'kota' => 'required',
           'kab' => 'required',
           'jk' => 'required',
           
       ]);
       Siswa::create($request->all());
    

        return redirect()->route('siswa')
                        ->with('success','Post created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // return view('siswa.show',compact('siswa'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
