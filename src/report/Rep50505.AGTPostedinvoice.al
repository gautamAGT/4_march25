report 50505 "AGT_Posted_invoice"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './salesheaderLine_agt.rdl';
    Caption = 'Invoice Report - AGT';

    dataset
    {

        dataitem("Sales Header"; "Sales Header")
        {
            column(No_; "No.")
            {
            }
            column(SelltoCustomerNo_SalesHeader; "Sell-to Customer No.")
            {
            }
            column(SelltoCustomerName_SalesHeader; "Sell-to Customer Name")
            {
            }



            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "document Type" = field("document type"), "document no." = field("no.");
                column(item_No_; "No.")
                {

                }
                column(LocationCode_SalesLine; "Location Code")
                {
                }
                column(Quantity_SalesLine; Quantity)
                {
                }
                column(Unit_Cost; "Unit Cost") { }
            }

        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';

        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(ReportFilter; myInt)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(Print)
                {
                    Caption = 'Print Report';
                    ApplicationArea = All;
                    trigger OnAction()
                    begin

                    end;
                }
            }
        }
    }

    var
        myInt: Integer;
}
