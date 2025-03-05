report 50509 "AGT_report9"
{
    DefaultLayout = rdlc;
    RDLCLayout = './saleOrder_agt.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'salesOrderReport';
    //DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.";
            column(No_; "No.")
            {

            }
            column(Name; Name) { }

            dataitem("Sales Header"; "Sales Header")
            {
                DataItemLink = "sell-to customer no." = field("No.");
                column(order_No_; "No.") { }
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

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }



    var
        myInt: Integer;
}