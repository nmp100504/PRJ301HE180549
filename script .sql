USE [master]
GO
CREATE DATABASE [ASSIGNMENT_PRJ301_4]
GO

USE [ASSIGNMENT_PRJ301_4]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[image_url] [varchar](255) NULL,
	[role_id] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branding]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branding](
	[branding_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[branding_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[colors_id] [int] IDENTITY(1,1) NOT NULL,
	[color_code] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[colors_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[message] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filter_price]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filter_price](
	[filter_price_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[filter_price_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galery]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galery](
	[galery_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[thumbnail] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[galery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_details]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_details](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[price] [float] NULL,
	[num] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
	[note] [text] NULL,
	[order_date] [datetime] NULL,
	[status] [int] NULL,
	[total_money] [float] NULL,
	[account_id] [int] NULL,
	[address] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NULL,
	[price] [float] NULL,
	[sale] [float] NULL,
	[thumbnail] [varchar](255) NULL,
	[description] [text] NULL,
	[quantity] [int] NULL,
	[sold] [int] NULL,
	[create_at] [date] NULL,
	[branding_id] [int] NULL,
	[filter_price_id] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductColors]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColors](
	[ProductID] [int] NOT NULL,
	[ColorsID] [int] NOT NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[ColorsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[ProductID] [int] NOT NULL,
	[SizeID] [int] NOT NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 3/18/2024 10:17:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (1, N'John', N'Doe', N'john.doe@example.com', N'1234567890', N'johndoe', N'202CB962AC59075B964B07152D234B70', N'https://bootdey.com/img/Content/avatar/avatar1.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (2, N'Jane', N'Smith', N'jane.smith@example.com', N'9876543210', N'janesmith', N'202CB962AC59075B964B07152D234B70', N'https://bootdey.com/img/Content/avatar/avatar1.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (3, N'Sarah', N'Williams', N'sarah.williams@example.com', N'4444444444', N'sarahw', N'202CB962AC59075B964B07152D234B70', N'https://bootdey.com/img/Content/avatar/avatar1.png', 1, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (4, N'Michael', N'Brown', N'michael.brown@example.com', N'1111111111', N'michaelb', N'202CB962AC59075B964B07152D234B70', N'https://bootdey.com/img/Content/avatar/avatar1.png', 1, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (5, N'Emily', N'Davis', N'emily.davis@example.com', N'2222222222', N'emilyd', N'202CB962AC59075B964B07152D234B70', N'https://bootdey.com/img/Content/avatar/avatar1.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (6, N'Christopher', N'Lee', N'chris.lee@example.com', N'6666666666', N'christopherl', N'202CB962AC59075B964B07152D234B70', N'https://bootdey.com/img/Content/avatar/avatar1.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (7, N'Amanda', N'Wilson', N'amanda.wilson@example.com', N'7777777777', N'amandaw', N'202CB962AC59075B964B07152D234B70', N'https://bootdey.com/img/Content/avatar/avatar1.png', 1, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (8, N'Robert', N'Anderson', N'robert.anderson@example.com', N'3333333333', N'roberta', N'202CB962AC59075B964B07152D234B70', N'https://bootdey.com/img/Content/avatar/avatar1.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (9, N'Jennifer', N'Thompson', N'jennifer.thompson@example.com', N'8888888888', N'jenthomp', N'202CB962AC59075B964B07152D234B70', N'https://bootdey.com/img/Content/avatar/avatar1.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (10, N'Nguy?n', N'Dung', N'dungnguyencuteenglish@gmail.com', N'0376312235', N'test ', N'D41D8CD98F00B204E9800998ECF8427E', N'https://bootdey.com/img/Content/avatar/avatar1.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (11, N'Chi', N'Vu', N'chivu@gmail.com', N'012345678', N'lalichi', N'D41D8CD98F00B204E9800998ECF8427E', N'https://bootdey.com/img/Content/avatar/avatar21.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (12, N'Ð?c', N'Ngô Minh', N'mnd@gmail.com', N'1234332134', N'mnduc', N'D41D8CD98F00B204E9800998ECF8427E', N'https://bootdey.com/img/Content/avatar/avatar1.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (13, N'Nam', N'Nguy?n', N'namng132@gmail.com', N'453523412', N'namnam', N'D41D8CD98F00B204E9800998ECF8427E', N'https://bootdey.com/img/Content/avatar/avatar1.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (14, N'Minh', N'Nguyen Van', N'minhminh123@gmail.com', N'3242423424', N'minh', N'202CB962AC59075B964B07152D234B70', N'https://bootdey.com/img/Content/avatar/avatar1.png', 0, 1)
INSERT [dbo].[Account] ([account_id], [first_name], [last_name], [email], [phone_number], [username], [password], [image_url], [role_id], [status]) VALUES (15, N'Van Anh', N'Trinh', N'vananh@gmail.com', N'0987654321', N'vananh', N'D41D8CD98F00B204E9800998ECF8427E', N'https://bootdey.com/img/Content/avatar/avatar1.png', 1, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Branding] ON 

INSERT [dbo].[Branding] ([branding_id], [name], [status]) VALUES (1, N'Louis Vuitton', 1)
INSERT [dbo].[Branding] ([branding_id], [name], [status]) VALUES (2, N'Chanel', 1)
INSERT [dbo].[Branding] ([branding_id], [name], [status]) VALUES (3, N'Hermes', 1)
INSERT [dbo].[Branding] ([branding_id], [name], [status]) VALUES (4, N'Gucci', 1)
SET IDENTITY_INSERT [dbo].[Branding] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [name], [status]) VALUES (1, N'Men', 1)
INSERT [dbo].[Category] ([category_id], [name], [status]) VALUES (2, N'Women', 1)
INSERT [dbo].[Category] ([category_id], [name], [status]) VALUES (3, N'Bags', 1)
INSERT [dbo].[Category] ([category_id], [name], [status]) VALUES (4, N'Clothing', 1)
INSERT [dbo].[Category] ([category_id], [name], [status]) VALUES (5, N'Shoes', 1)
INSERT [dbo].[Category] ([category_id], [name], [status]) VALUES (6, N'Accessories', 1)
INSERT [dbo].[Category] ([category_id], [name], [status]) VALUES (7, N'Kids', 1)
INSERT [dbo].[Category] ([category_id], [name], [status]) VALUES (8, N'Neu', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([colors_id], [color_code]) VALUES (1, N'#0b090c')
INSERT [dbo].[Colors] ([colors_id], [color_code]) VALUES (2, N'#20315f')
INSERT [dbo].[Colors] ([colors_id], [color_code]) VALUES (3, N'#f1af4d')
INSERT [dbo].[Colors] ([colors_id], [color_code]) VALUES (4, N'#636068')
INSERT [dbo].[Colors] ([colors_id], [color_code]) VALUES (5, N'#57594d')
INSERT [dbo].[Colors] ([colors_id], [color_code]) VALUES (6, N'#e8bac4')
INSERT [dbo].[Colors] ([colors_id], [color_code]) VALUES (7, N'#d6c1d7')
INSERT [dbo].[Colors] ([colors_id], [color_code]) VALUES (8, N'#ed1c24')
INSERT [dbo].[Colors] ([colors_id], [color_code]) VALUES (9, N'#ffffff')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Filter_price] ON 

INSERT [dbo].[Filter_price] ([filter_price_id], [name]) VALUES (1, N'0-50')
INSERT [dbo].[Filter_price] ([filter_price_id], [name]) VALUES (2, N'50-100')
INSERT [dbo].[Filter_price] ([filter_price_id], [name]) VALUES (3, N'100-150')
INSERT [dbo].[Filter_price] ([filter_price_id], [name]) VALUES (4, N'150-200')
INSERT [dbo].[Filter_price] ([filter_price_id], [name]) VALUES (5, N'200-250')
INSERT [dbo].[Filter_price] ([filter_price_id], [name]) VALUES (6, N'250+')
SET IDENTITY_INSERT [dbo].[Filter_price] OFF
GO
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (1, 2, 99.99, 1)
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (1, 5, 199.99, 1)
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (1, 6, 79.99, 1)
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (2, 5, 199.99, 2)
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (3, 2, 99.99, 1)
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (4, 12, 699.99, 1)
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (5, 11, 139.99, 1)
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (6, 10, 79.99, 1)
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (7, 3, 149.99, 2)
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (8, 1, 189.99, 1)
INSERT [dbo].[Order_details] ([order_id], [product_id], [price], [num]) VALUES (9, 3, 149.99, 1)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([order_id], [first_name], [last_name], [email], [phone_number], [note], [order_date], [status], [total_money], [account_id], [address]) VALUES (1, N'Chi', N'Vu', N'chivu@gmail.com', N'012345678', N'shop ship nhanh gium em', CAST(N'2023-07-16T18:16:05.340' AS DateTime), 1, 0, 11, N'Seoul,Korea')
INSERT [dbo].[Orders] ([order_id], [first_name], [last_name], [email], [phone_number], [note], [order_date], [status], [total_money], [account_id], [address]) VALUES (2, N'Nguy?n', N'Dung', N'dungnguyencuteenglish@gmail.com', N'0376312235', N'helo', CAST(N'2023-07-16T18:53:13.360' AS DateTime), 1, 0, 10, N'wwww')
INSERT [dbo].[Orders] ([order_id], [first_name], [last_name], [email], [phone_number], [note], [order_date], [status], [total_money], [account_id], [address]) VALUES (3, N'Nguy?n', N'Dung', N'dungnguyencuteenglish@gmail.com', N'0376312235', N'', CAST(N'2023-07-16T19:03:41.593' AS DateTime), 1, 0, 10, N'')
INSERT [dbo].[Orders] ([order_id], [first_name], [last_name], [email], [phone_number], [note], [order_date], [status], [total_money], [account_id], [address]) VALUES (4, N'Minh', N'Nguyen Van', N'minhminh123@gmail.com', N'3242423424', N'', CAST(N'2023-07-17T12:00:51.010' AS DateTime), 1, 0, 14, N'')
INSERT [dbo].[Orders] ([order_id], [first_name], [last_name], [email], [phone_number], [note], [order_date], [status], [total_money], [account_id], [address]) VALUES (5, N'Minh', N'Nguyen Van', N'minhminh123@gmail.com', N'3242423424', N'', CAST(N'2023-07-17T12:03:29.663' AS DateTime), 1, 0, 14, N'')
INSERT [dbo].[Orders] ([order_id], [first_name], [last_name], [email], [phone_number], [note], [order_date], [status], [total_money], [account_id], [address]) VALUES (6, N'Robert', N'Anderson', N'robert.anderson@example.com', N'3333333333', N'', CAST(N'2023-07-17T12:07:52.070' AS DateTime), 1, 0, 8, N'')
INSERT [dbo].[Orders] ([order_id], [first_name], [last_name], [email], [phone_number], [note], [order_date], [status], [total_money], [account_id], [address]) VALUES (7, N'Van Anh', N'Trinh', N'vananh@gmail.com', N'0987654321', N'ship sau 10h', CAST(N'2023-07-17T13:21:32.720' AS DateTime), 1, 0, 15, N'dai hoc fpt')
INSERT [dbo].[Orders] ([order_id], [first_name], [last_name], [email], [phone_number], [note], [order_date], [status], [total_money], [account_id], [address]) VALUES (8, N'Sarah', N'Williams', N'sarah.williams@example.com', N'4444444444', N'', CAST(N'2024-03-18T22:00:43.283' AS DateTime), 1, 0, 3, N'')
INSERT [dbo].[Orders] ([order_id], [first_name], [last_name], [email], [phone_number], [note], [order_date], [status], [total_money], [account_id], [address]) VALUES (9, N'Sarah', N'Williams', N'sarah.williams@example.com', N'4444444444', N'', CAST(N'2024-03-18T22:02:52.450' AS DateTime), 1, 0, 3, N'')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (1, N'Classic Chanel Double Flap Bag', 199.99, 189.99, N'product-1.jpg', N'Luxurious black leather bag with iconic double flap design.', 4, 11, CAST(N'2023-06-10' AS Date), 2, 4, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (2, N'Hermes Birkin Bag', 99.99, 99.99, N'product-2.jpg', N'Exquisite Birkin bag crafted from high-quality leather.', 0, 14, CAST(N'2023-04-02' AS Date), 3, 2, 0)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (3, N'Louis Vuitton Speedy Bag', 149.99, 149.99, N'product-3.jpg', N'Elegant and spacious Speedy bag with LV monogram.', 5, 10, CAST(N'2023-06-02' AS Date), 1, 3, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (4, N'Gucci Marmont Shoulder Bag', 139.99, 139.99, N'product-4.jpg', N'Stylish shoulder bag with iconic GG logo.', 10, 8, CAST(N'2023-06-02' AS Date), 4, 3, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (5, N'Chanel Boy Bag', 249.99, 199.99, N'product-5.jpg', N'Chic and edgy Boy bag in quilted leather.', 0, 11, CAST(N'2022-10-02' AS Date), 2, 5, 0)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (6, N'Hermes Kelly Bag', 79.99, 79.99, N'product-6.jpg', N'Iconic Kelly bag handcrafted with precision.', 0, 19, CAST(N'2022-09-02' AS Date), 3, 2, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (7, N'Louis Vuitton Neverfull Tote', 169.99, 169.99, N'product-7.jpg', N'Spacious and versatile tote bag with LV monogram.', 12, 4, CAST(N'2022-09-02' AS Date), 1, 4, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (8, N'Gucci Dionysus Bag', 179.99, 149.99, N'product-8.jpg', N'Unique and bold Dionysus bag with tiger head closure.', 6, 20, CAST(N'2022-09-02' AS Date), 4, 4, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (9, N'Chanel Classic Flap Bag', 219.99, 219.99, N'product-9.jpg', N'Timeless classic flap bag with chain strap.', 4, 19, CAST(N'2022-07-09' AS Date), 2, 5, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (10, N'Hermes Constance Bag', 89.99, 79.99, N'product-10.jpg', N'Exquisite Constance bag with signature H clasp.', 1, 10, CAST(N'2022-07-09' AS Date), 3, 2, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (11, N'Louis Vuitton Alma Bag', 139.99, 139.99, N'product-11.jpg', N'Elegant and structured Alma bag in LV monogram canvas.', 6, 6, CAST(N'2022-07-10' AS Date), 1, 3, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (12, N'Gucci GG Marmont Wallet', 699.99, 699.99, N'product-12.jpg', N'Stylish GG Marmont wallet in black leather.', 14, 14, CAST(N'2022-07-10' AS Date), 4, 6, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (14, N'huhu', 41, 40, N'product-6.jpg', N'<p>nhjnhjnhj</p>', 7, 0, CAST(N'2023-07-16' AS Date), 1, NULL, 0)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (15, N'Channel Bag', 149, 149, N'product-13.jpg', N'<p>New arrival&nbsp;</p>', 12, 0, CAST(N'2023-07-17' AS Date), 1, NULL, 1)
INSERT [dbo].[Product] ([product_id], [title], [price], [sale], [thumbnail], [description], [quantity], [sold], [create_at], [branding_id], [filter_price_id], [status]) VALUES (16, N'a', 100, 69, N'', N'<p>aa</p>', 5, 0, CAST(N'2024-03-18' AS Date), 3, NULL, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (1, 2, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (1, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (1, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (2, 1, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (2, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (2, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (3, 2, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (3, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (3, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (4, 1, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (4, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (4, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (5, 2, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (5, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (5, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (6, 1, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (6, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (6, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (7, 2, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (7, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (7, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (8, 1, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (8, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (8, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (9, 2, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (9, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (9, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (10, 1, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (10, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (10, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (11, 2, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (11, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (11, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (12, 1, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (12, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (12, 6, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (14, 5, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (14, 7, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (15, 2, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (15, 3, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (16, 4, NULL)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID], [quantity]) VALUES (16, 7, NULL)
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([size_id], [name]) VALUES (1, N'XS')
INSERT [dbo].[Size] ([size_id], [name]) VALUES (2, N'S')
INSERT [dbo].[Size] ([size_id], [name]) VALUES (3, N'M')
INSERT [dbo].[Size] ([size_id], [name]) VALUES (4, N'XL')
INSERT [dbo].[Size] ([size_id], [name]) VALUES (5, N'2XL')
INSERT [dbo].[Size] ([size_id], [name]) VALUES (6, N'XXL')
INSERT [dbo].[Size] ([size_id], [name]) VALUES (7, N'3XL')
INSERT [dbo].[Size] ([size_id], [name]) VALUES (8, N'4XL')
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [order_date]
GO
ALTER TABLE [dbo].[Galery]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([branding_id])
REFERENCES [dbo].[Branding] ([branding_id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([filter_price_id])
REFERENCES [dbo].[Filter_price] ([filter_price_id])
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD FOREIGN KEY([ColorsID])
REFERENCES [dbo].[Colors] ([colors_id])
GO
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([size_id])
GO
USE [master]
GO
ALTER DATABASE [ASSIGNMENT_PRJ301_4] SET  READ_WRITE 
GO
