report 50506 "AGT_report5"
{
    DefaultLayout = RDLC;
    RDLCLayout = './purchaseHeaderLine_agt.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'purchase_header_agt';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            column(No_; "No.")
            {

            }
            column(BuyfromVendorName_PurchaseHeader; "Buy-from Vendor Name")
            {
            }
            column(BuyfromVendorNo_PurchaseHeader; "Buy-from Vendor No.")
            {
            }

            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document Type" = field("document Type"), "document No." = field("No.");

                column(Type; Type)
                {

                }
                column(LocationCode_PurchaseLine; "Location Code")
                {
                }
                column(Quantity_PurchaseLine; Quantity)
                {
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