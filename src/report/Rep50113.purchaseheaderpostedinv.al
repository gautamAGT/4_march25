report 50113 "purchaseheader_postedinv"
{
    DefaultLayout = RDLC;
    RDLCLayout = './purchaseheaderposted.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    caption = 'purchHeader_line_postedinv_Report';


    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "Pay-to Name";
            column(Pay_by_Name; "Pay-to Name")
            {

            }
            column(PaytoContact_PurchaseHeader; "Pay-to Contact")
            {
            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Buy-from Vendor No." = field("Buy-from Vendor No.");
                column(Document_No_; "Document No.")
                {
                }
                dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
                {
                    DataItemLink = "Buy-from Vendor No." = field("Buy-from Vendor No.");
                    column(Ship_to_Address;
                    "Ship-to Address")
                    { }
                }
            }
        }

    }
}