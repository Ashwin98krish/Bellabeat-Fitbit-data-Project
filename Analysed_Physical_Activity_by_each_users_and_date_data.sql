/* Tracking Physical Activity by each users and date*/
/*1. Tracking Physical Activity of each users*/
Select Id, Count(ActivityDate) Total_days, Avg(TotalSteps) as Avg_Steps, Sum(TotalDistance) Total_Dist,
Avg(TotalDistance) Avg_Dist, Min(TotalDistance) Min_Dist, Max(TotalDistance) Max_Dist, Avg(Calories) Avg_Calories,
Min(Calories) Min_Calories,Max(Calories) Max_Calories,
Avg(VeryActiveMinutes) Avg_VeryActiveMinutes, Min(VeryActiveMinutes) Min_VeryActiveMinutes, Max(VeryActiveMinutes) Max_VeryActiveMinutes,
Avg(FairlyActiveMinutes) Avg_FairlyActiveMinutes, Min(FairlyActiveMinutes) Min_FairlyActiveMinutes, Max(FairlyActiveMinutes) Max_FairlyActiveMinutes,
Avg(LightlyActiveMinutes) Avg_LightlyActiveMinutes, Min(LightlyActiveMinutes) Min_LightlyActiveMinutes, Max(LightlyActiveMinutes) Max_LightlyActiveMinutes,
Avg(SedentaryMinutes) Avg_SedentaryMinutes, Min(SedentaryMinutes) Min_SedentaryMinutes, Max(SedentaryMinutes) Max_SedentaryMinutes
From dbo.dailyActivity
Group by Id 
Order by Total_days Desc;

/*2. Tracking Physical Activity users by date*/
Select ActivityDate, Count(ActivityDate) Total_days, Avg(TotalSteps) as Avg_Steps, Sum(TotalDistance) Total_Dist,
Avg(TotalDistance) Avg_Dist, Min(TotalDistance) Min_Dist, Max(TotalDistance) Max_Dist, Avg(Calories) Avg_Calories,
Min(Calories) Min_Calories,Max(Calories) Max_Calories,
Avg(VeryActiveMinutes) Avg_VeryActiveMinutes, Min(VeryActiveMinutes) Min_VeryActiveMinutes, Max(VeryActiveMinutes) Max_VeryActiveMinutes,
Avg(FairlyActiveMinutes) Avg_FairlyActiveMinutes, Min(FairlyActiveMinutes) Min_FairlyActiveMinutes, Max(FairlyActiveMinutes) Max_FairlyActiveMinutes,
Avg(LightlyActiveMinutes) Avg_LightlyActiveMinutes, Min(LightlyActiveMinutes) Min_LightlyActiveMinutes, Max(LightlyActiveMinutes) Max_LightlyActiveMinutes,
Avg(SedentaryMinutes) Avg_SedentaryMinutes, Min(SedentaryMinutes) Min_SedentaryMinutes, Max(SedentaryMinutes) Max_SedentaryMinutes
From dbo.dailyActivity
Group by ActivityDate
Order by Total_Dist Desc;
