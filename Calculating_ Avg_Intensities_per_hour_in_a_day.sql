-- 1. Calculating Avg Intensities per hour in a day
Select distinct(cast([ActivityHour] as time)) as Activity_time,
Round(avg(cast([TotalIntensity] as float)) over (partition by datepart(hour, ActivityHour)), 3) as avg_intensity
From [dbo].[Merged_hourly_details]
Order by Activity_time;


-- 2. Calculating Avg METs
Select Id, Avg(METs) as Avg_METs
From dbo.minuteMETs_data
Group by Id
Order by Id;



/*
Select   dateadd(minute,datediff(minute,0,ActivityMinute),0) as new
From dbo.minuteMETs_data
--Group by ActivityMinute
--Order by ActivityMinute;


--Group by dateadd(minute,datediff(minute,0,ActivityMinute),0) */


--Select Avg(ActivityMinute)
--From dbo.minuteMETs_data;