report 50503 "AGT_report"
{
    RDLCLayout = './AGTCustomer.rdl';
    DefaultLayout = RDLC;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption='Report_Cust_AGT';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.")
            {

            }
            column(Name_Customer; Name)
            {
            }
            column(Contact_Customer; Contact)
            {
            }
            column(Balance_Customer; Balance)
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


}
    
    
