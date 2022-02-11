

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body style="background: lightgray">

    <div class="container mt-5 mb-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card border-0 shadow rounded">
                    <div class="card-body">

<table class="table">
  <h1>Pendaftarn</h1>
  <thead>
    <tr>
      <th scope="col">nama</th>
      <th scope="col">nilai</th>
      <th scope="col">kota</th>
      <th scope="col">kabupaten</th>
      <th scope="col">jenis kelamin</th>
      
    </tr>
  </thead>
  <tbody>
  @foreach ($data as $key => $value)
      <tr>
        <td style="width: 200px" >{{ $value->nama}}</td>
        <td style="width: 500px" >{{ $value->nilai }}</td>
        <td style="width: 500px" >{{ $value->kota}}</td>
        <td style="width: 500px" >{{ $value->kab}}</td>
        <td style="width: 500px" >{{ $value->jk}}</td>
        
      </tr>
      @endforeach
  </tbody>
</table>
        Current Page: {{ $data->currentPage() }}<br>
        Jumlah Data: {{ $data->total() }}<br>
        Data perhalaman: {{ $data->perPage() }}<br>
        {{ $data->links() }}
            </div>
          </div>
        </div>
      </div>
    </div>
       
   
</body>
</html>

