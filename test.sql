-- Table Creation
CREATE TABLE [dbo].[Sample_Tbl1](
 [CustID] [int] 
) 

INSERT [dbo].[Sample_Tbl1] ([CustID]) VALUES (1)
INSERT [dbo].[Sample_Tbl1] ([CustID]) VALUES (1)
INSERT [dbo].[Sample_Tbl1] ([CustID]) VALUES (1)
INSERT [dbo].[Sample_Tbl1] ([CustID]) VALUES (1)
INSERT [dbo].[Sample_Tbl1] ([CustID]) VALUES (2)
INSERT [dbo].[Sample_Tbl1] ([CustID]) VALUES (2)
INSERT [dbo].[Sample_Tbl1] ([CustID]) VALUES (2)

CREATE TABLE [dbo].[Sample2_Tbl](
 [CustID] [int] 
) 

INSERT [dbo].[Sample2_Tbl] ([CustID]) VALUES (1)
INSERT [dbo].[Sample2_Tbl] ([CustID]) VALUES (1)
INSERT [dbo].[Sample2_Tbl] ([CustID]) VALUES (1)
INSERT [dbo].[Sample2_Tbl] ([CustID]) VALUES (2)
INSERT [dbo].[Sample2_Tbl] ([CustID]) VALUES (2)
--Solution 

select a.custID,b.CustID
	
from Sample_Tbl1 a
left join Sample2_Tbl b
on a.CustID = b.CustID