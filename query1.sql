SELECT up.Name, ud.Email, ud.Phone, up.Gender, up.SchoolYear, up.District, us.CurrentDiamond, us.SubscriptionEndDate
FROM `user_status` us
JOIN user_data ud 
ON us.UniqueId = ud.UniqueId
JOIN user_profile up 
ON ud.UniqueId = up.ProfileUniqueId
WHERE SubscriptionEndDate > now();