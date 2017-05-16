//=======================================
// Developer: M. Salah (16-5-2017)
// Email: eng.msalah.abdullah@gmail.com
//=======================================

'use strict';

var pageManager = pageManager || {},
    pageManager = (function () {
    "use strict";
    var Init = function Init() {
        getReport();
        pageEvents();
    },
        pageEvents = function pageEvents() {
        // print report
        $('#printMe').click(function (e) {
            e.preventDefault();
            window.print();
        });
    },
        getReport = function getReport() {
        var _id = commonManger.getQueryStrs().clientid || 0,
            DTO = { actionName: 'ClientStatement_SelectList', value: _id },
            BindReportControls = function BindReportControls(d) {
            var data = commonManger.xml2Json(d.d),
                jsn = data.list,
                jsn1 = data.list1;

            // header details
            $('#AddDate').text(commonManger.formatJSONDateCal(new Date(), 'dd/MM/yyyy'));
            if (jsn) {
                $('#ClientName').text(jsn.ClientName);
                $('.FinalBalance').text(numeral(jsn.DuAmount).format('0,0.00'));
            }

            // statement details
            var rows = $(jsn1).map(function (i, v) {
                return '<tr><td class="center">' + (v.Note === 'Invoice' ? '<a title="Go to invoice details" target="_blank" href="InvoicePrint.aspx?id=' + v.ID + '">' + v.ID + '</a>' : v.ID) + '</td><td>' + commonManger.formatJSONDateCal(v.Date, 'dd/MM/yyyy') + '</td><td>' + numeral(v.InAmount).format('0,0.00') + '</td><td>' + numeral(v.OutAmount).format('0,0.00') + '</td><td>' + numeral(v.Balance).format('0,0.00') + '</td></tr>';
            }).get().join(),
                $stet = $('.listItems tbody');
            $stet.html(rows);
        };

        dataService.callAjax('Post', JSON.stringify(DTO), sUrl + 'GetData', BindReportControls, commonManger.errorException);
    };

    return {
        Init: Init
    };
})();

