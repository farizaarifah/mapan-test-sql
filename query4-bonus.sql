SELECT UniqueUserId, ud.Email, MIN(OrderCreatedDate) AS FirstPurchaseDate, P.PackageName AS FirstPackageName
FROM `transaction` t 
JOIN user_data ud
ON ud.UniqueId = t.UniqueUserId
JOIN packages p
ON p.PackageId = t.UniquePackageId
GROUP BY UniqueUserId