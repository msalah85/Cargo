
formName = 'aspnetForm';
deleteModalDialog = 'deleteModal';
tableName = "Docs";
pKey = "InvoiceID";
gridId = "listItems";
gridColumns = [];
$clientID = $('.txtSearch');
filterNames = '';
filterValues = '';

var
    pageManager = function () {
        var
            init = function () {
                pageEvent();
                initProperties();
            },
            pageEvent = function () {
                // search
                $('.btnSearch').click(function (e) {
                    e.preventDefault();

                });
            },
            initProperties = function () {

                ////////////////////////// //////////////////////////
                // check filter id.
                var qs = commonManger.getQueryStrs();
                if (qs.id) {

                    filterNames = 'ID';
                    filterValues = qs.id;


                    //// set selected client
                    //$clientID.select2("trigger", "select", {
                    //    data: { id: qs.id, text: (qs.name.split('+').join(' ')) }
                    //});
                }


                gridColumns.push(
                    {
                        "mData": function (d) { return d.DeclarationNo ? d.DeclarationNo : '' },
                        "bSortable": false
                    },
                    {
                        "bSortable": false,
                        "mData": function (d) {
                            if (d.BillOfEntryDate)
                                return commonManger.formatJSONDateCal(d.BillOfEntryDate);
                            else
                                return '---';
                        }
                    },
                    {
                        "mData": function (d) { return d.ContainerNo ? d.ContainerNo : '' },
                        "bSortable": false
                    },
                    {
                        "bSortable": false,
                        "mData": function (d) {
                            return '---';
                        }
                    });

                // init grid
                DefaultGridManager.Init();
            };


        return {
            Init: init
        };

    }();

///////////////////
pageManager.Init();