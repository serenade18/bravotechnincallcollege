    <!-- Edit modal content -->
    <div id="payModal-{{ $row->id }}" class="modal fade" tabindex="-1" role="dialog" id="payModal-{{ $row->id }}" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
              <form class="needs-validation pay-form" novalidate action="{{ route($route.'.pay') }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-header">
                    <h5 class="modal-title" id="myModalLabel">{{ $title }}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <!-- View Start -->
                    <div class="">
                        <div class="row">
                            <div class="col-md-6">
                                <p><mark class="text-primary">{{ __('field_student_id') }}:</mark> #{{ $row->studentEnroll->student->student_id ?? '' }}</p><hr/>
                                <p><mark class="text-primary">{{ __('field_name') }}:</mark> {{ $row->studentEnroll->student->first_name ?? '' }} {{ $row->studentEnroll->student->last_name ?? '' }}</p><hr/>
                                <p><mark class="text-primary">{{ __('field_program') }}:</mark> {{ $row->studentEnroll->program->title ?? '' }}</p><hr/>
                            </div>
                            <div class="col-md-6">
                                <p><mark class="text-primary">{{ __('field_fees_type') }}:</mark> {{ $row->category->title ?? '' }}</p><hr/>
                                <p><mark class="text-primary">{{ __('field_session') }}:</mark> {{ $row->studentEnroll->session->title ?? '' }}</p><hr/>
                                <p><mark class="text-primary">{{ __('field_semester') }}:</mark> {{ $row->studentEnroll->semester->title ?? '' }} ({{ $row->studentEnroll->section->title ?? '' }})</p><hr/>
                            </div>
                        </div>
                    </div>
                    <br/>

                    <input type="text" name="fee_id" value="{{ $row->id }}" hidden>
                    <input type="hidden" name="student_email" value="{{ $row->studentEnroll->student->email ?? '' }}">

                    <!-- Form Start -->
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="due_date" class="form-label">{{ __('field_due_date') }} <span>*</span></label>
                            <input type="date" class="form-control" name="due_date" id="due_date" value="{{ $row->due_date }}" required readonly>

                            <div class="invalid-feedback">
                              {{ __('required_field') }} {{ __('field_due_date') }}
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="pay_date" class="form-label">{{ __('field_pay_date') }} <span>*</span></label>
                            <input type="date" class="form-control" name="pay_date" id="pay_date" value="{{ date('Y-m-d') }}" required readonly>

                            <div class="invalid-feedback">
                              {{ __('required_field') }} {{ __('field_pay_date') }}
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="fee_amount" class="form-label">{{ __('field_amount') }} ({!! $setting->currency_symbol !!}) <span>*</span></label>
                            <input type="text" class="form-control autonumber" name="fee_amount" id="fee_amount" value="{{ round($row->fee_amount, 2) }}" required readonly>

                            <div class="invalid-feedback">
                              {{ __('required_field') }} {{ __('field_amount') }}
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="discount_amount" class="form-label">{{ __('field_discount') }} ({!! $setting->currency_symbol !!}) <span>*</span></label>
                            <input type="text" class="form-control autonumber" name="discount_amount" id="discount_amount" value="{{ round($discount_amount, 2) }}" required readonly>

                            <div class="invalid-feedback">
                              {{ __('required_field') }} {{ __('field_discount') }}
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="fine_amount" class="form-label">{{ __('field_fine_amount') }} ({!! $setting->currency_symbol !!}) <span>*</span></label>
                            <input type="text" class="form-control autonumber" name="fine_amount" id="fine_amount" value="{{ round($fine_amount, 2) }}" required readonly>

                            <div class="invalid-feedback">
                              {{ __('required_field') }} {{ __('field_fine_amount') }}
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="net_amount" class="form-label">{{ __('Amount To Pay') }} ({!! $setting->currency_symbol !!}) <span>*</span></label>
                            <input type="text" class="form-control autonumber" name="paid_amount" id="net_amount" value="" placeholder="Enter amount" required>

                            <div class="invalid-feedback">
                              {{ __('required_field') }} {{ __('field_net_amount') }}
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="payment_method" class="form-label">{{ __('field_payment_method') }} <span>*</span></label>
                            <select class="form-control" name="payment_method" id="payment_method-{{ $row->id }}" required>
                                <option value="">{{ __('select') }}</option>
                                <option value="4" @if( old('payment_method') == 4 ) selected @endif disabled>{{ __('MPESA') }}</option>
                                <option value="5" @if( old('payment_method') == 5 ) selected @endif>{{ __('Paystack') }}</option>
                            </select>

                            <div class="invalid-feedback">
                              {{ __('required_field') }} {{ __('field_payment_method') }}
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="note" class="form-label">{{ __('field_note') }}</label>
                            <input type="text" class="form-control" name="note" id="note-{{ $row->id }}" value="{{ old('note') }}">
                        </div>
                    </div>
                    <!-- Form End -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fas fa-times"></i> {{ __('btn_close') }}</button>
                    <button type="submit" class="btn btn-success"><i class="fas fa-money-check"></i> {{ __('btn_received') }}</button>
                </div>
              </form>
            </div>
        </div>
    </div>

@section('page_js')
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const paystackAction = "{{ route('payment.paystack.process') }}"; 
        const defaultAction = "{{ route($route.'.pay') }}";

        document.querySelectorAll('.pay-form').forEach(function(form) {
            form.addEventListener('submit', function() {
                const paymentMethodField = form.querySelector('select[name="payment_method"]');
                if (!paymentMethodField) return;

                const paymentMethod = paymentMethodField.value;

                if (paymentMethod === '5') {
                    form.setAttribute('action', paystackAction);
                } else {
                    form.setAttribute('action', defaultAction);
                }
            });
        });
    });
</script>
@endsection

