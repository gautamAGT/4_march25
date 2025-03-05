report 50507 "AGT_report8"
{
    Caption = 'salesShipmentAGT';
    DefaultLayout = RDLC;
    RDLCLayout = './salesShipment_agt.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;


    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            column(No_; "No.")
            {

            }
            column(CustomerId_SalesShipmentHeader; "Customer Id")
            {
            }
            column(Bill_to_Contact; "Bill-to Contact")
            {

            }

            dataitem("Sales Shipment Line"; "Sales Shipment Line")
            {
                DataItemLink = "document no." = field("No.");
                column(LocationCode_SalesShipmentLine; "Location Code")
                {
                }
                column(Quantity_SalesShipmentLine; Quantity)
                {
                }
                column(item_No_; "No.") { }
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