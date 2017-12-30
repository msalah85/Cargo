<%@ Page Title="Invoices List" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="InvoicesView.aspx.cs" Inherits="sys_InvoicesView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="/Scripts/sys/Common.min.js?v=1.25"></script>
    <script src="/Scripts/sys/DataService.min.js"></script>
    <script src="/Scripts/sys/DefaultGridVariables.min.js?v=1.25"></script>
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
            <li class="active">Invoices List</li>
        </ul>
    </div>
    <div class="page-content">
        <div class="page-header">
            <h1>Invoices List</h1>
        </div>
        <div class="row">
            <div class="col-xs-12 widget-container-col">
                <div class="clearfix">
                    <div class="col-xs-2">
                        <a role="button" href="InvoiceAdd.aspx" class="btn btn-white btn-warning btn-bold"
                            tabindex="0" title="Add new"><i class="fa fa-plus bigger-110"></i>Add new</a>
                    </div>
                    <div class="col-xs-4">
                        <form role="form">
                            <div class="input-group">
                                <span class="input-group-addon info">Client</span>
                                <select class="select2 form-control txtSearch" name="clientid" data-fn-name="Clients_GetNames" data-placeholder="Select a client" data-allow-clear="true"></select>
                                <div class="input-group-btn">
                                    <button type="submit" class="btn btn-sm btn-info2 btnSearch">Search</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="pull-right tableTools-container"></div>
                </div>
                <div class="widget-box widget-color-blue" id="widget-box-2">
                    <div class="widget-header">
                        <h5 class="widget-title bigger lighter">
                            <i class="ace-icon fa fa-table"></i>
                            Invoices List
                        </h5>
                        <div class="widget-toolbar">
                            <a href="#" data-action="fullscreen" class="white">
                                <i class="1 ace-icon fa fa-expand bigger-125"></i>
                            </a>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div class="widget-main no-padding">
                            <table id="listItems" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Date</th>
                                        <th>Client</th>
                                        <th>Container no</th>
                                        <th>Declaration no</th>
                                        <th>Total Amount</th>
                                        <th width="110px"></th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <div class="add-print">
                                <table class="table">
                                    <tr class="info">
                                        <td width="80%"><strong class="pull-right">Total Invoices:</strong></td>
                                        <td><span class="TotalInvoices">0</span> AED</td>
                                    </tr>
                                    <tr class="success">
                                        <td><strong class="pull-right">Total Payments:</strong></td>
                                        <td><span class="TotalPayments">0</span> AED</td>
                                    </tr>
                                    <tr class="danger">
                                        <td><strong class="pull-right">Due Amount:</strong></td>
                                        <td><span class="clientBalance">0</span> AED</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
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
            </div>
        </div>
    </div>
    <script src="/Scripts/sys/jquery.xml2json.min.js"></script>
    <script src="/Scripts/sys/numeral.min.js"></script>
    <script src="/Scripts/sys/DefaultGridFilterManager.min.js?v=1.25"></script>
    <link href="/Scripts/select2/select2.min.css" rel="stylesheet" />
    <link href="/Scripts/select2/select2-optional.min.css" rel="stylesheet" />
    <script src="/Scripts/select2/select2.min.js"></script>
    <script src="/Scripts/lz-string/lz-string.min.js"></script>
    <script src="/Scripts/select2/select2-optinal.min.js"></script>
    <script src="/Scripts/sys/invoices-list.min.js?v=1.25"></script>
</asp:Content>
