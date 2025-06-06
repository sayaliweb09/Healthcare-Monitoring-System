USE [SHCAMS]
GO
/****** Object:  Table [dbo].[DesignationMaster]    Script Date: 10/03/2018 11:10:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DesignationMaster](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DesignationType] [varchar](max) NULL,
 CONSTRAINT [PK_DesignationMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DesignationMaster] ON 

INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (1, N'Allergists/Immunologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (2, N'Anesthesiologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (3, N'Cordiologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (4, N'Dermatologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (5, N'Endocrinologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (6, N'Emerfency Medicine Specialists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (7, N'Gastronterologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (8, N'Hematologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (9, N'Nephrologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (10, N'Obstetricians and Gynecologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (11, N'Ophthalmologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (12, N'Otoloryngologists')
INSERT [dbo].[DesignationMaster] ([ID], [DesignationType]) VALUES (13, N'Pathalogy')
SET IDENTITY_INSERT [dbo].[DesignationMaster] OFF
