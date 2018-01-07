var
    filterNames = '',
    filterValues = '',
    targetdata;

deleteModalDialog = 'deleteModal';
modalDialog = "addModal";
formName = 'aspnetForm';
tableName = "Outgoings";
pKey = "OutgoingID";
gridId = "listItems";
gridColumns = [];

gridColumns.push(
    {
        "mDataProp": "OutgoingID",
        "bSortable": true
    },
    {
        "mDataProp": "AddDate",
        "bSortable": true,
        "mData": function (d) {
            return commonManger.formatJSONDateCal(d.AddDate);
        }
    },
    {
        "mDataProp": "ExpenseTypeName",
        "bSortable": true
    },
    {
        "mData": function (d) { return d.RefID ? d.RefID : '' },
        "bSortable": true
    },
    {
        "mData": function (d) { return d.Notes ? d.Notes : '' },
        "bSortable": false,
        "sClass": "hidden-480",

    },
    {
        "mDataProp": "Amount",
        "bSortable": false,
        "sClass": "hidden-480",
        "mData": function (row) {
            return numeral(row.Amount * 1).format('0,0.00');
        }
    },
    {
        "mDataProp": null,
        "bSortable": false,
        sClass: 'hidden-print',
        "mData": function (d) {
            return '<a href="outgoing/outgoingsaddedit.aspx?id=' + d.OutgoingID + '" class="btn btn-primary btn-mini" title="Edit"><i class="fa fa-pencil"></i></a> ' +
                '<button class="btn btn-danger btn-mini remove" title="Delete"><i class="fa fa-trash"></i></button>';
        }
    });

$.extend(true, $.fn.dataTable.defaults, {
    "footerCallback": function (tfoot, data, start, end, display) {
        var api = this.api();

        var _total = api.column(5).data().reduce(function (a, b) {
            return a + (numeral().unformat(b) * 1);
        }, 0);

        $('.totalCharge').text(numeral(_total).format('0,0.00'));
    }
});

DefaultGridManager.Init();

// serach
$('#btnSearch').click(function (e) {
    e.preventDefault();

    // set filter paramters
    var searchObj = {
        user: $('#ExpenseTypeID').val(),
        from: commonManger.dateFormat($('#DateFrom').val()),
        to: commonManger.dateFormat($('#DateTo').val()),
    };

    filterNames = 'ExpenseTypeID~From~To';
    filterValues = $.map(searchObj, function (el) { return el }).join('~');

    // update result
    DefaultGridManager.updateGrid();
});