report 50504 "AGT_Posted"
{
    Caption='AGT_Posted_Sales_invoice';
    DefaultLayout=RDLC;
    RDLCLayout='./posted_AGT.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    //DefaultRenderingLayout = LayoutName;
    
    dataset
    {
        dataitem("Sales Invoice Header";"Sales Invoice Header")
        {
            column(No_;"No.")
            {
                
            }
            column(SelltoCustomerName_SalesInvoiceHeader; "Sell-to Customer Name")
            {
            }
            column(Amount_SalesInvoiceHeader; Amount)
            {
            }
            column(DueDate_SalesInvoiceHeader; "Due Date")
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
    
