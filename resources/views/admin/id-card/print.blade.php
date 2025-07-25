<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width,maximum-scale=1.0">
	<title>{{ $title }}</title>

	<style type="text/css" media="print">
	@media print {
      @page { size: auto; margin: 10px; }  
      @page :footer { display: none }
      @page :header { display: none }
      body { margin: 15mm 15mm 15mm 15mm; }
      .page-break { page-break-before: auto; }
      table, tbody, tr, .template-inner, .template-container {page-break-inside: avoid;}
	}
	table, img, svg {
      break-inside: avoid;
	}
	.template-container {
      -webkit-transform: scale(1.0);  /* Saf3.1+, Chrome */
      -moz-transform: scale(1.0);  /* FF3.5+ */
      -ms-transform: scale(1.0);  /* IE9 */
      -o-transform: scale(1.0);  /* Opera 10.5+ */
      transform: scale(1.0);
    }
	</style>

	<link rel="stylesheet" type="text/css" href="{{ asset('dashboard/css/prints/student_id_card.css') }}" media="screen, print">

  @php 
  $version = App\Models\Language::version(); 
  @endphp
  @if($version->direction == 1)
  <!-- RTL css -->
  <style type="text/css" media="screen, print">
    .template-container {
      direction: rtl;
    }
    .template-container .temp-title h2, 
    .template-container .temp-title h4, 
    .template-container .temp-footer .inner p {
      text-align: center;
    }
    .template-container .table-no-border tr td {
      float: right;
      text-align: right;
    }
    .template-container .table-no-border tr td.temp-logo {
      float: none;
    }
  </style>
  @endif
</head>
<body>

@foreach($rows as $row)
<div class="printable">
<div class="template-container">
  <div class="template-inner">
    <!-- Header Section -->
    <table class="table-no-border">
        <tbody>
        	<tr>
        		<td class="temp-title">
                  <div class="inner">
                    <h2>{{ $print->title }}</h2>

                    <h4>{{ $print->subtitle }}</h4>
                  </div>
                </td>
        	</tr>
            <tr>
                <td class="temp-logo">
                  <div class="inner">
                    @if(is_file('uploads/student/'.$row->photo))
                    <img src="{{ asset('uploads/student/'.$row->photo) }}" alt="Photo">
                    @else
                    <img src="{{ asset('dashboard/images/user.jpg') }}" alt="Photo">
                    @endif
                  </div>
                </td>
            </tr>
        </tbody>
    </table>
    <!-- Header Section -->

    <!-- Header Section -->
    <table class="table-no-border">
        <tbody>
            <tr class="meta-data">
                <td>{{ __('field_student_id') }}</td>
                <td class="value">: {{ $print->prefix ?? '' }}{{ $row->student_id }}</td>
            </tr>
            <tr class="meta-data">
                <td>{{ __('field_name') }}</td>
                <td class="value">: {{ $row->first_name }} {{ $row->last_name }}</td>
            </tr>
            <tr class="meta-data">
                <td>{{ __('field_program') }}</td>
                <td class="value">: {{ $row->program->shortcode ?? $row->program->title }}</td>
            </tr>
            <tr class="meta-data">
                <td>{{ __('field_batch') }}</td>
                <td class="value">: {{ $row->batch->title ?? '' }}</td>
            </tr>
            <tr class="meta-data">
                <td>{{ __('field_validity') }}</td>
                <td class="value">: 
                	@if(isset($setting->date_format))
                        {{ date($setting->date_format, strtotime('+'.$print->validity.' years', strtotime($row->admission_date))) }}
                    @else
                        {{ date("Y-m-d", strtotime('+'.$print->validity.' years', strtotime($row->admission_date))) }}
                    @endif
                </td>
            </tr>
        </tbody>
    </table>
    <!-- Header Section -->

    <!-- Header Section -->
    <table class="table-no-border">
        <tbody>
            <tr>
                <td class="temp-footer">
                  <div class="inner">
                    <p>{!! $print->address !!}</p>
                  </div>
                </td>
            </tr>
        </tbody>
    </table>
    <!-- Header Section -->
  </div>
</div>

<div class="page-break"></div>
</div>
@endforeach

	<!-- Print Js -->
	<script src="{{ asset('dashboard/plugins/jquery/js/jquery.min.js') }}"></script>
	<script src="{{ asset('dashboard/plugins/print/js/jQuery.print.min.js') }}"></script>

	<script type="text/javascript">
	$( document ).ready(function() {
        "use strict";
	   $.print(".printable");
	});
	</script>

</body>
</html>