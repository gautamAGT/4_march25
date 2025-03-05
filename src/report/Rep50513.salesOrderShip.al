report 50513 salesOrderShip
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './salesOrderPostedShip.rdl';
    Caption = 'Sales Order_Posted Sales_Shipment Report';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "No.";
            column(Sales_Order_No; "No.") { }

            dataitem("Sales Shipment Header"; "Sales Shipment Header")
            {
                DataItemLink = "sell-to customer No." = field("sell-to customer No.");
                column(Posted_Sales_Shipment_No; "No.") { }

                dataitem("Sales Shipment Line"; "Sales Shipment Line")
                {
                    DataItemLink = "sell-to customer No." = field("sell-to customer No.");
                    column(Quantity; Quantity) { }
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
