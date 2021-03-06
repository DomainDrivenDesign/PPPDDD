USE [AuctionExample]
GO
/****** Object:  Table [dbo].[BidHistory]    Script Date: 01/05/2014 16:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BidHistory](
	[AuctionId] [uniqueidentifier] NOT NULL,
	[BidderId] [uniqueidentifier] NOT NULL,
	[Bid] [numeric](18, 2) NOT NULL,
	[TimeOfBid] [datetime] NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_BidHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auctions]    Script Date: 01/05/2014 16:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auctions](
	[Id] [uniqueidentifier] NOT NULL,
	[StartingPrice] [decimal](18, 2) NOT NULL,
	[BidderMemberId] [uniqueidentifier] NULL,
	[TimeOfBid] [datetime] NULL,
	[MaximumBid] [decimal](18, 2) NULL,
	[CurrentPrice] [decimal](18, 2) NULL,
	[AuctionEnds] [datetime] NOT NULL,
	[Version] [int] NOT NULL,
	[NextBidIncrement] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Auctions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
