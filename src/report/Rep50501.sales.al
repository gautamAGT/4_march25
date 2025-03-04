report 50501 "sales"
{
    DefaultLayout = RDLC;
    Caption = 'sales report_gautam';
    RDLCLayout = './salesOrders.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;


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