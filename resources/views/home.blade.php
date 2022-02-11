<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css" rel="stylesheet">
  <link href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="{{asset('la/dist/app.css')}}">
  <title>Document</title>
</head>
<body>
 
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
  <div id="app">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm p-0">
      <a class="navbar-brand mr-0 p-3" href="/">
        Ladmin
      </a>
      
      <ul class="navbar-nav mr-auto">
        <li>
          <button class="border-0 btn btn-link ladmin-sidebar-toggle" type="button">
            <span class="navbar-toggler-icon"></span>
          </button>
        </li>
      </ul>
      
      <ul class="ladmin-navbar-nav ml-auto pr-3">
          <li class="nav-item dropdown">
              
              <a id="navbarDropdown" class="nav-link dropdown-toggle pl-0 ladmin-notification-menu" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                  <i class="fa fa-bell"></i>
                  <span class="badge badge-danger">1</span>
              </a>

              <ul class="dropdown-menu dropdown-menu-right ladmin-top-menu ladmin-notification-menu-component" aria-labelledby="navbarDropdown">
                  <li class="ladmin-top-menu-header text-center">
                    <strong>Notifications</strong>
                  </li>
                  <li class="ladmin-top-menu-body-notification">
                    
                    <div class="list-unstyled ladmin-notification-item">
                      <a href="#" class="media">
                        <div class="media-body ladmin-substr">
                          <small class="text-muted float-right">1 minutes a go</small>
                          <strong class="mt-0 mb-1">Notification Title</strong>
                          <p class="m-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</p>
                        </div>
                      </a>
                      <a href="#" class="media my-4">
                        <img src="https://via.placeholder.com/50" class="mr-3">
                        <div class="media-body ladmin-substr">
                          <small class="text-muted float-right">1 minutes a go</small>
                          <strong class="mt-0 mb-1">Notification Title</strong>
                          <p class="m-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</p>
                        </div>
                      </a>
                      <a href="#" class="media">
                        <img src="https://via.placeholder.com/50" class="mr-3">
                        <div class="media-body ladmin-substr">
                          <small class="text-muted float-right">1 minutes a go</small>
                          <strong class="mt-0 mb-1">Notification Title</strong>
                          <p class="m-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</p>
                        </div>
                      </a>
                      <a href="#" class="media">
                        <img src="https://via.placeholder.com/50" class="mr-3">
                        <div class="media-body ladmin-substr">
                          <small class="text-muted float-right">1 minutes a go</small>
                          <strong class="mt-0 mb-1">Notification Title</strong>
                          <p class="m-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</p>
                        </div>
                      </a>
                      <a href="#" class="media">
                        <div class="media-body ladmin-substr">
                          <small class="text-muted float-right">1 minutes a go</small>
                          <strong class="mt-0 mb-1">Notification Title</strong>
                          <p class="m-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</p>
                        </div>
                      </a>
                      <a href="#" class="media">
                        <img src="https://via.placeholder.com/50" class="mr-3">
                        <div class="media-body ladmin-substr">
                          <small class="text-muted float-right">1 minutes a go</small>
                          <strong class="mt-0 mb-1">Notification Title</strong>
                          <p class="m-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin.</p>
                        </div>
                      </a>
                    </div>

                  </li>
                  <li class="ladmin-top-menu-footer">
                    <a href="#">
                      View All
                    </a>
                  </li>
              </ul>
          </li>
          <li class="nav-item dropdown">
            
            <a id="navbarDropdown" class="nav-link dropdown-toggle pl-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
            {{ Auth::user()->name }}<span class="caret"></span>
            </a>

            <ul class="dropdown-menu dropdown-menu-right ladmin-top-menu" aria-labelledby="navbarDropdown">
                <li class="ladmin-top-menu-body">
                  <ul class="ladmin-top-menu-list">
                    <!-- <li>
                      <a href="#">Profile</a>
                    </li>
                    <li>
                      <a href="#">Withdrawal</a>
                    </li> -->
                    <li>
                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                    </li>
                  </ul>
                </li>
            </ul>
        </li>
      </ul>
    </nav>
    
    <div class="ladmin-container">
      <div class="ladmin-sidebar">
        <strong class="ml-3">Main Menu</strong>

        <ul>
          <li class="active other and other">
            <a href="#"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
          </li>
         
        </ul>

      </div>
      <div class="ladmin-content">
        <div class="ladmin-page-title">
          <div class="container-fluid" style="position: relative;">
            <div class="row">
              <div class="col-lg-6">
                <h4>
                  <a href="" class="btn btn-outline-primary btn-sm mr-1 px-3">&larr;</a>
                  Dashboard Title
                </h4>
              </div>
              <div class="col-lg-6 breadcrumb-container">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <!-- <li class="breadcrumb-item"><a href="#">Library</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Data</li> -->
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="container-fluid">
          <div class="card border-0 shadow-sm">
            <div class="card-body">
              <h1>Siswa Yang sudah Terdaftar</h1>
              <form method="POST" action ="/siswa" >
                @csrf
                
              <select class="form-select form-select-sm" aria-label=".form-select-sm example" name="no">
                <option selected>Open this seledct menu</option>
                <option value="50">50</option>
                <option value="50">50</option>
                <option value="50">50</option>
                <option value="60">60</option>
                <option value="70">70</option>
                <option value="80">80</option>
                <option value="90">90</option>
                
              </select>
              <button type="submit" >Submit</button>
              </form>

            </div>
          </div>
        </div>


        <div class="container-fluid">
          <div class="card border-0 shadow-sm">
            <div class="card-body">
              <h1>Siswa Yang sudah Terdaftar</h1>
              <canvas id="oilChart" width="1px" height="5px"></canvas>

            </div>
          </div>
        </div>
        
        <div class="container-fluid">
          <div class="card border-0 shadow-sm">
            <div class="card-body">
              <h1>Siswa Yang sudah Terdaftar</h1>
              <table class="table myTable " >
                <thead>
                  <tr>
                    <td>Nama</td>
                    <td>Kota</td>
                    <td>kabupaten</td>
                    <td>jenis kelamin</td>
                    <td>nilai</td>
                  
                  </tr>
                </thead>
                <tbody>
                @foreach ($data3 as $key => $value)
                <tr>
                <td>{{ $value->nama}}</td>
                <td>{{ $value->kota}}</td>
                <td>{{ $value->kab}}</td>
                <td>{{ $value->jk}}</td>
                <td>{{ $value->nilai }}</td>
                
                </tr>
                @endforeach
                </tbody>
              </table>
             

            </div>
          </div>
        </div>
        <div class="container-fluid">
          <div class="card border-0 shadow-sm">
            <div class="card-body">
              <h1>Jumlah Nilai </h1>
              <table class="table myTable " >
                <thead>
                  <tr>
                    
                    <td>Nilai</td>
                    <td>Jumlah Siswa</td>
                  </tr>
                </thead>
                <tbody>
                @foreach ($data2 as $key => $value)
                <tr>
               
                <td>{{ $value->nilai }}</td>
                <td>{{ $value->jumlah_siswa}}</td>
                </tr>
                @endforeach
                </tbody>
              </table>
              

            </div>
          </div>
        </div>
        <div class="container-fluid">
          <div class="card border-0 shadow-sm">
            <div class="card-body">
              <h1>Daftar Siswa Yang Lolos Dan Tidak Lolos</h1>
              <table class="table myTable " >
                <thead>
                  <tr>
                    <td>Nama</td>
                    <td>Kota</td>
                    <td>kabupaten</td>
                    <td>jenis kelamin</td>
                    <td>nilai</td>
                    <td>Keterangan</td>
                  </tr>
                </thead>
                <tbody>
                @foreach ($data as $key => $value)
                <tr>
                <td>{{ $value->nama}}</td>
                <td>{{ $value->kota}}</td>
                <td>{{ $value->kab}}</td>
                <td>{{ $value->jk}}</td>
                <td>{{ $value->nilai }}</td>
                <td>{{ $value->keterangan}}</td>
                </tr>
                @endforeach
                </tbody>
              </table>
             

            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
  <script src="{{asset('la/dist/app.js')}}"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js" integrity="sha512-TW5s0IT/IppJtu76UbysrBH9Hy/5X41OTAbQuffZFU6lQ1rdcLHzpU5BzVvr/YFykoiMYZVWlr/PX1mDcfM9Qg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
<script>
  var oilCanvas = document.getElementById("oilChart");
  var lolos ='{{(int)$data4[0]->lolos}}';
  var gagal ='{{(int)$data4[0]->gagal}}';
var oilData = {
    labels: [
        "lolos",
        "gagal"
    ],
    datasets: [
        {
            data: [lolos,gagal],
            backgroundColor: [
                
                "#63FF84",
                "#FF6384",
            ]
        }]
};

var pieChart = new Chart(oilCanvas, {
  type: 'pie',
  data: oilData
});
$(document).ready( function () {
    $('.myTable').DataTable();
} );
</script>
</body>
</html>