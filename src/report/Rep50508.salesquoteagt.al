report 50508 "sales_quote_agt"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './salesquoteLine_agt.rdl';
    Caption = 'sales quote Line Report - AGT';

    dataset
    {

        dataitem("Sales Header"; "Sales Header")
        {
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {
            }
            column(Status; Status)
            {
            }
            column(Due_Date; "Due Date")
            {
            }



            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "document Type" = field("document type"), "document no." = field("no.");
                column(Tax_Area_Code; "Tax Area Code")
                {

                }
                column(Customer_Price_Group; "Customer Price Group")
                {
                }
                column(Quantity_SalesLine; Quantity)
                {
                }
                column(Description; Description) { }
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
                    field(ReportFilter; myInt)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(Print)
                {
                    Caption = 'Print Report';
                    ApplicationArea = All;
                    trigger OnAction()
                    begin

                    end;
                }
            }
        }
    }

    var
        myInt: Integer;
}
