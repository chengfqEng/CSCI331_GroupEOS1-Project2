-- =============================================
-- Author: Chengfu Qu
-- Procedure: Create process trackworkflow
-- Create date: 04/23/2026
-- Description: Setting up the parameter
-- =============================================
create or alter function [Process].[usp_TrackWorkFlows]
(
 @StartTime DATETIME2 = '12:30',
 @WorkFlowDescription NVARCHAR(100) = '' ,
 @WorkFlowStepTableRowCount int = 30,
 @UserAuthorizationKey int = 1
) RETURNS TABLE AS
RETURN
	SELECT *
	From DbSecurity.UserAuthorization, Process.WorkflowSteps
	--WHERE DbSecurity.UserAuthorization.UserAuthorizationKey = Process.WorkflowSteps.UserAuthorizationKey;

-- =============================================
-- Author: Chengfu Qu
-- Procedure: Creating BD.Security
-- Create date: 04/23/2026
-- Description: Creating the DbSecurity
-- =============================================
USE [BIClass]
DROP TABLE IF EXISTS DbSecurity.UserAuthorization;
CREATE TABLE DbSecurity.UserAuthorization(
UserAuthorizationKey INT NOT NULL primary key,
	--Constraint PK_UserAuthorization primary key,
ClassTime NCHAR (5) Null 
		Default ('7:45'),
IndividualProject nvarchar (60) null 
	default('PROJECT 2 RECREATE THE BICLASS DATABASE STAR SCHEMA'),
GroupMemberLastName nvarchar (35) NOT NULL,
GroupMemberFirstName nvarchar (25) NOT NULL,
GroupName nvarchar(20) NOT NULL,
DateAdded datetime2 null default sysdatetime(),
);

-- =============================================
-- Author: Chengfu Qu
-- Procedure: Process.WorkflowSteps
-- Create date: 04/23/2026
-- Description: Copied and created Table Process.WorkflowSteps
-- =============================================
DROP TABLE IF EXISTS Process.WorkflowSteps;
CREATE TABLE Process.WorkflowSteps(
 WorkFlowStepKey INT NOT NULL
		Constraint PK_Process primary key,
 WorkFlowStepDescription NVARCHAR(100) NOT NULL,
 WorkFlowStepTableRowCount INT NULL DEFAULT (0),
 StartingDateTime DATETIME2(7) NULL DEFAULT (SYSDATETIME()) ,
 EndingDateTime DATETIME2(7) NULL DEFAULT (SYSDATETIME()) ,
 ClassTime CHAR (5) NULL DEFAULT ('09:15'),
 UserAuthorizationKey INT NOT NULL 
);

