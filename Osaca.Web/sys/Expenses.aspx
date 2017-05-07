<%@ Page Title="Expenses" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="Expenses.aspx.cs" Inherits="sys_Expenses" %>

<%@ Register Src="UserControls/PageSettings.ascx" TagPrefix="uc1" TagName="PageSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="/Scripts/sys/Common.min.js"></script>
    <script src="/Scripts/sys/DataService.min.js"></script>
    <script src="/Scripts/sys/DefaultGridVariables.min.js"></script>

    <script src="/content/sys/assets/js/jquery.validate.js"></script>
    <script src="/content/sys/assets/js/additional-methods.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
        <ul class="breadcrumb">
            <li>
                <i class="ace-icon fa fa-home home-icon"></i>
                <a href="home">Home</a>
            </li>
            <li class="active">Expenses</li>
        </ul>
        <!-- /.breadcrumb -->
    </div>
    <div class="page-content">
        <uc1:PageSettings runat="server" ID="PageSettings" />
        <!-- /section:settings.box -->
        <div class="page-header">
            <h1>Expenses Manager</h1>
        </div>
        <!-- /.page-header -->
        <div class="row">
            <div class="col-xs-12 widget-container-col">
                <!-- PAGE CONTENT BEGINS -->
                <div class="clearfix">
                    <a role="button" href="#addModal" data-toggle="modal" class="btn btn-white btn-warning btn-bold"
                        tabindex="0" title="Add new"><i class="fa fa-plus bigger-110"></i>Add new</a>
                    <div class="pull-right tableTools-container"></div>
                </div>

                <div class="widget-box widget-color-blue" id="widget-box-2">
                    <!-- #section:custom/widget-box.options -->
                    <div class="widget-header">
                        <h5 class="widget-title bigger lighter">
                            <i class="ace-icon fa fa-table"></i>
                            Expenses List
                        </h5>

                        <div class="widget-toolbar">
                            <a href="#" data-action="fullscreen" class="white">
                                <i class="1 ace-icon fa fa-expand bigger-125"></i>
                            </a>
                        </div>
                    </div>
                    <!-- /section:custom/widget-box.options -->
                    <div class="widget-body">
                        <div class="widget-main no-padding">
                            <table id="listItems" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Expense name</th>
                                        <th>Default value</th>
                                        <th width="77px"></th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="addModal" class="modal fade" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header no-padding">
                                <div class="table-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        <span class="white">&times;</span>
                                    </button>
                                    Add/Edit Expense
                                </div>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <form class="form-horizontal" role="form" id="aspnetForm">
                                            <div>
                                                <input type="hidden" id="ExpenseID" value="0" />
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right">Expense name <span class="text-danger">*</span></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="col-sm-10 required" required id="ExpenseName" name="ExpenseName" placeholder="Expense name" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label no-padding-right" for="DefaultValue">DefaultValue</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="col-sm-10" id="DefaultValue" placeholder="00.00" />
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer no-margin-top">
                                <button class="btn btn-sm btn-primary" id="btnSave">
                                    <i class="ace-icon fa fa-check"></i>
                                    Save
                                </button>
                                <button class="btn btn-sm btn-danger" data-dismiss="modal">
                                    <i class="ace-icon fa fa-times"></i>
                                    Close
                                </button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                </div>
                <!-- /.add-modal-dialog -->
                <div id="deleteModal" class="modal fade" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header no-padding">
                                <div class="table-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        <span class="white">&times;</span>
                                    </button>
                                    Delete item
                                </div>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <form action="#" class="form-horizontal" id="removeForm">
                                            <label id="Label2">Are you sure to delete the selected item (<label class="removeField"></label>)?</label>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer no-margin-top">
                                <button class="btn btn-sm btn-primary btn-delete" id="btnDelete">
                                    <i class="ace-icon fa fa-check"></i>
                                    Delete
                                </button>
                                <button class="btn btn-sm btn-danger" data-dismiss="modal">
                                    <i class="ace-icon fa fa-times"></i>
                                    Cancel
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.delete-modal-dialog -->
                <!-- PAGE CONTENT ENDS -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>

    <script src="/Scripts/sys/DefaultGridManager.js"></script>
    <script type="text/javascript">
        var targetdata; modalDialog = "addModal"; formName = 'aspnetForm'; deleteModalDialog = 'deleteModal';
        tableName = "Expenses";
        pKey = "ExpenseID";
        gridId = "listItems";
        gridColumns = [];
        gridColumns.push(
            {
                "mDataProp": "ExpenseID",
                "bSortable": true
            },
        {
            "mDataProp": "ExpenseName",
            "bSortable": true
        },
        {
            "mDataProp": "DefaultValue",
            "bSortable": false
        },
        {
            "mDataProp": null,
            "bSortable": false,
            "mData": function () {
                return '<button class="btn btn-primary btn-mini edit" title="تعديل"><i class="fa fa-pencil"></i></button> ' +
                       '<button class="btn btn-danger btn-mini remove" title="حذف"><i class="fa fa-trash"></i></button>'
            }
        });
        DefaultGridManager.Init();


        //$.fn.beforeSave = function () {
        //    if ($('#RouteURL').val().trim() == "") {
        //        var news_title = $('#news_title').val();
        //        news_title = news_title.replace(/\s+/g, '-').toLowerCase();
        //        $('#RouteURL').val(news_title);
        //        return true;
        //    }
        //    else { return true }
        //}
        //$.fn.afterLoadData = function (ArrayData) {
        //    targetdata = ArrayData;
        //}

        //validation
        $('#aspnetForm').validate({
            errorElement: 'div',
            errorClass: 'help-block',
            focusInvalid: false,
            ignore: "",
            highlight: function (e) {
                $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
            },
            success: function (e) {
                $(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
                $(e).remove();
            },
            errorPlacement: function (error, element) {
                if (element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
                    var controls = element.closest('div[class*="col-"]');
                    if (controls.find(':checkbox,:radio').length > 1) controls.append(error);
                    else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
                }
                else if (element.is('.select2')) {
                    error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
                }
                else if (element.is('.chosen-select')) {
                    error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
                }
                else error.insertAfter(element.parent());
            },

            submitHandler: function (form) {
            },
            invalidHandler: function (form) {
            }
        });
        $('#btnSave').click(function (e) {
            e.preventDefault();
            $('#aspnetForm').submit();
        });
    </script>
</asp:Content>