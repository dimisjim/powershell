Get-ChildItem "C:\Users\jim\files\ds1" -Filter *.csv | 
Foreach-Object {

    $headerToAdd = "id,channel,seller,int_rate,orig_upb,loan_term,start_date,first_pay_date,ltv,cltv,borrow_numb,dti,borrow_credit_score,buyer_indic,purpose,prop_type,nb_units,occ_status,prop_state,zip,insurance_perc,prod_type,coborrow_credit_score,insurance_type,reloc_indic"

    $headerToAdd + "`n" + (Get-Content $_.FullName -Raw) | Set-Content $_.FullName
}