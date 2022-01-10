SELECT up.SchoolYear, SUM(p.TotalPrice) AS TotalRevenue
FROM `transaction` t
JOIN user_profile up 
ON up.UniqueId = t.UniqueUserId
JOIN packages p
ON t.UniquePackageId = p.PackageId
GROUP BY up.SchoolYear
