report 50502 "AGT_practice"
{
    DefaultLayout = RDLC;
    RDLCLayout = './item_AgtReport.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'AGT_ItemReport';
    //DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(Item; Item)
        {

            column(No_Item; "No.")
            {
            }
            column(Description_Item; Description)
            {
            }
            column(UnitPrice_Item; "Unit Price")
            {
            }
            column(Type_Item; "Type")
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



    var
        myInt: Integer;
}