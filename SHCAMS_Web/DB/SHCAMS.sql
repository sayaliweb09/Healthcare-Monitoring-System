USE [SHCAMS]
GO
/****** Object:  Table [dbo].[AllUserUIDNumber]    Script Date: 10/03/2018 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AllUserUIDNumber](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UIDNumber] [varchar](max) NULL,
 CONSTRAINT [PK_AllUserUIDNumber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BloodTest]    Script Date: 10/03/2018 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BloodTest](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AppointmentID] [bigint] NOT NULL,
	[Hemoglobin] [varchar](max) NULL,
	[RedBloodCellCount] [varchar](max) NULL,
	[WBCCount] [varchar](max) NULL,
	[PlatelteCount] [varchar](max) NULL,
	[Lymphocytes] [varchar](max) NULL,
	[Neutrophils] [varchar](max) NULL,
	[Monocyles] [varchar](max) NULL,
	[Eosinophils] [varchar](max) NULL,
	[PackedCellVolume] [varchar](max) NULL,
	[CreateDateTime] [datetime] NOT NULL CONSTRAINT [DF_BloodTest_CreateDateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_BloodTest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DepartmentTodaysStatus]    Script Date: 10/03/2018 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DepartmentTodaysStatus](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DoctorID] [bigint] NULL,
	[Status] [varchar](50) NULL,
	[StatusManageDate] [varchar](50) NULL,
	[CreateDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_DepartmentTodaysStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DesignationMaster]    Script Date: 10/03/2018 11:09:14 AM ******/
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
/****** Object:  Table [dbo].[DoctorRegistration]    Script Date: 10/03/2018 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoctorRegistration](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [bigint] NOT NULL,
	[DoctorName] [varchar](max) NULL,
	[DoctorAddress] [varchar](max) NULL,
	[DoctorContactNumber] [varchar](max) NULL,
	[DoctorEducationDetails] [varchar](max) NULL,
	[DoctorDesignation] [bigint] NOT NULL,
	[DoctorUIDNumber] [varchar](max) NULL,
	[DoctorEmailID] [varchar](max) NULL,
	[DoctorPassword] [varchar](max) NULL,
	[CreateDateTime] [datetime] NOT NULL CONSTRAINT [DF_DoctorRegistration_CreateDateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_DoctorRegistration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrganizationRegistration]    Script Date: 10/03/2018 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrganizationRegistration](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationName] [varchar](max) NULL,
	[OrganizationType] [varchar](max) NULL,
	[OrganizationAddress] [varchar](max) NULL,
	[OrganizationHelpLineNumber] [varchar](max) NULL,
	[OrganizationRegistraionNumber] [varchar](max) NULL,
	[OrganizationManagerEmailID] [varchar](max) NULL,
	[OrganizationManagerUIDNumber] [varchar](max) NULL,
	[OrganizationManagerPassword] [varchar](max) NULL,
	[Status] [varchar](max) NOT NULL,
	[CreateDateTime] [datetime] NOT NULL CONSTRAINT [DF_OrganizationRegistration_CreateDateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_OrganizationRegistration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PatientAppointment]    Script Date: 10/03/2018 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PatientAppointment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DoctorID] [bigint] NOT NULL,
	[PatientID] [bigint] NOT NULL,
	[TestTypeID] [bigint] NOT NULL,
	[AppointmentDateTime] [varchar](max) NOT NULL,
	[CreateDateTime] [datetime] NOT NULL CONSTRAINT [DF_PatientAppointment_CreateDateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_PatientAppointment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PatientRegistration]    Script Date: 10/03/2018 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PatientRegistration](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientName] [varchar](max) NULL,
	[PatientContactNumber] [varchar](max) NULL,
	[PatientAddress] [varchar](max) NULL,
	[PatientDOB] [varchar](max) NULL,
	[PatientGender] [varchar](max) NULL,
	[PatientUIDNumber] [varchar](max) NULL,
	[PatientPassword] [varchar](max) NULL,
	[PatientEmailID] [varchar](max) NULL,
	[CreateDateTime] [datetime] NOT NULL CONSTRAINT [DF_PatientRegistration_CreateDateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_PatientRegistration_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UrineTest]    Script Date: 10/03/2018 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UrineTest](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AppointmentID] [bigint] NOT NULL,
	[Volume] [varchar](max) NULL,
	[Color] [varchar](max) NULL,
	[Appearance] [varchar](max) NOT NULL,
	[Bilirubin] [varchar](max) NULL,
	[Ketones] [varchar](max) NULL,
	[Blood] [varchar](max) NULL,
	[PH] [varchar](max) NULL,
	[Protein] [varchar](max) NULL,
	[WBC] [varchar](max) NULL,
	[RBC] [varchar](max) NULL,
	[Bacteria] [varchar](max) NULL,
	[EPICell] [varchar](max) NULL,
	[Mucus] [varchar](max) NULL,
	[CreateDateTime] [datetime] NOT NULL CONSTRAINT [DF_UrineTest_CreateDateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_UrineTest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAppointmentRequest]    Script Date: 10/03/2018 11:09:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserAppointmentRequest](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [bigint] NULL,
	[TestName] [varchar](max) NULL,
	[DoctorID] [bigint] NULL,
	[PatientID] [bigint] NULL,
	[AppointmentNumber] [bigint] NULL,
	[AppointmentAoD] [varchar](max) NOT NULL,
	[AppointmentStatus] [varchar](max) NOT NULL,
	[AppointmentDate] [varchar](max) NULL,
	[CreateDate] [datetime] NOT NULL CONSTRAINT [DF_UserAppointmentRequest_CreateDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_UserAppointmentRequest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[DepartmentTodaysStatus] ADD  CONSTRAINT [DF_DepartmentTodaysStatus_CreateDateTime]  DEFAULT (getdate()) FOR [CreateDateTime]
GO
