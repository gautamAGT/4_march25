report 50512 "AGT_report12"
{
    DefaultLayout = RDLC;
    RDLCLayout = './groupingsaleOrder.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'groupSales';


    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Customer_No_; "No.")
            {

            }
            column(Name; Name) { }

            dataitem("Sales Header"; "Sales Header")
            {
                DataItemLink = "sell-to customer no." = field("No.");
                column(order_No_; "No.") { }


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