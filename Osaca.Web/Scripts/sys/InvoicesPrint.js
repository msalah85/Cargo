//=======================================
// Developer: M. Salah (07-01-2017)
// Email: eng.msalah.abdullah@gmail.com
//=======================================
//window.onload = function () {
//    debugger;
//    var _total = 0;
//    var _totalVat = 0;

//    setTimeout(function () {

//        $('.listItems tbody tr').each(function (i, item) {
//            _total += numeral($(this).children('td:eq(2)').text()) * 1;
//            _totalVat += numeral($(this).children('td:eq(3)').text()) * 1;
//        });

//        $("#tdTotalAmount").html(numeral(_total).format('0,0.0'));
//        $("#tdVatAmount").html(numeral(_totalVat).format('0,0.0'));

//        var AmountAndVat = numeral(_total + _totalVat).format('0,0.0');
//        $("#TotalAmount").text(AmountAndVat);

//    }, 500);

//}
var
    pageManager = function () {
        "use strict";
        var
            Init = function () {
                // get report id            
                getAllReport();
                pageEvents();
            },
            pageEvents = function () {
                // print report
                $('#printMe').click(function (e) {
                    e.preventDefault();
                    $('#sidebar').addClass('menu-min');
                    window.print();
                });
            },
            successSaved = function (data) {
                data = data.d;
                if (data.Status)
                    window.location.href = 'InvoicesView.aspx';
            },
            getAllReport = function () {
                var qs = commonManger.getQueryStrs(),
                    _id = (qs.id ? qs.id : ''),
                    _key = (qs.key ? qs.key : ''),
                    _no = (qs.no ? qs.no : '');

                var
                    dto = {
                        actionName: "Invoices_SelectRow",
                        names: ['id', 'key', 'no'],
                        values: [_id, _key, _no]
                    },
                    bindReportControls = function (d) {
                        var xml = $.parseXML(d.d), jsn = $.xml2json(xml).list, jsn1 = $.xml2json(xml).list1;

                        if (jsn) {
                            // set all data
                            $.each(jsn, function (k, v) {
                                $('#' + k).text(v);
                            });

                            // money format
                            $('#TotalAmount').text(numeral(jsn.TotalAmount).format('0,0'));

                            //date format
                            $('.date').text(function () {
                                return commonManger.formatJSONDateCal($(this).text(), 'DD-MM-YYYY');
                            });
                        }

                        // expenses list
                        var _total = 0, _totalVat = 0;

                        if (jsn1) {
                            var rows = $(jsn1).map(function (i, v) {
                                _total += v.Amount * 1;
                                _totalVat += v.VAT * 1;
                                return '<tr><td>' + (i + 1) + '</td><td>' + v.ExpenseName + '</td><td>' + numeral(v.Amount).format('0,0.00') + '</td><td>' + numeral(v.VAT).format('0,0.00') + '</td></tr>';
                            }).get();

                            $('.listItems tbody').append(rows);
                            $("#tdTotalAmount").html(numeral(_total).format('0,0.0'));
                            $("#tdVatAmount").html(numeral(_totalVat).format('0,0.0'));
                            var AmountAndVat = numeral(_total + _totalVat).format('0,0.0');
                            $("#TotalAmount").text(AmountAndVat);
                        }

                        document.title = 'ContainerNo-' + $('#ContainerNo').text();
                    };

                dataService.callAjax('Post', JSON.stringify(dto), sUrl + 'GetDataList', bindReportControls, commonManger.errorException);
            };
        return {
            Init: Init
        };
    }();