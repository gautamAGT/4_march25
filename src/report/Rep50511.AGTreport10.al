report 50511 "AGT_report10"
{
    DefaultLayout = RDLC;
    RDLCLayout = './purchaseHeaderReport_agt.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'purchase_header_reportG';

    dataset
    {

        dataitem(Vendor; Vendor)

        {
            RequestFilterFields = "No.";
            column(No_; "No.")
            {

            }
            column(City_Vendor; City)
            {
            }
            column(Country_Region_Code; "Country/Region Code") { }



            dataitem("Purchase Header"; "Purchase Header")
            {
                DataItemLink = "buy-from vendor no." = field("no.");

                column(Vendor_Order_No_; "Vendor Order No.")
                {

                }



                dataitem("Purchase Line"; "Purchase Line")
                {
                    DataItemLink = "Document Type" = field("document Type"), "document No." = field("No.");

                    column(item_No_; "No.") { }
                    column(Quantity; Quantity) { }
                    column(Unit_of_Measure; "Unit of Measure") { }
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