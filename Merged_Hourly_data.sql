/*1. Merging and Creating new table for Hourly activity details*/
Create Table Merged_hourly_details
(
Id bigint, 
ActivityHour datetime2(7),
Calories int,
StepTotal int,
TotalIntensity int,
AverageIntensity float
)

Insert into Merged_hourly_details
(Id,ActivityHour,Calories,StepTotal,TotalIntensity,AverageIntensity )
Select cal.Id,cal.ActivityHour,cal.Calories,Steps.StepTotal,Inten.TotalIntensity,Inten.AverageIntensity
From fitbit.dbo.hourlyCalories cal
Join fitbit.dbo.hourlySteps steps
on cal.Id = steps.Id and cal.ActivityHour = Steps.ActivityHour
Join fitbit.dbo.hourlyIntensities Inten
on steps.Id=Inten.Id and Steps.ActivityHour=Inten.ActivityHour;



select * 
from [dbo].[Merged_hourly_details];



