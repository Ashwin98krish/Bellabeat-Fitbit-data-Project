/*1. Tracking Physical Activity*/
Select  Count(Distinct(Id)) Users_tracking_physical_activity,
Avg(TotalSteps) Average_Total_Steps,
Avg(TotalDistance) Average_Distance,
Avg(Calories) Average_Calories_burnt

From fitbit.dbo.dailyActivity;



/*2. Tracking Sleep */
Select Count(Distinct(Id)) Users_tracking_Sleep,
Avg(TotalMinutesAsleep) Average_sleeps_seconds_among_all_users,
Min(TotalMinutesAsleep) Min_sleeps_seconds_among_all_users,
Max(TotalMinutesAsleep) Max_sleeps_seconds_among_all_users,
Avg(TotalTimeInBed) Average_time_in_Bed_users,
Min(TotalTimeInBed) Min_time_in_Bed_users,
Max(TotalTimeInBed) Max_time_in_Bed_users
From fitbit.dbo.sleep_day ;


/*3. Tracking Heart rate */
Select Count(Distinct(Id)) Users_tracking_heart_rate,
Avg(Value) Average_Heart_rate,
Min(Value) Min_Heart_rate,
Max(Value) Max_Heart_rate
From fitbit.dbo.heartrate_seconds ;

/*4. Tracking Weight */
Select Count(Distinct(Id)) Users_tracking_Weight,
Avg(WeightKg) Average_Weight_among_users,
Round(Avg(BMI) , 2) Average_BMI_among_users,
Round(Min(WeightKg) , 2) Min_Weight_among_users,
Round(Min(BMI), 2) Min_BMI_among_users,
Round(Max(WeightKg) ,2) Max_Weight_among_users,
Round(Max(BMI) ,2) Max_BMI_among_users
From fitbit.dbo.weight_info ;
