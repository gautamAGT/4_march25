report 50515 "purchaseheader_line_report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './postedpurchaseline.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    caption = 'purchase_line_postedinv_Report';


    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "No.";
            column(No_; "No.")
            {

            }

            dataitem("Purch. Rcpt. Header"; "Purch. Rcpt. Header")
            {
                DataItemLink =
                "Buy-from Vendor No." = field("Buy-from Vendor No.");
                column(postedpurchNo_; "No.") { }

                dataitem("Purch. Rcpt. Line"; "Purch. Rcpt. Line")
                {
                    DataItemLink = "Buy-from Vendor No." = field("Buy-from Vendor No.");
                    column(Quantity; Quantity)
                    { }
                }
            }
        }

    }
}